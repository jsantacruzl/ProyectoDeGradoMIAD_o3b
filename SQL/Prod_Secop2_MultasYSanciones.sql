/****** Object:  Table [dbo].[Prod_Secop2_MultasYSanciones]    Script Date: 5/15/2023 9:07:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Prod_Secop2_MultasYSanciones](
	[ID Proceso] [varchar](250) NULL,
	[Referencia Proceso] [varchar](250) NULL,
	[ID Contrato] [varchar](250) NULL,
	[Codigo Entidad Creadora] [varchar](250) NULL,
	[Nombre Entidad Creadora] [varchar](250) NULL,
	[ Codigo Proveedor Objeto de la Multa] [varchar](250) NULL,
	[Nombre Proveedor Objeto de la Multa] [varchar](250) NULL,
	[Valor] [float] NULL,
	[Valor Pagado] [float] NULL,
	[Fecha Evento] [datetime] NULL,
	[Aplico Garantias] [int] NOT NULL,
	[Numero de Acto] [varchar](250) NULL,
	[Tipo de Sancion] [varchar](250) NULL,
	[Descripcion Otro Tipo De Sancion] [varchar](250) NULL,
	[Estado] [varchar](250) NULL,
	[Tipo] [varchar](250) NULL,
	[Numero de Version] [int] NULL
) ON [PRIMARY]
GO


