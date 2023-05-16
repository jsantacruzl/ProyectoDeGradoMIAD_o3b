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
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE CargarSabanaAnalitica

AS
BEGIN

    TRUNCATE TABLE [dbo].[Prod_SabanaAnalitica]

	INSERT INTO [dbo].[Prod_SabanaAnalitica]
	select pr.*, case when m.[Tipo de Sancion] = 'Tipo Sancion' then 'Multado' else NULL end as FueMultado
	from [dbo].[View_ProcesoContrato] pr 
	left join [dbo].[View_MultaProcesoContrato] m on (pr.[Con_ID Contrato] = m.[ID Contrato]) or (pr.[Pro_Referencia del Proceso] = m.[Referencia Proceso]) 


END
GO
