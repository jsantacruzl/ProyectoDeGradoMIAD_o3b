/****** Object:  Table [dbo].[Prod_SabanaAnalitica]    Script Date: 23/05/2023 9:36:14 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Prod_SabanaAnalitica_Con_Predicciones](
	[Pro_Entidad] [varchar] (250) NULL,
 [Pro_Nit Entidad] [varchar] (250) NULL,
 [Pro_Departamento Entidad] [varchar] (250) NULL,
 [Pro_Ciudad Entidad] [varchar] (250) NULL,
 [Pro_OrdenEntidad] [varchar] (250) NULL,
 [Pro_Entidad Centralizada] [varchar] (250) NULL,
 [Pro_ID del Proceso] [varchar] (250) NULL,
 [Pro_Referencia del Proceso] [varchar] (250) NULL,
 [Pro_PCI] [varchar] (250) NULL,
 [Pro_ID del Portafolio] [varchar] (250) NULL,
 [Pro_Nombre del Procedimiento] [varchar] (250) NULL,
 [Pro_Fase] [varchar] (250) NULL,
 [Pro_Fecha de Publicacion del Proceso] [varchar] (250) NULL,
 [Pro_Fecha de Ultima Publicación] [varchar] (250) NULL,
 [Pro_Precio Base] [varchar] (250) NULL,
 [Pro_Modalidad de Contratacion] [varchar] (250) NULL,
 [Pro_Justificación Modalidad de Contratación] [varchar] (250) NULL,
 [Pro_Duracion] [varchar] (250) NULL,
 [Pro_Unidad de Duracion] [varchar] (250) NULL,
 [Pro_Ciudad de la Unidad de Contratación] [varchar] (250) NULL,
 [Pro_Nombre de la Unidad de Contratación] [varchar] (250) NULL,
 [Pro_Proveedores Invitados] [varchar] (250) NULL,
 [Pro_Proveedores con Invitacion Directa] [varchar] (250) NULL,
 [Pro_Visualizaciones del Procedimiento] [varchar] (250) NULL,
 [Pro_Proveedores que Manifestaron Interes] [varchar] (250) NULL,
 [Pro_Respuestas al Procedimiento] [varchar] (250) NULL,
 [Pro_Respuestas Externas] [varchar] (250) NULL,
 [Pro_Conteo de Respuestas a Ofertas] [varchar] (250) NULL,
 [Pro_Proveedores Unicos con Respuestas] [varchar] (250) NULL,
 [Pro_Numero de Lotes] [varchar] (250) NULL,
 [Pro_Estado del Procedimiento] [varchar] (250) NULL,
 [Pro_ID Estado del Procedimiento] [varchar] (250) NULL,
 [Pro_Adjudicado] [varchar] (250) NULL,
 [Pro_ID Adjudicacion] [varchar] (250) NULL,
 [Pro_CodigoProveedor] [varchar] (250) NULL,
 [Pro_Departamento Proveedor] [varchar] (250) NULL,
 [Pro_Ciudad Proveedor] [varchar] (250) NULL,
 [Pro_Valor Total Adjudicacion] [varchar] (250) NULL,
 [Pro_Nombre del Adjudicador] [varchar] (250) NULL,
 [Pro_Nombre del Proveedor Adjudicado] [varchar] (250) NULL,
 [Pro_NIT del Proveedor Adjudicado] [varchar] (250) NULL,
 [Pro_Codigo Principal de Categoria] [varchar] (250) NULL,
 [Pro_Estado de Apertura del Proceso] [varchar] (250) NULL,
 [Pro_Tipo de Contrato] [varchar] (250) NULL,
 [Pro_Subtipo de Contrato] [varchar] (250) NULL,
 [Pro_URLProceso] [varchar] (250) NULL,
 [Pro_Codigo Entidad] [varchar] (250) NULL,
 [Pro_Estado Resumen] [varchar] (250) NULL,
 [Cat_Extraccion] [varchar] (250) NULL,
 [FueMultado] [varchar] (250) NULL,
 [Prob predicción] [varchar] (250) NULL,
 [Semaforo] [varchar] (250) NULL,
 [Descrip Semaforo] [varchar] (250) NULL
) ON [PRIMARY]
GO


