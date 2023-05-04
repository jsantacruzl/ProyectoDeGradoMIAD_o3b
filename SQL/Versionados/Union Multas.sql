DROP TABLE [dbo].[Prod_Secop2_Cruzado_Multa]

SELECT A.*
, COALESCE(B.FLAG_MULTA, 0) AS FLAG_MULTA
INTO [dbo].[Prod_Secop2_Cruzado_Multa]
FROM [dbo].[Prod_Secop2_Cruzado] A
LEFT JOIN [dbo].[Prod_Secop2_MultasYSanciones] B
ON A.[ID del Portafolio] = B.[ID_PROCESO]
--AND A.[CodigoProveedor] = B.[ID_PROVEEDOR]