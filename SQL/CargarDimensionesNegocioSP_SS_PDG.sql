-- =======================================================
-- Create Stored Procedure Template for Azure SQL Database
-- =======================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Johan Santacruz
-- Create Date: 04/25/2023
-- Description: Cargamos dimensiones base usando los datos de la Sabana Analitica
-- =============================================
CREATE PROCEDURE CargarDimensionesNegocio

AS
BEGIN
    -- Cargamos Entidades
    delete from [dbo].[Entidad]

	INSERT INTO [dbo].[Entidad]
	SELECT ROW_NUMBER() OVER( ORDER BY [Pro_Nit Entidad] ) as IdEntidad
		  ,[Pro_Nit Entidad] as NitEntidad
		  ,max([Pro_Entidad]) as NombreEntidad
		  ,max([Con_Rama]) as Rama
	  FROM [dbo].[Prod_SabanaAnalitica]
	  group by [Pro_Nit Entidad]
	  order by 1 asc

	  -- Cargamos Contratistas
	delete from [dbo].[Contratista]

	INSERT INTO [dbo].[Contratista]
	SELECT ROW_NUMBER() OVER( ORDER BY [Pro_CodigoProveedor] ) as IdContratista
      ,[Pro_CodigoProveedor] AS CodigoProveedor
      ,max([Pro_NIT del Proveedor Adjudicado]) AS [NitContratista]
	  ,max([Pro_Nombre del Proveedor Adjudicado]) as [NombreContratista]
	  FROM [dbo].[Prod_SabanaAnalitica]
      group by [Pro_CodigoProveedor]
      order by 1 asc

	 -- Cargamos ProcesoContrato
	 delete from [dbo].[ProcesoContrato]
	 -- (46445 rows affected)
	 INSERT INTO [dbo].[ProcesoContrato]
	 SELECT ROW_NUMBER() OVER( ORDER BY [Pro_ID del Proceso], [Pro_ID del Portafolio], [Con_ID Contrato], [Con_Referencia del Contrato]  ) as IdProcesoContrato
      ,[Pro_ID del Proceso] as ReferenciaProceso
      ,[Pro_ID del Portafolio] as IdPortafolio
      ,MAX([Pro_Fase]) as FaseProceso
	  ,MAX([Pro_Nombre del Procedimiento]) as NombreProceso
	  ,MAX([Pro_Estado del Procedimiento]) as EstadoProceso
	  ,MAX([Pro_Estado Resumen]) as EstadoResumen
      ,MAX([Pro_Modalidad de Contratacion]) as ModalidadContrato
      ,[Con_ID Contrato] as IdContrato
      ,[Con_Referencia del Contrato] ReferenciaContrato
      ,MAX([Con_Estado Contrato]) as EstadoContrato
      ,MAX([Con_Tipo de Contrato]) as TipoContrato
	  FROM [dbo].[Prod_SabanaAnalitica]
	  group by [Pro_ID del Proceso], [Pro_ID del Portafolio], [Con_ID Contrato], [Con_Referencia del Contrato] 

	  --Cargamos la tabla de hechos

	  delete from [dbo].[HechoProcesoContrato]

	  INSERT INTO [dbo].[HechoProcesoContrato]
	    SELECT
		  CASE WHEN S.[Con_Fecha de Inicio del Contrato] IS NULL THEN 19850101 ELSE CONVERT(NCHAR(8),S.[Con_Fecha de Inicio del Contrato],112) END AS [IdFechaInicioContrato]
		  ,CASE WHEN S.[Con_Fecha de Fin del Contrato] IS NULL THEN 19850101 ELSE CONVERT(NCHAR(8),S.[Con_Fecha de Fin del Contrato],112) END AS [IdFechaFinContrato]
		  ,CASE WHEN S.[Pro_Fecha de Publicacion del Proceso] IS NULL THEN 19850101 ELSE CONVERT(NCHAR(8),S.[Pro_Fecha de Publicacion del Proceso],112) END AS [IdInicioProceso]
		  , E.IdEntidad
		  , P.IdProcesoContrato
		  , COALESCE(G.IdUbicacion, (select top 1 IdUbicacion
									 from geografia g2 
									 where S.[Pro_Departamento Entidad] =  g2.Departamento
									 order by 
									 difference(S.[Pro_Ciudad Entidad], g2.ciudad ) 
									 DESC)) AS IdUbicacion
		  , C.IdContratista
		  , S.[Pro_Precio Base] as PrecioBase
		  , S.[Pro_Proveedores Invitados] AS  CantidadProveedoresInvitados
		  , S.[Pro_Proveedores que Manifestaron Interes] AS CantidadProveedoresInteresados
		  , S.[Pro_Valor Total Adjudicacion] AS ValorAdjudicacion
		  , S.[Con_Valor del Contrato] as ValorContrato
		  , S.[Con_Valor Pendiente de Pago] AS ValorPendientePago
		  , S.[Con_Valor Pendiente de Ejecucion] AS ValorPendienteEjecucion
		  , S.[Con_Dias Adicionados] as DiasAdicionados
		  , CASE WHEN [FueMultado] IS NULL THEN 0 ELSE 1 END AS FueMultado
		  FROM [dbo].[Prod_SabanaAnalitica] S
		  LEFT JOIN [dbo].[Entidad] E ON E.NitEntidad = S.[Pro_Nit Entidad]
		  LEFT JOIN [dbo].[ProcesoContrato] P ON P.ReferenciaProceso = S.[Pro_ID del Proceso] 
												AND P.IdPortafolio = S.[Pro_ID del Portafolio] 
												AND COALESCE(P.IdContrato, '') = COALESCE(S.[Con_ID Contrato], '') 
												AND COALESCE(P.ReferenciaContrato, '')= COALESCE(S.[Con_Referencia del Contrato], '') 
		  LEFT JOIN [dbo].[Contratista] C ON C.CodigoContratista =S.[Pro_CodigoProveedor]
		  LEFT JOIN [dbo].[Geografia] G ON S.[Pro_Departamento Entidad] = g.Departamento and S.[Pro_Ciudad Entidad] = g.Ciudad

END
GO
