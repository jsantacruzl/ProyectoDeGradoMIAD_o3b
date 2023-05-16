/****** Object:  StoredProcedure [dbo].[STG_TO_PROD]    Script Date: 5/15/2023 9:09:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: @TipoCarga = 1 para carga desde 0, rehaciendo los objetos base, cualquier otro valor para carga incremental
-- =============================================
CREATE PROCEDURE [dbo].[STG_TO_PROD]
(
    -- Add the parameters for the stored procedure here
    @TipoCarga INT
)
AS
BEGIN
    
	IF @TipoCarga = 1
		-- Carga completa que regenera el modelo en estrella desde 0:
		BEGIN
			-- Se crean todos los objetos en estrella
			EXEC [dbo].[CrearObjetosModeloEstrella]

			-- Se cargan las dimensiones base o independientes (Fecha y Geografia)
			EXEC [dbo].[CargarDimensionesBase]

		END

		-- Carga únicamente las dimensiones de Negocio, que son sensibles a ser modificadas desde SECOP II
	BEGIN
		-- Se llenan las tablas de Prod_ usando las tablas Test_ (STG limpio)
		EXEC TEST_TO_PROD
		-- Se carga la SabanaAnalitica
		EXEC [dbo].[CargarSabanaAnalitica]
		-- Se cargan las dimensiones de negocio (Entidad, Contratista, ProcesoContrato y HechoProcesoContrato)
		EXEC [dbo].[CargarDimensionesNegocio]
	END
	

END
GO


