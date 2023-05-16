-- =======================================================
-- Create Stored Procedure Template for Azure SQL Database
-- =======================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: Pasa los datos de las tablas TEST (Staging puro) a tablas Prod (Staging ajustado)
-- =============================================
CREATE PROCEDURE TEST_TO_PROD

AS
BEGIN
	
	-- Contratos

	TRUNCATE TABLE [dbo].[Prod_Secop2_ContratosElectronicos]

	INSERT INTO  [dbo].[Prod_Secop2_ContratosElectronicos]
	SELECT  CASE WHEN [Nombre Entidad]= 'nan' THEN NULL ELSE [Nombre Entidad] END AS [Nombre Entidad],
		CASE WHEN [Nit Entidad]= 'nan' THEN NULL ELSE [Nit Entidad] END AS [Nit Entidad],
		CASE WHEN [Departamento]= 'nan' THEN NULL ELSE [Departamento] END AS [Departamento],
		CASE WHEN [Ciudad]= 'nan' THEN NULL ELSE [Ciudad] END AS [Ciudad],
		CASE WHEN [Localización]= 'nan' THEN NULL ELSE [Localización] END AS [Localización],
		CASE WHEN [Orden]= 'nan' THEN NULL ELSE [Orden] END AS [Orden],
		CASE WHEN [Sector]= 'nan' THEN NULL ELSE [Sector] END AS [Sector],
		CASE WHEN [Rama]= 'nan' THEN NULL ELSE [Rama] END AS [Rama],
		CASE WHEN [Entidad Centralizada]= 'nan' THEN NULL ELSE [Entidad Centralizada] END AS [Entidad Centralizada],
		CASE WHEN [Proceso de Compra]= 'nan' THEN NULL ELSE [Proceso de Compra] END AS [Proceso de Compra],
		CASE WHEN [ID Contrato]= 'nan' THEN NULL ELSE [ID Contrato] END AS [ID Contrato],
		CASE WHEN [Referencia del Contrato]= 'nan' THEN NULL ELSE [Referencia del Contrato] END AS [Referencia del Contrato],
		CASE WHEN [Estado Contrato]= 'nan' THEN NULL ELSE [Estado Contrato] END AS [Estado Contrato],
		CASE WHEN [Codigo de Categoria Principal]= 'nan' THEN NULL ELSE [Codigo de Categoria Principal] END AS [Codigo de Categoria Principal],
		CASE WHEN [Tipo de Contrato]= 'nan' THEN NULL ELSE [Tipo de Contrato] END AS [Tipo de Contrato],
		CASE WHEN [Modalidad de Contratacion]= 'nan' THEN NULL ELSE [Modalidad de Contratacion] END AS [Modalidad de Contratacion],
		CASE WHEN [Justificacion Modalidad de Contratacion]= 'nan' THEN NULL ELSE [Justificacion Modalidad de Contratacion] END AS [Justificacion Modalidad de Contratacion],
		
		CAST (CASE WHEN [Fecha de Firma]= 'nan' THEN NULL ELSE [Fecha de Firma] END AS DATE) AS [Fecha de Firma],
		CAST (CASE WHEN [Fecha de Inicio del Contrato]= 'nan' THEN NULL ELSE [Fecha de Inicio del Contrato] END AS DATE) AS [Fecha de Inicio del Contrato],
		CAST (CASE WHEN [Fecha de Fin del Contrato]= 'nan' THEN NULL ELSE [Fecha de Fin del Contrato] END AS DATE) AS [Fecha de Fin del Contrato],
		CAST (CASE WHEN [Fecha de Inicio de Ejecucion]= 'nan' THEN NULL ELSE [Fecha de Inicio de Ejecucion] END AS DATE) AS [Fecha de Inicio de Ejecucion],
		CAST (CASE WHEN [Fecha de Fin de Ejecucion]= 'nan' THEN NULL ELSE [Fecha de Fin de Ejecucion] END AS DATE) AS [Fecha de Fin de Ejecucion],

		CASE WHEN [Condiciones de Entrega]= 'nan' THEN NULL ELSE [Condiciones de Entrega] END AS [Condiciones de Entrega],
		CASE WHEN [TipoDocProveedor]= 'nan' THEN NULL ELSE [TipoDocProveedor] END AS [TipoDocProveedor],
		CASE WHEN [Documento Proveedor]= 'nan' THEN NULL ELSE [Documento Proveedor] END AS [Documento Proveedor],
		CASE WHEN [Proveedor Adjudicado]= 'nan' THEN NULL ELSE [Proveedor Adjudicado] END AS [Proveedor Adjudicado],
		CASE WHEN [Es Grupo]= 'nan' THEN NULL ELSE [Es Grupo] END AS [Es Grupo],
		CASE WHEN [Es Pyme]= 'nan' THEN NULL ELSE [Es Pyme] END AS [Es Pyme],
		CASE WHEN [Habilita Pago Adelantado]= 'nan' THEN NULL ELSE [Habilita Pago Adelantado] END AS [Habilita Pago Adelantado],
		CASE WHEN [Liquidación]= 'nan' THEN NULL ELSE [Liquidación] END AS [Liquidación],
		CASE WHEN [Obligación Ambiental]= 'nan' THEN NULL ELSE [Obligación Ambiental] END AS [Obligación Ambiental],
		CASE WHEN [Obligaciones Postconsumo]= 'nan' THEN NULL ELSE [Obligaciones Postconsumo] END AS [Obligaciones Postconsumo],
		CASE WHEN [Reversion]= 'nan' THEN NULL ELSE [Reversion] END AS [Reversion],
		CAST (CASE WHEN [Valor del Contrato]= 'nan' THEN NULL ELSE [Valor del Contrato] END AS BIGINT) AS [Valor del Contrato],
		CAST (CASE WHEN [Valor de pago adelantado]= 'nan' THEN NULL ELSE [Valor de pago adelantado] END AS BIGINT) AS [Valor de pago adelantado],
		CAST (CASE WHEN [Valor Facturado]= 'nan' THEN NULL ELSE [Valor Facturado] END AS BIGINT) AS [Valor Facturado],
		CAST (CASE WHEN [Valor Pendiente de Pago]= 'nan' THEN NULL ELSE [Valor Pendiente de Pago] END AS BIGINT) AS [Valor Pendiente de Pago],
		CAST (CASE WHEN [Valor Pagado]= 'nan' THEN NULL ELSE [Valor Pagado] END AS BIGINT) AS [Valor Pagado],
		CAST (CASE WHEN [Valor Amortizado]= 'nan' THEN NULL ELSE [Valor Amortizado] END AS BIGINT) AS [Valor Amortizado],
		CAST (CASE WHEN [Valor Pendiente de Amortizacion]= 'nan' THEN NULL ELSE [Valor Pendiente de Amortizacion] END AS BIGINT) AS [Valor Pendiente de Amortizacion],
		CAST (CASE WHEN [Valor Pendiente de Ejecucion]= 'nan' THEN NULL ELSE [Valor Pendiente de Ejecucion] END AS BIGINT) AS [Valor Pendiente de Ejecucion],
		CASE WHEN [Estado BPIN]= 'nan' THEN NULL ELSE [Estado BPIN] END AS [Estado BPIN],
		CASE WHEN [Código BPIN]= 'nan' THEN NULL ELSE [Código BPIN] END AS [Código BPIN],
		CASE WHEN [Anno BPIN]= 'nan' THEN NULL ELSE [Anno BPIN] END AS [Anno BPIN],
		CAST (CASE WHEN [Saldo CDP]= 'nan' THEN NULL ELSE [Saldo CDP] END AS BIGINT) AS [Saldo CDP],
		CAST (CASE WHEN [Saldo Vigencia]= 'nan' THEN NULL ELSE [Saldo Vigencia] END AS BIGINT) AS [Saldo Vigencia],
		CASE WHEN [EsPostConflicto]= 'nan' THEN NULL ELSE [EsPostConflicto] END AS [EsPostConflicto],
		CASE WHEN [URLProceso]= 'nan' THEN NULL ELSE [URLProceso] END AS [URLProceso],
		CASE WHEN [Destino Gasto]= 'nan' THEN NULL ELSE [Destino Gasto] END AS [Destino Gasto],
		CASE WHEN [Origen de los Recursos]= 'nan' THEN NULL ELSE [Origen de los Recursos] END AS [Origen de los Recursos],
		CAST (CASE WHEN [Dias Adicionados]= 'nan' THEN NULL ELSE [Dias Adicionados] END AS INT) AS [Dias Adicionados],
		CASE WHEN [Puntos del Acuerdo]= 'nan' THEN NULL ELSE [Puntos del Acuerdo] END AS [Puntos del Acuerdo],
		CASE WHEN [Pilares del Acuerdo]= 'nan' THEN NULL ELSE [Pilares del Acuerdo] END AS [Pilares del Acuerdo],
		CASE WHEN [Nombre Representante Legal]= 'nan' THEN NULL ELSE [Nombre Representante Legal] END AS [Nombre Representante Legal],
		CASE WHEN [Nacionalidad Representante Legal]= 'nan' THEN NULL ELSE [Nacionalidad Representante Legal] END AS [Nacionalidad Representante Legal],
		CASE WHEN [Tipo de Identificación Representante Legal]= 'nan' THEN NULL ELSE [Tipo de Identificación Representante Legal] END AS [Tipo de Identificación Representante Legal],
		CASE WHEN [Identificación Representante Legal]= 'nan' THEN NULL ELSE [Identificación Representante Legal] END AS [Identificación Representante Legal],
		CASE WHEN [Género Representante Legal]= 'nan' THEN NULL ELSE [Género Representante Legal] END AS [Género Representante Legal],
		CAST (CASE WHEN [Presupuesto General de la Nacion – PGN]= 'nan' THEN NULL ELSE [Presupuesto General de la Nacion – PGN] END AS BIGINT) AS [Presupuesto General de la Nacion – PGN],
		CAST (CASE WHEN [Sistema General de Participaciones]= 'nan' THEN NULL ELSE [Sistema General de Participaciones] END AS BIGINT) AS [Sistema General de Participaciones],
		CAST (CASE WHEN [Sistema General de Regalías]= 'nan' THEN NULL ELSE [Sistema General de Regalías] END AS BIGINT) AS [Sistema General de Regalías],
		CAST (CASE WHEN [Recursos Propios (Alcaldías, Gobernaciones y Resguardos Indígenas)]= 'nan' THEN NULL ELSE [Recursos Propios (Alcaldías, Gobernaciones y Resguardos Indígenas)] END AS BIGINT) AS [Recursos Propios (Alcaldías, Gobernaciones y Resguardos Indígenas)],
		CAST (CASE WHEN [Recursos de Credito]= 'nan' THEN NULL ELSE [Recursos de Credito] END  AS BIGINT) AS [Recursos de Credito],
		CAST (CASE WHEN [Recursos Propios]= 'nan' THEN NULL ELSE [Recursos Propios] END AS BIGINT) AS [Recursos Propios],
		CAST (CASE WHEN [Ultima Actualizacion]= 'nan' THEN NULL ELSE [Ultima Actualizacion] END AS DATE) AS [Ultima Actualizacion],
		CASE WHEN [Codigo Entidad]= 'nan' THEN NULL ELSE [Codigo Entidad] END AS [Codigo Entidad],
		CAST (CASE WHEN [Fecha Inicio Liquidacion]= 'nan' THEN NULL ELSE [Fecha Inicio Liquidacion] END AS DATE) AS [Fecha Inicio Liquidacion],
		CAST (CASE WHEN [Fecha Fin Liquidacion]= 'nan' THEN NULL ELSE [Fecha Fin Liquidacion] END  AS DATE) AS [Fecha Fin Liquidacion],
		CASE WHEN [Codigo Proveedor]= 'nan' THEN NULL ELSE [Codigo Proveedor] END AS [Codigo Proveedor]
	  FROM [dbo].[Test_Secop2_ContratosElectronicos]



	  ---- PROCESOS ---


	  	update [dbo].[Test2_Secop2_Completo] set [Entidad] = NULL WHERE [Entidad] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Nit Entidad] = NULL WHERE [Nit Entidad] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Departamento Entidad] = NULL WHERE [Departamento Entidad] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Ciudad Entidad] = NULL WHERE [Ciudad Entidad] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [OrdenEntidad] = NULL WHERE [OrdenEntidad] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Entidad Centralizada] = NULL WHERE [Entidad Centralizada] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [ID del Proceso] = NULL WHERE [ID del Proceso] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Referencia del Proceso] = NULL WHERE [Referencia del Proceso] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [PCI] = NULL WHERE [PCI] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [ID del Portafolio] = NULL WHERE [ID del Portafolio] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Nombre del Procedimiento] = NULL WHERE [Nombre del Procedimiento] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Fase] = NULL WHERE [Fase] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Fecha de Publicacion del Proceso] = NULL WHERE [Fecha de Publicacion del Proceso] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Fecha de Ultima Publicación] = NULL WHERE [Fecha de Ultima Publicación] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Fecha de Publicacion (Manifestacion de Interes)] = NULL WHERE [Fecha de Publicacion (Manifestacion de Interes)] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Fecha de Publicacion (Fase Borrador)] = NULL WHERE [Fecha de Publicacion (Fase Borrador)] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Fecha de Publicacion (Fase Seleccion)] = NULL WHERE [Fecha de Publicacion (Fase Seleccion)] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Precio Base] = NULL WHERE [Precio Base] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Modalidad de Contratacion] = NULL WHERE [Modalidad de Contratacion] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Justificación Modalidad de Contratación] = NULL WHERE [Justificación Modalidad de Contratación] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Duracion] = NULL WHERE [Duracion] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Unidad de Duracion] = NULL WHERE [Unidad de Duracion] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Fecha de Recepcion de Respuestas] = NULL WHERE [Fecha de Recepcion de Respuestas] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Fecha de Apertura de Respuesta] = NULL WHERE [Fecha de Apertura de Respuesta] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Fecha de Apertura Efectiva] = NULL WHERE [Fecha de Apertura Efectiva] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Ciudad de la Unidad de Contratación] = NULL WHERE [Ciudad de la Unidad de Contratación] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Nombre de la Unidad de Contratación] = NULL WHERE [Nombre de la Unidad de Contratación] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Proveedores Invitados] = NULL WHERE [Proveedores Invitados] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Proveedores con Invitacion Directa] = NULL WHERE [Proveedores con Invitacion Directa] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Visualizaciones del Procedimiento] = NULL WHERE [Visualizaciones del Procedimiento] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Proveedores que Manifestaron Interes] = NULL WHERE [Proveedores que Manifestaron Interes] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Respuestas al Procedimiento] = NULL WHERE [Respuestas al Procedimiento] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Respuestas Externas] = NULL WHERE [Respuestas Externas] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Conteo de Respuestas a Ofertas] = NULL WHERE [Conteo de Respuestas a Ofertas] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Proveedores Unicos con Respuestas] = NULL WHERE [Proveedores Unicos con Respuestas] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Numero de Lotes] = NULL WHERE [Numero de Lotes] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Estado del Procedimiento] = NULL WHERE [Estado del Procedimiento] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [ID Estado del Procedimiento] = NULL WHERE [ID Estado del Procedimiento] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Adjudicado] = NULL WHERE [Adjudicado] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [ID Adjudicacion] = NULL WHERE [ID Adjudicacion] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [CodigoProveedor] = NULL WHERE [CodigoProveedor] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Departamento Proveedor] = NULL WHERE [Departamento Proveedor] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Ciudad Proveedor] = NULL WHERE [Ciudad Proveedor] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Fecha Adjudicacion] = NULL WHERE [Fecha Adjudicacion] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Valor Total Adjudicacion] = NULL WHERE [Valor Total Adjudicacion] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Nombre del Adjudicador] = NULL WHERE [Nombre del Adjudicador] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Nombre del Proveedor Adjudicado] = NULL WHERE [Nombre del Proveedor Adjudicado] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [NIT del Proveedor Adjudicado] = NULL WHERE [NIT del Proveedor Adjudicado] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Codigo Principal de Categoria] = NULL WHERE [Codigo Principal de Categoria] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Estado de Apertura del Proceso] = NULL WHERE [Estado de Apertura del Proceso] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Tipo de Contrato] = NULL WHERE [Tipo de Contrato] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Subtipo de Contrato] = NULL WHERE [Subtipo de Contrato] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [URLProceso] = NULL WHERE [URLProceso] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Codigo Entidad] = NULL WHERE [Codigo Entidad] = 'nan';
		update [dbo].[Test2_Secop2_Completo] set [Estado Resumen] = NULL WHERE [Estado Resumen] = 'nan';

	  TRUNCATE TABLE [dbo].[Prod_Secop2_Completo]

	  INSERT INTO [dbo].[Prod_Secop2_Completo]
	  SELECT [Entidad]
      , CAST([Nit Entidad] AS VARCHAR(10)) AS [Nit Entidad]
      , CAST([Departamento Entidad] AS VARCHAR(250)) AS [Departamento Entidad]
	  , CAST([Ciudad Entidad] AS VARCHAR(250)) AS [Ciudad Entidad]
	  , CAST([OrdenEntidad] AS VARCHAR(250)) AS [OrdenEntidad]
      , CAST([Entidad Centralizada] AS VARCHAR(200)) AS [Entidad Centralizada]
      , CAST([ID del Proceso] AS VARCHAR(200)) AS [ID del Proceso]
      , CAST([Referencia del Proceso] AS VARCHAR(200)) AS [Referencia del Proceso]
      , CAST([PCI] AS VARCHAR(200)) AS [PCI]
      , CAST([ID del Portafolio] AS VARCHAR(200)) AS [ID del Portafolio]
      , CAST([Nombre del Procedimiento] AS VARCHAR(200)) AS [Nombre del Procedimiento]
      , CAST([Fase] AS VARCHAR(200)) AS [Fase]
      , CAST([Fecha de Publicacion del Proceso] AS DATETIME) AS [Fecha de Publicacion del Proceso]
      , CAST([Fecha de Ultima Publicación] AS DATETIME) AS [Fecha de Ultima Publicación]
      , CAST([Fecha de Publicacion (Manifestacion de Interes)] AS DATETIME) AS [Fecha de Publicacion (Manifestacion de Interes)]
      , CAST([Fecha de Publicacion (Fase Borrador)] AS DATETIME) AS [Fecha de Publicacion (Fase Borrador)]
      , CAST([Fecha de Publicacion (Fase Seleccion)] AS DATETIME) AS [Fecha de Publicacion (Fase Seleccion)]
      , CAST([Precio Base] AS FLOAT) AS [Precio Base]
      , CAST([Modalidad de Contratacion] AS VARCHAR(200)) AS [Modalidad de Contratacion]
      , CAST([Justificación Modalidad de Contratación] AS VARCHAR(200)) AS [Justificación Modalidad de Contratación]
      , CAST([Duracion] AS INT) AS [Duracion]
      , CAST([Unidad de Duracion] AS VARCHAR(200)) AS [Unidad de Duracion]
      , CAST([Fecha de Recepcion de Respuestas] AS DATETIME) AS [Fecha de Recepcion de Respuestas]
      , CAST([Fecha de Apertura de Respuesta] AS DATETIME) AS [Fecha de Apertura de Respuesta]
      , CAST([Fecha de Apertura Efectiva] AS DATETIME) AS [Fecha de Apertura Efectiva]
      , CAST([Ciudad de la Unidad de Contratación] AS VARCHAR(200)) AS [Ciudad de la Unidad de Contratación]
      , CAST([Nombre de la Unidad de Contratación] AS VARCHAR(200)) AS [Nombre de la Unidad de Contratación]
      , CAST([Proveedores Invitados] AS INT) AS [Proveedores Invitados]
      , CAST([Proveedores con Invitacion Directa] AS INT) AS [Proveedores con Invitacion Directa]
      , CAST([Visualizaciones del Procedimiento] AS INT) AS [Visualizaciones del Procedimiento]
      , CAST([Proveedores que Manifestaron Interes] AS INT) AS [Proveedores que Manifestaron Interes]
      , CAST([Respuestas al Procedimiento] AS INT) AS [Respuestas al Procedimiento]
      , CAST([Respuestas Externas] AS INT) AS [Respuestas Externas]
      , CAST([Conteo de Respuestas a Ofertas] AS INT) AS [Conteo de Respuestas a Ofertas]
      , CAST([Proveedores Unicos con Respuestas] AS INT) AS [Proveedores Unicos con Respuestas]
      , CAST([Numero de Lotes] AS INT) AS [Numero de Lotes]
      , CAST([Estado del Procedimiento] AS VARCHAR(200)) AS [Estado del Procedimiento]
      , CAST([ID Estado del Procedimiento] AS VARCHAR(200)) AS [ID Estado del Procedimiento]
      , CAST([Adjudicado] AS VARCHAR(200)) AS [Adjudicado]
      , CAST([ID Adjudicacion] AS VARCHAR(200)) AS [ID Adjudicacion]
      , CAST([CodigoProveedor] AS VARCHAR(200)) AS [CodigoProveedor]
      , CAST([Departamento Proveedor] AS VARCHAR(200)) AS [Departamento Proveedor]
      , CAST([Ciudad Proveedor] AS VARCHAR(200)) AS [Ciudad Proveedor]
      , CAST([Fecha Adjudicacion] AS DATETIME) AS [Fecha Adjudicacion]
      , CAST([Valor Total Adjudicacion] AS FLOAT) AS [Valor Total Adjudicacion]
      , CAST([Nombre del Adjudicador] AS VARCHAR(200)) AS [Nombre del Adjudicador]
      , CAST([Nombre del Proveedor Adjudicado] AS VARCHAR(200)) AS [Nombre del Proveedor Adjudicado]
      , CAST([NIT del Proveedor Adjudicado] AS VARCHAR(200)) AS [NIT del Proveedor Adjudicado]
      , CAST([Codigo Principal de Categoria] AS VARCHAR(200)) AS [Codigo Principal de Categoria]
      , CAST([Estado de Apertura del Proceso] AS VARCHAR(200)) AS [Estado de Apertura del Proceso]
      , CAST([Tipo de Contrato] AS VARCHAR(200)) AS [Tipo de Contrato]
      , CAST([Subtipo de Contrato] AS VARCHAR(200)) AS [Subtipo de Contrato]
      , CAST([URLProceso] AS VARCHAR(200)) AS [URLProceso]
      , CAST([Codigo Entidad] AS VARCHAR(200)) AS [Codigo Entidad]
      , CAST([Estado Resumen] AS VARCHAR(200)) AS [Estado Resumen]
	  FROM [dbo].[Test_Secop2_Completo]



	  -- Multas y Sanciones (Pendiente)
	  /*
	  TRUNCATE TABLE [dbo].[Prod_Secop2_MultasYSanciones]

	  INSERT INTO [dbo].[Prod_Secop2_MultasYSanciones]

	  */

END
GO
