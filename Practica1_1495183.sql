USE [Practicas]
GO
/****** Object:  Table [dbo].[Tvs]    Script Date: 14/09/2019 11:02:49 a. m. ******/
DROP TABLE IF EXISTS [dbo].[Tvs]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 14/09/2019 11:02:49 a. m. ******/
DROP TABLE IF EXISTS [dbo].[Servicios]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 14/09/2019 11:02:49 a. m. ******/
DROP TABLE IF EXISTS [dbo].[Productos]
GO
/****** Object:  Table [dbo].[Celulares]    Script Date: 14/09/2019 11:02:49 a. m. ******/
DROP TABLE IF EXISTS [dbo].[Celulares]
GO
/****** Object:  Table [dbo].[Autos]    Script Date: 14/09/2019 11:02:49 a. m. ******/
DROP TABLE IF EXISTS [dbo].[Autos]
GO
USE [master]
GO
/****** Object:  Database [Practicas]    Script Date: 14/09/2019 11:02:49 a. m. ******/
DROP DATABASE IF EXISTS [Practicas]
GO
/****** Object:  Database [Practicas]    Script Date: 14/09/2019 11:02:49 a. m. ******/
CREATE DATABASE [Practicas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practicas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Practicas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practicas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Practicas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Practicas] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practicas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practicas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practicas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practicas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practicas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practicas] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practicas] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Practicas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practicas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practicas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practicas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practicas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practicas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practicas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practicas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practicas] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Practicas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practicas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practicas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practicas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practicas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practicas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practicas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practicas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Practicas] SET  MULTI_USER 
GO
ALTER DATABASE [Practicas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practicas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practicas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practicas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practicas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Practicas] SET QUERY_STORE = OFF
GO
USE [Practicas]
GO
/****** Object:  Table [dbo].[Autos]    Script Date: 14/09/2019 11:02:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autos](
	[ProductID] [int] NOT NULL,
	[CarName] [varchar](25) NOT NULL,
	[Price] [money] NULL,
	[CarDescription] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Celulares]    Script Date: 14/09/2019 11:02:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Celulares](
	[ProductID] [int] NOT NULL,
	[PhoneName] [varchar](25) NOT NULL,
	[Price] [money] NULL,
	[PhoneDescription] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 14/09/2019 11:02:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductID] [int] NOT NULL,
	[ProductName] [varchar](25) NOT NULL,
	[Price] [money] NULL,
	[ProductDescription] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 14/09/2019 11:02:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[ProductID] [int] NOT NULL,
	[ServicesName] [varchar](25) NOT NULL,
	[Price] [money] NULL,
	[ServicesDescription] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tvs]    Script Date: 14/09/2019 11:02:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tvs](
	[ProductID] [int] NOT NULL,
	[TvName] [varchar](25) NOT NULL,
	[Price] [money] NULL,
	[TvDescription] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Productos] ([ProductID], [ProductName], [Price], [ProductDescription]) VALUES (1, N'Protector de uso rudo', 55.9000, N'iPhone 6')
USE [master]
GO
ALTER DATABASE [Practicas] SET  READ_WRITE 
GO
