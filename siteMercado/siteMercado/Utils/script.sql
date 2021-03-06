USE [master]
GO
/****** Object:  Database [dbSiteMercado]    Script Date: 09-Apr-20 20:14:01 ******/
CREATE DATABASE [dbSiteMercado]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbSiteMercado', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\dbSiteMercado.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbSiteMercado_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\dbSiteMercado_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [dbSiteMercado] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbSiteMercado].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbSiteMercado] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbSiteMercado] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbSiteMercado] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbSiteMercado] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbSiteMercado] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbSiteMercado] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dbSiteMercado] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbSiteMercado] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbSiteMercado] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbSiteMercado] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbSiteMercado] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbSiteMercado] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbSiteMercado] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbSiteMercado] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbSiteMercado] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dbSiteMercado] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbSiteMercado] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbSiteMercado] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbSiteMercado] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbSiteMercado] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbSiteMercado] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbSiteMercado] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbSiteMercado] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbSiteMercado] SET  MULTI_USER 
GO
ALTER DATABASE [dbSiteMercado] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbSiteMercado] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbSiteMercado] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbSiteMercado] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dbSiteMercado] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbSiteMercado', N'ON'
GO
ALTER DATABASE [dbSiteMercado] SET QUERY_STORE = OFF
GO
USE [dbSiteMercado]
GO
/****** Object:  Table [dbo].[produto]    Script Date: 09-Apr-20 20:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](150) NOT NULL,
	[preco] [decimal](10, 2) NOT NULL,
	[estoque] [int] NOT NULL,
	[imagem] [varchar](500) NULL,
	[dataCadastro] [datetime] NOT NULL,
	[dataAtualizacao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 09-Apr-20 20:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](150) NULL,
	[email] [varchar](100) NULL,
	[senha] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[produto] ON 

INSERT [dbo].[produto] ([id], [descricao], [preco], [estoque], [imagem], [dataCadastro], [dataAtualizacao]) VALUES (1, N'Arroz tipo 1 integral', CAST(15.50 AS Decimal(10, 2)), 15, N'Resources\Images\arroz.jpg', CAST(N'2019-11-16T00:00:00.000' AS DateTime), CAST(N'2020-04-09T20:08:16.000' AS DateTime))
INSERT [dbo].[produto] ([id], [descricao], [preco], [estoque], [imagem], [dataCadastro], [dataAtualizacao]) VALUES (2, N'Feijao carioca 1', CAST(5.00 AS Decimal(10, 2)), 10, N'Resources\Images\saco-feijao.jpg', CAST(N'2019-11-16T00:00:00.000' AS DateTime), CAST(N'2020-04-09T20:05:45.000' AS DateTime))
INSERT [dbo].[produto] ([id], [descricao], [preco], [estoque], [imagem], [dataCadastro], [dataAtualizacao]) VALUES (3, N'Refrigerante Cola', CAST(6.50 AS Decimal(10, 2)), 5, N'Resources\Images\refri.jpg', CAST(N'2019-11-16T00:00:00.000' AS DateTime), CAST(N'2020-04-09T17:13:20.000' AS DateTime))
INSERT [dbo].[produto] ([id], [descricao], [preco], [estoque], [imagem], [dataCadastro], [dataAtualizacao]) VALUES (33, N'Sabão em pó Tixan', CAST(5.50 AS Decimal(10, 2)), 10, N'Resources\Images\sabao.jpg', CAST(N'2020-04-09T19:25:01.000' AS DateTime), CAST(N'2020-04-09T20:09:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[produto] OFF
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([id], [nome], [email], [senha]) VALUES (1, N'igor', N'igorbrandao00@gmail.com', N'MTIzNDU2')
SET IDENTITY_INSERT [dbo].[usuario] OFF
USE [master]
GO
ALTER DATABASE [dbSiteMercado] SET  READ_WRITE 
GO
