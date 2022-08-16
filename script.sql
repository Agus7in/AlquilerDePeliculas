USE [master]
GO
/****** Object:  Database [LP3_Parcial2]    Script Date: 16/08/2022 13:29:01 ******/
CREATE DATABASE [LP3_Parcial2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LP3_Parcial2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\LP3_Parcial2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LP3_Parcial2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\LP3_Parcial2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LP3_Parcial2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LP3_Parcial2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LP3_Parcial2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET ARITHABORT OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LP3_Parcial2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LP3_Parcial2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LP3_Parcial2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LP3_Parcial2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET RECOVERY FULL 
GO
ALTER DATABASE [LP3_Parcial2] SET  MULTI_USER 
GO
ALTER DATABASE [LP3_Parcial2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LP3_Parcial2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LP3_Parcial2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LP3_Parcial2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LP3_Parcial2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LP3_Parcial2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'LP3_Parcial2', N'ON'
GO
ALTER DATABASE [LP3_Parcial2] SET QUERY_STORE = OFF
GO
USE [LP3_Parcial2]
GO
/****** Object:  Table [dbo].[ALQUILER]    Script Date: 16/08/2022 13:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALQUILER](
	[ID_ALQUILER] [int] IDENTITY(1,1) NOT NULL,
	[ID_PELICULA] [int] NOT NULL,
	[FECHA_ALQUILER] [datetime] NOT NULL,
 CONSTRAINT [PK_ALQUILER] PRIMARY KEY CLUSTERED 
(
	[ID_ALQUILER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GENEROS]    Script Date: 16/08/2022 13:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GENEROS](
	[ID_GENERO] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_GENERO] [varchar](50) NOT NULL,
 CONSTRAINT [PK_GENEROS] PRIMARY KEY CLUSTERED 
(
	[ID_GENERO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PELICULAS]    Script Date: 16/08/2022 13:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PELICULAS](
	[ID_PELICULA] [int] IDENTITY(1,1) NOT NULL,
	[ID_GENERO] [int] NOT NULL,
	[NOMBRE_PELICULA] [varchar](50) NOT NULL,
	[WEB_PELICULA] [varchar](50) NOT NULL,
	[DESCRIPCION] [varchar](50) NOT NULL,
	[ANIO] [int] NOT NULL,
	[ARCHIVO] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PELICULAS] PRIMARY KEY CLUSTERED 
(
	[ID_PELICULA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ALQUILER] ON 

INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (2, 3, CAST(N'2022-06-02T22:00:55.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (3, 2, CAST(N'2022-06-07T12:26:44.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (4, 2, CAST(N'2022-06-07T12:42:20.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (5, 3, CAST(N'2022-06-07T12:42:54.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (6, 2, CAST(N'2022-06-07T12:44:30.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (7, 3, CAST(N'2022-06-07T12:44:39.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (8, 2, CAST(N'2022-06-07T14:26:33.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (9, 3, CAST(N'2022-06-07T14:26:39.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (10, 3, CAST(N'2022-06-07T14:27:00.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (11, 3, CAST(N'2022-06-07T14:41:13.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (12, 9, CAST(N'2022-06-07T15:52:49.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (13, 2, CAST(N'2022-06-07T16:01:44.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (14, 3, CAST(N'2022-06-07T16:01:55.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (15, 4, CAST(N'2022-06-07T16:01:58.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (16, 2, CAST(N'2022-06-07T16:06:45.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (17, 2, CAST(N'2022-06-07T16:08:05.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (18, 3, CAST(N'2022-06-07T16:08:55.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (19, 2, CAST(N'2022-06-07T16:09:17.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (20, 8, CAST(N'2022-06-07T16:10:30.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (21, 9, CAST(N'2022-06-07T16:10:34.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (22, 9, CAST(N'2022-06-07T16:10:44.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (23, 8, CAST(N'2022-06-07T16:10:47.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (24, 2, CAST(N'2022-06-07T16:13:56.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (25, 4, CAST(N'2022-06-07T16:16:28.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (26, 2, CAST(N'2022-06-07T16:16:52.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (27, 3, CAST(N'2022-06-07T16:18:06.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (28, 3, CAST(N'2022-06-07T16:18:41.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (29, 2, CAST(N'2022-06-07T16:19:23.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (30, 3, CAST(N'2022-06-07T16:19:33.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (31, 4, CAST(N'2022-06-07T16:19:36.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (32, 3, CAST(N'2022-06-07T16:19:42.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (33, 2, CAST(N'2022-06-07T16:21:24.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (34, 3, CAST(N'2022-06-07T16:21:31.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (35, 4, CAST(N'2022-06-07T16:21:34.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (36, 8, CAST(N'2022-06-07T16:21:43.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (37, 9, CAST(N'2022-06-07T16:21:46.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (38, 9, CAST(N'2022-06-07T16:22:00.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (39, 4, CAST(N'2022-06-07T16:22:10.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (40, 2, CAST(N'2022-06-07T16:22:42.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (41, 3, CAST(N'2022-06-07T16:22:46.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (42, 4, CAST(N'2022-06-07T16:22:48.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (43, 3, CAST(N'2022-06-07T16:23:28.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (44, 4, CAST(N'2022-06-07T16:23:32.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (45, 8, CAST(N'2022-06-07T16:23:41.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (46, 9, CAST(N'2022-06-07T16:23:44.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (47, 8, CAST(N'2022-06-07T16:23:53.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (48, 3, CAST(N'2022-06-08T09:24:47.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (49, 4, CAST(N'2022-06-08T09:24:51.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (50, 4, CAST(N'2022-06-08T09:24:58.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (51, 3, CAST(N'2022-06-08T09:25:02.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (52, 8, CAST(N'2022-06-08T09:25:08.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (53, 10, CAST(N'2022-06-08T09:37:31.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (54, 10, CAST(N'2022-06-08T10:17:16.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (55, 4, CAST(N'2022-06-08T10:18:01.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (56, 9, CAST(N'2022-06-08T18:17:33.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (57, 2, CAST(N'2022-06-08T19:15:25.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (58, 8, CAST(N'2022-06-08T19:17:34.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (59, 9, CAST(N'2022-06-08T19:17:38.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (60, 3, CAST(N'2022-06-09T09:30:53.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (61, 4, CAST(N'2022-06-09T09:31:53.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (62, 8, CAST(N'2022-06-09T09:33:31.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (63, 9, CAST(N'2022-06-09T09:33:56.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (64, 9, CAST(N'2022-06-09T09:36:27.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (65, 2, CAST(N'2022-06-12T15:08:15.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (66, 2, CAST(N'2022-08-16T12:46:37.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (67, 4, CAST(N'2022-08-16T12:47:14.000' AS DateTime))
INSERT [dbo].[ALQUILER] ([ID_ALQUILER], [ID_PELICULA], [FECHA_ALQUILER]) VALUES (68, 3, CAST(N'2022-08-16T12:49:12.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ALQUILER] OFF
GO
SET IDENTITY_INSERT [dbo].[GENEROS] ON 

INSERT [dbo].[GENEROS] ([ID_GENERO], [NOMBRE_GENERO]) VALUES (1, N'Terror Modificado')
INSERT [dbo].[GENEROS] ([ID_GENERO], [NOMBRE_GENERO]) VALUES (2, N'Comedia')
INSERT [dbo].[GENEROS] ([ID_GENERO], [NOMBRE_GENERO]) VALUES (3, N'Drama Romantico')
INSERT [dbo].[GENEROS] ([ID_GENERO], [NOMBRE_GENERO]) VALUES (7, N'Accion Modificado 3')
INSERT [dbo].[GENEROS] ([ID_GENERO], [NOMBRE_GENERO]) VALUES (9, N'Suspenso Modificado')
INSERT [dbo].[GENEROS] ([ID_GENERO], [NOMBRE_GENERO]) VALUES (10, N'Aventura Modificada')
INSERT [dbo].[GENEROS] ([ID_GENERO], [NOMBRE_GENERO]) VALUES (12, N'Suspenso Modificado')
INSERT [dbo].[GENEROS] ([ID_GENERO], [NOMBRE_GENERO]) VALUES (14, N'Belicas')
INSERT [dbo].[GENEROS] ([ID_GENERO], [NOMBRE_GENERO]) VALUES (15, N'Nuevo')
SET IDENTITY_INSERT [dbo].[GENEROS] OFF
GO
SET IDENTITY_INSERT [dbo].[PELICULAS] ON 

INSERT [dbo].[PELICULAS] ([ID_PELICULA], [ID_GENERO], [NOMBRE_PELICULA], [WEB_PELICULA], [DESCRIPCION], [ANIO], [ARCHIVO]) VALUES (2, 1, N'La llamada 2', N'https://www.youtube.com/watch?v=yzR2GY-ew8I', N'Pelicula de terror del anio 2005 (secuela)', 2005, N'la llamada.jpg')
INSERT [dbo].[PELICULAS] ([ID_PELICULA], [ID_GENERO], [NOMBRE_PELICULA], [WEB_PELICULA], [DESCRIPCION], [ANIO], [ARCHIVO]) VALUES (3, 2, N'American Pie', N'https://www.youtube.com/watch?v=VW6jfPJHDYo', N'Pelicula de comedia de 1999', 1999, N'americanPie.jpg')
INSERT [dbo].[PELICULAS] ([ID_PELICULA], [ID_GENERO], [NOMBRE_PELICULA], [WEB_PELICULA], [DESCRIPCION], [ANIO], [ARCHIVO]) VALUES (4, 7, N'El transportador', N'https://www.youtube.com/watch?v=104ZiS5K_a4', N'Pelicula de Accion del anio 2002 Mod', 2002, N'transportador.jpg')
INSERT [dbo].[PELICULAS] ([ID_PELICULA], [ID_GENERO], [NOMBRE_PELICULA], [WEB_PELICULA], [DESCRIPCION], [ANIO], [ARCHIVO]) VALUES (8, 3, N'Pelicula', N'https://www.imdb.com', N'Descripion pelicula.', 2013, N'once.jpg')
INSERT [dbo].[PELICULAS] ([ID_PELICULA], [ID_GENERO], [NOMBRE_PELICULA], [WEB_PELICULA], [DESCRIPCION], [ANIO], [ARCHIVO]) VALUES (9, 1, N'Ultima llamada', N'https://www.imdb.com/title/tt7131622/', N'Pelicula descripcion.', 2021, N'download.jpg')
INSERT [dbo].[PELICULAS] ([ID_PELICULA], [ID_GENERO], [NOMBRE_PELICULA], [WEB_PELICULA], [DESCRIPCION], [ANIO], [ARCHIVO]) VALUES (10, 10, N'Uncharted fuera del mapa', N'https://www.youtube.com/watch?v=62bKO3LP6HA', N'Pelicula basada en videojuego.', 2022, N'uncharted.jpeg')
SET IDENTITY_INSERT [dbo].[PELICULAS] OFF
GO
/****** Object:  Index [RELATION_26_FK]    Script Date: 16/08/2022 13:29:02 ******/
CREATE NONCLUSTERED INDEX [RELATION_26_FK] ON [dbo].[ALQUILER]
(
	[ID_PELICULA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [RELATION_25_FK]    Script Date: 16/08/2022 13:29:02 ******/
CREATE NONCLUSTERED INDEX [RELATION_25_FK] ON [dbo].[PELICULAS]
(
	[ID_GENERO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ALQUILER]  WITH CHECK ADD  CONSTRAINT [FK_ALQUILER_RELATION__PELICULA] FOREIGN KEY([ID_PELICULA])
REFERENCES [dbo].[PELICULAS] ([ID_PELICULA])
GO
ALTER TABLE [dbo].[ALQUILER] CHECK CONSTRAINT [FK_ALQUILER_RELATION__PELICULA]
GO
ALTER TABLE [dbo].[PELICULAS]  WITH CHECK ADD  CONSTRAINT [FK_PELICULA_RELATION__GENEROS] FOREIGN KEY([ID_GENERO])
REFERENCES [dbo].[GENEROS] ([ID_GENERO])
GO
ALTER TABLE [dbo].[PELICULAS] CHECK CONSTRAINT [FK_PELICULA_RELATION__GENEROS]
GO
USE [master]
GO
ALTER DATABASE [LP3_Parcial2] SET  READ_WRITE 
GO
