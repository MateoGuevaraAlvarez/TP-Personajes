USE [master]
GO
/****** Object:  Database [Peliculas]    Script Date: 17/5/2023 10:42:23 ******/
CREATE DATABASE [Peliculas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Peliculas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Peliculas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Peliculas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Peliculas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Peliculas] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Peliculas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Peliculas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Peliculas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Peliculas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Peliculas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Peliculas] SET ARITHABORT OFF 
GO
ALTER DATABASE [Peliculas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Peliculas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Peliculas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Peliculas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Peliculas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Peliculas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Peliculas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Peliculas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Peliculas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Peliculas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Peliculas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Peliculas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Peliculas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Peliculas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Peliculas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Peliculas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Peliculas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Peliculas] SET RECOVERY FULL 
GO
ALTER DATABASE [Peliculas] SET  MULTI_USER 
GO
ALTER DATABASE [Peliculas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Peliculas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Peliculas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Peliculas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Peliculas] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Peliculas', N'ON'
GO
ALTER DATABASE [Peliculas] SET QUERY_STORE = OFF
GO
USE [Peliculas]
GO
/****** Object:  User [alumno]    Script Date: 17/5/2023 10:42:23 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[peliculapersonaje]    Script Date: 17/5/2023 10:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[peliculapersonaje](
	[fkPelicula] [int] NOT NULL,
	[fkPersonaje] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_peliculapersonaje] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeliculasYseries]    Script Date: 17/5/2023 10:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeliculasYseries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[imagen] [varchar](500) NOT NULL,
	[titulo] [varchar](50) NOT NULL,
	[fechaDeCreacion] [date] NOT NULL,
	[calificacion] [int] NOT NULL,
 CONSTRAINT [PK_PeliculasYseries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personajes]    Script Date: 17/5/2023 10:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personajes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Imagen] [varchar](500) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[peso] [float] NOT NULL,
	[historia] [varchar](500) NOT NULL,
	[fkPeliculaPersonaje] [int] NOT NULL,
 CONSTRAINT [PK_Personajes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[peliculapersonaje] ON 

INSERT [dbo].[peliculapersonaje] ([fkPelicula], [fkPersonaje], [id]) VALUES (1, 1, 1)
INSERT [dbo].[peliculapersonaje] ([fkPelicula], [fkPersonaje], [id]) VALUES (5, 2, 2)
INSERT [dbo].[peliculapersonaje] ([fkPelicula], [fkPersonaje], [id]) VALUES (12, 3, 3)
INSERT [dbo].[peliculapersonaje] ([fkPelicula], [fkPersonaje], [id]) VALUES (13, 5, 4)
INSERT [dbo].[peliculapersonaje] ([fkPelicula], [fkPersonaje], [id]) VALUES (17, 8, 5)
SET IDENTITY_INSERT [dbo].[peliculapersonaje] OFF
GO
SET IDENTITY_INSERT [dbo].[PeliculasYseries] ON 

INSERT [dbo].[PeliculasYseries] ([Id], [imagen], [titulo], [fechaDeCreacion], [calificacion]) VALUES (1, N'https://elcomercio.pe/resizer/nGroy5ii3TgR3RUkqM4sYyUavsg=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/DNIEQ55XR5GXJE3SI5HCCMOIKA.jpg', N'Tilin rompe el silencio', CAST(N'2021-12-03' AS Date), 10)
INSERT [dbo].[PeliculasYseries] ([Id], [imagen], [titulo], [fechaDeCreacion], [calificacion]) VALUES (5, N'https://image.winudf.com/v2/image1/ZWwucGVwZS5tYW1hLm1lbWUuZ3VlLmJhc29fc2NyZWVuX2VzLUVTXzFfMTYxMDk0NTgyMV8wNjI/screen-1.jpg?fakeurl=1&type=.jpg', N'El Pepe y el boton verde', CAST(N'2020-03-03' AS Date), 7)
INSERT [dbo].[PeliculasYseries] ([Id], [imagen], [titulo], [fechaDeCreacion], [calificacion]) VALUES (12, N'sa', N'Brad Pitt en avatar', CAST(N'2018-03-02' AS Date), 4)
INSERT [dbo].[PeliculasYseries] ([Id], [imagen], [titulo], [fechaDeCreacion], [calificacion]) VALUES (13, N'https://lumiere-a.akamaihd.net/v1/images/image_4f447b1d.jpeg?region=0,0,540,810&width=480', N'Los Increibles', CAST(N'2013-06-09' AS Date), 8)
INSERT [dbo].[PeliculasYseries] ([Id], [imagen], [titulo], [fechaDeCreacion], [calificacion]) VALUES (17, N'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/hc_480x270/public/media/image/2022/01/uncharted-2022-2585137.jpg?itok=llQfdpAI', N'Apocalipsis', CAST(N'1999-06-11' AS Date), 2)
SET IDENTITY_INSERT [dbo].[PeliculasYseries] OFF
GO
SET IDENTITY_INSERT [dbo].[Personajes] ON 

INSERT [dbo].[Personajes] ([ID], [Imagen], [Nombre], [Edad], [peso], [historia], [fkPeliculaPersonaje]) VALUES (1, N'https://i.scdn.co/image/ab67616d0000b273ac7bbd44360e147f4bb81bf2', N'Tilin', 8, 22, N'‘Tilín’ es uno de los personajes más conocidos del 2021, luego de hacerse viral en un video de TikTok donde aparece haciendo danza de tijeras, mientras es arengado por un adulto que le ofrece 50 céntimos por su esfuerzo. Se trata de Luis Ángel Carrasco, quien concedió una entrevista a un medio de comunicación y reveló detalles sobre su persona. Esta es la historia detrás del niño que pocos conocían y hoy te presentamos los detalles.', 1)
INSERT [dbo].[Personajes] ([ID], [Imagen], [Nombre], [Edad], [peso], [historia], [fkPeliculaPersonaje]) VALUES (2, N'https://static.wikia.nocookie.net/ivansitorechulonlosdibujosmolanmogollon/images/e/e0/Elpepe.png/revision/latest/scale-to-width-down/239?cb=20201019011402&path-prefix=es', N'El Pepe', 20, 63, N'Uno de los personajes más vistos y virales es ‘El Pepe’ y ‘Ete Sech’, personajes con los que usted se pudo haber topado ya sea en TikTok o en las redes de Facebook y Twitter. Los videos que han sido más virales son justamente de personas que al ritmo de MC Hammer mencionan a ‘El Pepe’ y contestan con un ‘Ete Sech’.', 5)
INSERT [dbo].[Personajes] ([ID], [Imagen], [Nombre], [Edad], [peso], [historia], [fkPeliculaPersonaje]) VALUES (3, N'https://media.gq.com.mx/photos/5df95244d811050008602b5d/1:1/w_2863,h_2863,c_limit/BRAD%20PITT%20GQ%20COVER%20BEST%20DRESSED.jpg', N'Bradd Pitt', 59, 50, N'William Bradley Pitt, más conocido como Brad Pitt, es un actor, modelo y productor de cine estadounidense.', 12)
INSERT [dbo].[Personajes] ([ID], [Imagen], [Nombre], [Edad], [peso], [historia], [fkPeliculaPersonaje]) VALUES (5, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3Q402U_YTN7URcFRfKB-BcQ4qqAU0JfUKPLRCO16S&s', N'Mr Increible', 34, 90, N'Robert Parr más conocido como Bob o Mr. Increíble es el personaje principal de la película Los Increíbles. Trabaja en una empresa, aunque anteriormente llevaba una doble vida secreta y era conocido como Mr. Increíble, un superhéroe con gran fuerza. Su fuerza es de tal magnitud que por sí sola puede levantar un camión con poca dificultad.', 13)
INSERT [dbo].[Personajes] ([ID], [Imagen], [Nombre], [Edad], [peso], [historia], [fkPeliculaPersonaje]) VALUES (8, N'https://media.lacapital.com.ar/p/cdb75b29c88d066fbc3b6b4c0e3aab86/adjuntos/203/imagenes/100/631/0100631121/642x0/smart/image-7jpg.jpg', N'Tom Holland', 26, 68, N'Thomas Stanley Holland (Londres; 1 de junio de 1996), conocido simplemente como Tom Holland, es un actor, actor de voz y bailarín británico. Comenzó su carrera en el teatro en 2008 interpretando al personaje principal en el musical Billy Elliot. Posteriormente, tras graduarse de la BRIT School en 2012, debutó en el cine con la película Lo imposible (2012) ', 17)
SET IDENTITY_INSERT [dbo].[Personajes] OFF
GO
ALTER TABLE [dbo].[peliculapersonaje]  WITH CHECK ADD  CONSTRAINT [FK_peliculapersonaje_PeliculasYseries] FOREIGN KEY([fkPelicula])
REFERENCES [dbo].[PeliculasYseries] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[peliculapersonaje] CHECK CONSTRAINT [FK_peliculapersonaje_PeliculasYseries]
GO
ALTER TABLE [dbo].[peliculapersonaje]  WITH CHECK ADD  CONSTRAINT [FK_peliculapersonaje_Personajes] FOREIGN KEY([fkPersonaje])
REFERENCES [dbo].[Personajes] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[peliculapersonaje] CHECK CONSTRAINT [FK_peliculapersonaje_Personajes]
GO
USE [master]
GO
ALTER DATABASE [Peliculas] SET  READ_WRITE 
GO
