USE [master]
GO
/****** Object:  Database [BOLSA_EXAMEN]    Script Date: 07/09/2020 11:16:45 a. m. ******/
CREATE DATABASE [BOLSA_EXAMEN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BOLSA', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL12.FSDESAINT2014\MSSQL\DATA\BOLSA_EXAMEN.mdf' , SIZE = 79552KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BOLSA_log', FILENAME = N'G:\Program Files\Microsoft SQL Server\MSSQL12.FSDESAINT2014\MSSQL\Data\BOLSA_EXAMEN_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BOLSA_EXAMEN] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BOLSA_EXAMEN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BOLSA_EXAMEN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET ARITHABORT OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET RECOVERY FULL 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET  MULTI_USER 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BOLSA_EXAMEN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BOLSA_EXAMEN] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BOLSA_EXAMEN', N'ON'
GO

/****** Object:  Table [dbo].[DATOS_PERSONALES]    Script Date: 07/09/2020 11:16:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DATOS_PERSONALES](
	[LLAVE_DATO_PERSONAL] [bigint] IDENTITY(1,1) NOT NULL,
	[LLAVE_USUARIO] [bigint] NULL,
	[NOMBRE] [nvarchar](max) NULL,
	[PATERNO] [nvarchar](max) NULL,
	[MATERNO] [nvarchar](max) NULL,
	[CIUDAD] [nvarchar](max) NULL,
	[CALLE] [nvarchar](max) NULL,
	[NUMERO] [nvarchar](max) NULL,
	[COLONIA] [nvarchar](max) NULL,
	[TELEFONO] [nvarchar](max) NULL,
	[OTRO_TEL] [nvarchar](max) NULL,
	[FECHA_NAC] [date] NULL,
	[CURP] [nvarchar](max) NULL,
	[RFC] [nvarchar](max) NULL,
	[PASAPORTE] [nvarchar](max) NULL,
	[CARTILLA] [nvarchar](max) NULL,
	[GENERO] [nvarchar](max) NULL,
	[EDO_CIVIL] [nvarchar](max) NULL,
	[FECHA_ALTA] [datetime] NULL,
	[MUN] [varchar](max) NULL,
	[EDO] [nvarchar](max) NULL,
 CONSTRAINT [PK_DATOS_PERSONALES] PRIMARY KEY CLUSTERED 
(
	[LLAVE_DATO_PERSONAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXP_LABORAL]    Script Date: 07/09/2020 11:16:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_LABORAL](
	[LLAVE_EXP_LAB] [bigint] IDENTITY(1,1) NOT NULL,
	[LLAVE_USUARIO] [bigint] NULL,
	[PUESTO] [nvarchar](max) NULL,
	[FUNCIONES] [nvarchar](max) NULL,
	[EMPRESA] [nvarchar](max) NULL,
	[NO_EMPLEADOS] [int] NULL,
	[FECHA_INICIO] [nvarchar](max) NULL,
	[FECHA_FIN] [nvarchar](max) NULL,
	[RET_MENS_BRUTA] [bigint] NULL,
	[RET_MENS_NETA] [bigint] NULL,
	[FECHA_ALTA] [date] NULL,
	[PAIS] [nvarchar](max) NULL,
	[LLAVE_DATO_PERSONAL] [bigint] NULL,
 CONSTRAINT [PK_EXP_LABORAL] PRIMARY KEY CLUSTERED 
(
	[LLAVE_EXP_LAB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 07/09/2020 11:16:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[LLAVE_USUARIO] [bigint] IDENTITY(1,1) NOT NULL,
	[USUARIO] [nvarchar](20) NULL,
	[PASS] [nvarchar](20) NULL,
	[EMAIL] [nvarchar](max) NULL,
	[FECHA_ALTA] [datetime] NULL,
 CONSTRAINT [PK_USUARIOS] PRIMARY KEY CLUSTERED 
(
	[LLAVE_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [BOLSA_EXAMEN] SET  READ_WRITE 
GO
