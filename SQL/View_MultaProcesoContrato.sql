/****** Object:  View [dbo].[View_MultaProcesoContrato]    Script Date: 5/15/2023 9:00:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_MultaProcesoContrato]
AS
  --Total filas en multas = 486 pero solo 27 cruzan vs contrato y 52 contra el proceso, de las cuales 50 son registros únicos aunque existen duplicados por contrato y por proceso
SELECT m.* 
  FROM [dbo].[Prod_Secop2_ContratosElectronicos] cr, [dbo].[Prod_Secop2_MultasYSanciones] m
  where cr.[ID Contrato] = m.[ID Contrato]
union
SELECT m.* 
  FROM [dbo].[Prod_Secop2_Completo] pr, [dbo].[Prod_Secop2_MultasYSanciones] m
  where pr.[Referencia del Proceso] = m.[Referencia Proceso]
GO


