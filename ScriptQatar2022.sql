USE [Qatar2022]
GO
/****** Object:  Table [dbo].[Equipos]    Script Date: 22/11/2022 21:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipos](
	[id_equipo] [int] IDENTITY(1,1) NOT NULL,
	[pais] [varchar](50) NOT NULL,
	[director_tecnico] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Equipo] PRIMARY KEY CLUSTERED 
(
	[id_equipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugadores]    Script Date: 22/11/2022 21:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugadores](
	[id_jugador] [int] IDENTITY(1,1) NOT NULL,
	[id_equipo] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[camiseta] [int] NOT NULL,
	[posicion] [int] NOT NULL,
	[fecha_nacimiento] [date] NOT NULL,
 CONSTRAINT [PK_Jugadores] PRIMARY KEY CLUSTERED 
(
	[id_jugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Equipos] ON 

INSERT [dbo].[Equipos] ([id_equipo], [pais], [director_tecnico]) VALUES (5, N'Argentina', N'Scaloni')
SET IDENTITY_INSERT [dbo].[Equipos] OFF
GO
SET IDENTITY_INSERT [dbo].[Jugadores] ON 

INSERT [dbo].[Jugadores] ([id_jugador], [id_equipo], [nombre], [camiseta], [posicion], [fecha_nacimiento]) VALUES (1, 5, N'Messi', 10, 4, CAST(N'2000-06-24' AS Date))
SET IDENTITY_INSERT [dbo].[Jugadores] OFF
GO
