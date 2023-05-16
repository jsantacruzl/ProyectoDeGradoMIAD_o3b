/****** Object:  StoredProcedure [dbo].[CrearObjetosModeloEstrella]    Script Date: 5/15/2023 9:37:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Johan Santacruz
-- Create Date: 04/18/2023
-- Description: Creación de los objetos base del SS para el tablero
-- =============================================
CREATE PROCEDURE [dbo].[CrearObjetosModeloEstrella]

AS
BEGIN
	-- Empezamos borrando la fact, para que se lleve las FK de las dimensiones y asi poder recrear todo desde 0
	IF OBJECT_ID(N'HechoProcesoContrato') IS NOT NULL
		DROP TABLE dbo.HechoProcesoContrato

	-- Fecha (Dimensión de Tiempo del modelo en estrella, Cargada de manera independiente a los datos de STG)
    IF OBJECT_ID(N'Fecha') IS NOT NULL
		DROP TABLE dbo.Fecha
		
	CREATE TABLE [dbo].[Fecha](
	[IdTiempo] [int] NOT NULL,
	[Fecha] [date] NULL,
	[Dia] [int] NULL,
	[DiaSufijo] [char](2) NULL,
	[NombreDia] [nvarchar](30) NULL,
	[DiaSemana] [int] NULL,
	[DiaenMes] [tinyint] NULL,
	[DiaenAño] [int] NULL,
	[EsFDS] [int] NOT NULL,
	[Semana] [int] NULL,
	[SemanaISO] [int] NULL,
	[PrimeroSemana] [date] NULL,
	[UltimoSemana] [date] NULL,
	[SemanaenMes] [tinyint] NULL,
	[Mes] [int] NULL,
	[NombreMes] [nvarchar](30) NULL,
	[InicioMes] [date] NULL,
	[FinMes] [date] NULL,
	[InicioMesSiguiente] [date] NULL,
	[FnMesSiguiente] [date] NULL,
	[Trimestre] [int] NULL,
	[InicioTrimestre] [date] NULL,
	[FinTrimestre] [date] NULL,
	[Año] [int] NULL,
	[AñoISO] [int] NULL,
	[InicioAño] [date] NULL,
	[FinAño] [date] NULL,
	[Bisiesto] [bit] NULL,
	[Tiene53Semanas] [int] NOT NULL,
	[Tiene53SemanasISO] [int] NOT NULL,
	[MMYYYY] [char](6) NULL,
	[Style101] [char](10) NULL,
	[Style103] [char](10) NULL,
	[Style112] [char](8) NULL,
	[Style120] [char](10) NULL,
	 CONSTRAINT [PK_Fecha] PRIMARY KEY CLUSTERED 
	(
		[IdTiempo] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	

	-- Geografia (Dimension espacial, Cargada de manera independiente a los datos de STG)
	IF OBJECT_ID(N'Geografia') IS NOT NULL
		DROP TABLE dbo.Geografia

	CREATE TABLE [dbo].[Geografia](
	[IdUbicacion] [int] NOT NULL,
	[Pais] [varchar](255) NOT NULL,
	[Departamento] [varchar](255) NOT NULL,
	[Ciudad] [varchar](255) NOT NULL,
	[Altitud] [float] NULL,
	[Clima] [varchar](255) NULL,
	CONSTRAINT [PK_Geografia] PRIMARY KEY CLUSTERED 
	(
		[idUbicacion] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	

	-- Contratista (Alimentada desde los datos limpios de STG)
	IF OBJECT_ID(N'Contratista') IS NOT NULL
		DROP TABLE dbo.Contratista

	CREATE TABLE [dbo].[Contratista](
	[IdContratista] [int] NOT NULL,
	[CodigoContratista] [varchar](255) NOT NULL,
	[NitContratista] [varchar](255) NOT NULL,
	[NombreContratista] [varchar](255) NOT NULL,
	CONSTRAINT [PK_Contratista] PRIMARY KEY CLUSTERED 
	(
		[IdContratista] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]


	-- Entidad (Alimentada desde los datos limpios de STG)
	IF OBJECT_ID(N'Entidad') IS NOT NULL
		DROP TABLE dbo.Entidad

	CREATE TABLE [dbo].[Entidad](
	[IdEntidad] [int] NOT NULL,
	[NitEntidad] [varchar](255) NOT NULL,
	[NombreEntidad] [varchar](255) NOT NULL,
	[Rama] [varchar](255) NULL,

	CONSTRAINT [PK_Entidad] PRIMARY KEY CLUSTERED 
	(
		[IdEntidad] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]

	-- ProcesoContrato (Alimentada desde los datos limpios de STG)
	IF OBJECT_ID(N'ProcesoContrato') IS NOT NULL
		DROP TABLE dbo.ProcesoContrato

	CREATE TABLE [dbo].[ProcesoContrato](
	[IdProcesoContrato] [int] NOT NULL,
	[ReferenciaProceso] [varchar](255) NOT NULL,
	[IdPortafolio] [varchar](255) NOT NULL,
	[FaseProceso] [varchar](255) NOT NULL,
	[NombreProceso] [varchar](255) NULL,
	[EstadoProceso] [varchar](255) NULL,
	[EstadoResumen] [varchar](255) NULL,
	[ModalidadContrato] [varchar](255)  NULL,
	[IdContrato] [varchar](255)  NULL,
	[ReferenciaContrato] [varchar](255)  NULL,
	[EstadoContrato] [varchar](255)  NULL,
	[TipoContrato] [varchar](255)  NULL
	CONSTRAINT [PK_ProcesoContrato] PRIMARY KEY CLUSTERED 
	(
		[IdProcesoContrato] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]


	-- HechoProcesoContrato (Alimentada desde los datos limpios de STG y cruzando contra los ID de las dimensiones previamente creadas)

	CREATE TABLE [dbo].[HechoProcesoContrato](
	[IdFechaInicioContrato] [int] NOT NULL,
	[IdFechaFinContrato] [int] NOT NULL,
	[IdInicioProceso] [int] NOT NULL,
	[IdEntidad] [int] NOT NULL,
	[IdProcesoContrato] [int] NOT NULL,
	[IdUbicacion] [int] NOT NULL,
	[IdContratista] [int] NOT NULL,
	[PrecioBase] [float] NULL,
	[CantidadProveedoresInvitados] [int] NULL,
	[CantidadProveedoresInteresados] [int] NULL,
	[ValorAdjudicacion] [float] NULL,
	[ValorContrato] [float] NULL,
	[ValorPendientePago] [float] NULL,
	[ValorPendienteEjecucion] [float] NULL,
	[DiasAdicionados] [int] NULL,
	[FueMultado] [smallint] NULL,
	) ON [PRIMARY]

	ALTER TABLE [dbo].[HechoProcesoContrato]  WITH CHECK ADD FOREIGN KEY([IdFechaInicioContrato])
	REFERENCES [dbo].[Fecha] ([IdTiempo])
	
	ALTER TABLE [dbo].[HechoProcesoContrato]  WITH CHECK ADD FOREIGN KEY([IdFechaFinContrato])
	REFERENCES [dbo].[Fecha] ([IdTiempo])

	ALTER TABLE [dbo].[HechoProcesoContrato]  WITH CHECK ADD FOREIGN KEY([IdInicioProceso])
	REFERENCES [dbo].[Fecha] ([IdTiempo])

	ALTER TABLE [dbo].[HechoProcesoContrato]  WITH CHECK ADD FOREIGN KEY([IdEntidad])
	REFERENCES [dbo].[Entidad] ([IdEntidad])

	ALTER TABLE [dbo].[HechoProcesoContrato]  WITH CHECK ADD FOREIGN KEY([IdProcesoContrato])
	REFERENCES [dbo].[ProcesoContrato] ([IdProcesoContrato])

	ALTER TABLE [dbo].[HechoProcesoContrato]  WITH CHECK ADD FOREIGN KEY([IdUbicacion])
	REFERENCES [dbo].[Geografia] ([IdUbicacion])

	ALTER TABLE [dbo].[HechoProcesoContrato]  WITH CHECK ADD FOREIGN KEY([IdContratista])
	REFERENCES [dbo].[Contratista] ([IdContratista])

END
GO


