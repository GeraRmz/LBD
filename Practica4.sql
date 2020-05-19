USE [master]
GO
/****** Object:  Database [BAR]    Script Date: 18/05/2020 08:00:50 p. m. ******/
CREATE DATABASE [BAR]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BAR', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BAR.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BAR_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BAR_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BAR] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BAR].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BAR] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BAR] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BAR] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BAR] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BAR] SET ARITHABORT OFF 
GO
ALTER DATABASE [BAR] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BAR] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BAR] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BAR] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BAR] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BAR] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BAR] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BAR] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BAR] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BAR] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BAR] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BAR] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BAR] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BAR] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BAR] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BAR] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BAR] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BAR] SET RECOVERY FULL 
GO
ALTER DATABASE [BAR] SET  MULTI_USER 
GO
ALTER DATABASE [BAR] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BAR] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BAR] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BAR] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BAR] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BAR', N'ON'
GO
ALTER DATABASE [BAR] SET QUERY_STORE = OFF
GO
USE [BAR]
GO
/****** Object:  Table [dbo].[Bebida]    Script Date: 18/05/2020 08:00:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bebida](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Precio] [float] NULL,
	[Descripcion] [varchar](60) NULL,
	[Cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 18/05/2020 08:00:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](20) NULL,
	[ApellidoPa] [varchar](20) NULL,
	[ApellidoMa] [varchar](20) NULL,
	[FechaNac] [date] NULL,
	[Telefono] [int] NULL,
	[Direccion] [varchar](30) NULL,
	[ID_EmpleadoSucursal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExEmpleado]    Script Date: 18/05/2020 08:00:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExEmpleado](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](20) NULL,
	[ApellidoPa] [varchar](20) NULL,
	[ApellidoMa] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nomina]    Script Date: 18/05/2020 08:00:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nomina](
	[ID] [int] NOT NULL,
	[ID_EmpleadoNomina] [int] NULL,
	[Sueldo] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 18/05/2020 08:00:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[ID] [int] NOT NULL,
	[ID_Plato] [int] NULL,
	[ID_Bebida] [int] NULL,
	[ID_Ticket] [int] NULL,
	[ID_Empleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plato]    Script Date: 18/05/2020 08:00:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plato](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Precio] [int] NULL,
	[Descripcion] [varchar](60) NULL,
	[Cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 18/05/2020 08:00:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[ID] [int] NOT NULL,
	[Direccion] [varchar](30) NULL,
	[Capacidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 18/05/2020 08:00:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[ID] [int] NOT NULL,
	[ID_SucursalTicket] [int] NULL,
	[Subtotal] [float] NULL,
	[Total] [float] NULL,
	[FechaEmision] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 18/05/2020 08:00:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turno](
	[ID] [int] NOT NULL,
	[ID_EmpleadoTurno] [int] NULL,
	[Turno] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Nomina]  WITH CHECK ADD FOREIGN KEY([ID_EmpleadoNomina])
REFERENCES [dbo].[Empleado] ([ID])
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD FOREIGN KEY([ID_Bebida])
REFERENCES [dbo].[Bebida] ([ID])
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD FOREIGN KEY([ID_Empleado])
REFERENCES [dbo].[Empleado] ([ID])
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD FOREIGN KEY([ID_Plato])
REFERENCES [dbo].[Plato] ([ID])
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD FOREIGN KEY([ID_Ticket])
REFERENCES [dbo].[Ticket] ([ID])
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD FOREIGN KEY([ID_EmpleadoTurno])
REFERENCES [dbo].[Empleado] ([ID])
GO
USE [master]
GO
ALTER DATABASE [BAR] SET  READ_WRITE 
GO
