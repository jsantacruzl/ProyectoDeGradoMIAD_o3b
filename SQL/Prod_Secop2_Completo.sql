/****** Object:  Table [dbo].[Prod_Secop2_Completo]    Script Date: 5/15/2023 9:08:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Prod_Secop2_Completo](
	[Entidad] [varchar](250) NULL,
	[Nit Entidad] [varchar](10) NULL,
	[Departamento Entidad] [varchar](250) NULL,
	[Ciudad Entidad] [varchar](250) NULL,
	[OrdenEntidad] [varchar](250) NULL,
	[Entidad Centralizada] [varchar](200) NULL,
	[ID del Proceso] [varchar](200) NULL,
	[Referencia del Proceso] [varchar](200) NULL,
	[PCI] [varchar](200) NULL,
	[ID del Portafolio] [varchar](200) NULL,
	[Nombre del Procedimiento] [varchar](200) NULL,
	[Fase] [varchar](200) NULL,
	[Fecha de Publicacion del Proceso] [datetime] NULL,
	[Fecha de Ultima Publicación] [datetime] NULL,
	[Fecha de Publicacion (Manifestacion de Interes)] [datetime] NULL,
	[Fecha de Publicacion (Fase Borrador)] [datetime] NULL,
	[Fecha de Publicacion (Fase Seleccion)] [datetime] NULL,
	[Precio Base] [float] NULL,
	[Modalidad de Contratacion] [varchar](200) NULL,
	[Justificación Modalidad de Contratación] [varchar](200) NULL,
	[Duracion] [int] NULL,
	[Unidad de Duracion] [varchar](200) NULL,
	[Fecha de Recepcion de Respuestas] [datetime] NULL,
	[Fecha de Apertura de Respuesta] [datetime] NULL,
	[Fecha de Apertura Efectiva] [datetime] NULL,
	[Ciudad de la Unidad de Contratación] [varchar](200) NULL,
	[Nombre de la Unidad de Contratación] [varchar](200) NULL,
	[Proveedores Invitados] [int] NULL,
	[Proveedores con Invitacion Directa] [int] NULL,
	[Visualizaciones del Procedimiento] [int] NULL,
	[Proveedores que Manifestaron Interes] [int] NULL,
	[Respuestas al Procedimiento] [int] NULL,
	[Respuestas Externas] [int] NULL,
	[Conteo de Respuestas a Ofertas] [int] NULL,
	[Proveedores Unicos con Respuestas] [int] NULL,
	[Numero de Lotes] [int] NULL,
	[Estado del Procedimiento] [varchar](200) NULL,
	[ID Estado del Procedimiento] [varchar](200) NULL,
	[Adjudicado] [varchar](200) NULL,
	[ID Adjudicacion] [varchar](200) NULL,
	[CodigoProveedor] [varchar](200) NULL,
	[Departamento Proveedor] [varchar](200) NULL,
	[Ciudad Proveedor] [varchar](200) NULL,
	[Fecha Adjudicacion] [datetime] NULL,
	[Valor Total Adjudicacion] [float] NULL,
	[Nombre del Adjudicador] [varchar](200) NULL,
	[Nombre del Proveedor Adjudicado] [varchar](200) NULL,
	[NIT del Proveedor Adjudicado] [varchar](200) NULL,
	[Codigo Principal de Categoria] [varchar](200) NULL,
	[Estado de Apertura del Proceso] [varchar](200) NULL,
	[Tipo de Contrato] [varchar](200) NULL,
	[Subtipo de Contrato] [varchar](200) NULL,
	[URLProceso] [varchar](200) NULL,
	[Codigo Entidad] [varchar](200) NULL,
	[Estado Resumen] [varchar](200) NULL
) ON [PRIMARY]
GO


