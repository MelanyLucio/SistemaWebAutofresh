USE [master]
GO
/****** Object:  Database [PROYECTO]    Script Date: 26/11/2024 06:42:53 p. m. ******/
CREATE DATABASE [PROYECTO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PROYECTO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS02\MSSQL\DATA\PROYECTO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PROYECTO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS02\MSSQL\DATA\PROYECTO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PROYECTO] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PROYECTO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PROYECTO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PROYECTO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PROYECTO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PROYECTO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PROYECTO] SET ARITHABORT OFF 
GO
ALTER DATABASE [PROYECTO] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PROYECTO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PROYECTO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PROYECTO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PROYECTO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PROYECTO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PROYECTO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PROYECTO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PROYECTO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PROYECTO] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PROYECTO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PROYECTO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PROYECTO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PROYECTO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PROYECTO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PROYECTO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PROYECTO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PROYECTO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PROYECTO] SET  MULTI_USER 
GO
ALTER DATABASE [PROYECTO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PROYECTO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PROYECTO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PROYECTO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PROYECTO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PROYECTO] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PROYECTO] SET QUERY_STORE = ON
GO
ALTER DATABASE [PROYECTO] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PROYECTO]
GO
/****** Object:  Table [dbo].[ADMINISTRADOR]    Script Date: 26/11/2024 06:42:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMINISTRADOR](
	[id_administrador] [int] IDENTITY(1,1) NOT NULL,
	[nom_administrador] [varchar](20) NOT NULL,
	[ape_administrador] [varchar](20) NOT NULL,
	[dni_administrador] [varchar](8) NOT NULL,
	[usu_administrador] [varchar](30) NOT NULL,
	[contra_administrador] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_administrador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADMINISTRADOR_DOCTOR]    Script Date: 26/11/2024 06:42:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMINISTRADOR_DOCTOR](
	[administrador_id] [int] NOT NULL,
	[doctor_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[administrador_id] ASC,
	[doctor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADMINISTRADOR_PACIENTE]    Script Date: 26/11/2024 06:42:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMINISTRADOR_PACIENTE](
	[administrador_id] [int] NOT NULL,
	[paciente_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[administrador_id] ASC,
	[paciente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADMINISTRADOR_SECRETARIA]    Script Date: 26/11/2024 06:42:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMINISTRADOR_SECRETARIA](
	[administrador_id] [int] NOT NULL,
	[secretaria_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[administrador_id] ASC,
	[secretaria_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CITAS]    Script Date: 26/11/2024 06:42:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CITAS](
	[id_citas] [int] IDENTITY(1,1) NOT NULL,
	[fecha_citas] [date] NOT NULL,
	[id_paciente] [int] NULL,
	[id_estados] [int] NULL,
	[id_doctor] [int] NULL,
	[id_horario] [int] NULL,
	[id_especialidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_citas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCTOR]    Script Date: 26/11/2024 06:42:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCTOR](
	[id_doctor] [int] IDENTITY(1,1) NOT NULL,
	[nom_doctor] [varchar](20) NOT NULL,
	[ape_doctor] [varchar](20) NOT NULL,
	[dni_doctor] [varchar](8) NOT NULL,
	[tel_doctor] [varchar](10) NOT NULL,
	[usu_doctor] [varchar](30) NOT NULL,
	[contra_doctor] [varchar](30) NOT NULL,
	[id_especialidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_doctor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCTOR_PACIENTE]    Script Date: 26/11/2024 06:42:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCTOR_PACIENTE](
	[doctor_id] [int] NOT NULL,
	[paciente_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[doctor_id] ASC,
	[paciente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESPECIALIDAD]    Script Date: 26/11/2024 06:42:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESPECIALIDAD](
	[id_especialidad] [int] IDENTITY(1,1) NOT NULL,
	[nom_especialidad] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_especialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESTADOS]    Script Date: 26/11/2024 06:42:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESTADOS](
	[id_estados] [int] IDENTITY(1,1) NOT NULL,
	[nom_estados] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GENERO]    Script Date: 26/11/2024 06:42:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GENERO](
	[id_genero] [int] IDENTITY(1,1) NOT NULL,
	[nom_genero] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HORARIO]    Script Date: 26/11/2024 06:42:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HORARIO](
	[id_horario] [int] IDENTITY(1,1) NOT NULL,
	[hora] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_horario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PACIENTE]    Script Date: 26/11/2024 06:42:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PACIENTE](
	[id_paciente] [int] IDENTITY(1,1) NOT NULL,
	[nom_paciente] [varchar](20) NOT NULL,
	[ape_paciente] [varchar](20) NOT NULL,
	[dni_paciente] [varchar](8) NOT NULL,
	[nac_paciente] [date] NOT NULL,
	[id_genero] [int] NULL,
	[tel_paciente] [varchar](10) NOT NULL,
	[usu_paciente] [varchar](30) NOT NULL,
	[contra_paciente] [varchar](30) NOT NULL,
 CONSTRAINT [PK__PACIENTE__2C2C72BB7F35F7E8] PRIMARY KEY CLUSTERED 
(
	[id_paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SECRETARIA]    Script Date: 26/11/2024 06:42:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SECRETARIA](
	[id_secretaria] [int] IDENTITY(1,1) NOT NULL,
	[nom_secretaria] [varchar](20) NOT NULL,
	[ape_secretaria] [varchar](20) NOT NULL,
	[dni_secretaria] [varchar](8) NOT NULL,
	[tel_secretaria] [varchar](10) NOT NULL,
	[usu_secretaria] [varchar](30) NOT NULL,
	[contra_secretaria] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_secretaria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SECRETARIA_DOCTOR]    Script Date: 26/11/2024 06:42:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SECRETARIA_DOCTOR](
	[secretaria_id] [int] NOT NULL,
	[doctor_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[secretaria_id] ASC,
	[doctor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SECRETARIA_PACIENTE]    Script Date: 26/11/2024 06:42:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SECRETARIA_PACIENTE](
	[secretaria_id] [int] NOT NULL,
	[paciente_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[secretaria_id] ASC,
	[paciente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ADMINISTRADOR] ON 

INSERT [dbo].[ADMINISTRADOR] ([id_administrador], [nom_administrador], [ape_administrador], [dni_administrador], [usu_administrador], [contra_administrador]) VALUES (1, N'melany', N'lucio', N'72031048', N'melany', N'@melany')
INSERT [dbo].[ADMINISTRADOR] ([id_administrador], [nom_administrador], [ape_administrador], [dni_administrador], [usu_administrador], [contra_administrador]) VALUES (2, N'camila', N'cabello', N'12455255', N'camila', N'123')
INSERT [dbo].[ADMINISTRADOR] ([id_administrador], [nom_administrador], [ape_administrador], [dni_administrador], [usu_administrador], [contra_administrador]) VALUES (3, N'Freeny', N'Sarocha', N'45210252', N'usuario', N'123')
SET IDENTITY_INSERT [dbo].[ADMINISTRADOR] OFF
GO
INSERT [dbo].[ADMINISTRADOR_DOCTOR] ([administrador_id], [doctor_id]) VALUES (1, 3)
GO
INSERT [dbo].[ADMINISTRADOR_PACIENTE] ([administrador_id], [paciente_id]) VALUES (1, 1)
GO
INSERT [dbo].[ADMINISTRADOR_SECRETARIA] ([administrador_id], [secretaria_id]) VALUES (1, 1)
GO
SET IDENTITY_INSERT [dbo].[DOCTOR] ON 

INSERT [dbo].[DOCTOR] ([id_doctor], [nom_doctor], [ape_doctor], [dni_doctor], [tel_doctor], [usu_doctor], [contra_doctor], [id_especialidad]) VALUES (15, N'ANELIS', N'MITMA', N'754181', N'91614824', N'ANN', N'123', 10)
INSERT [dbo].[DOCTOR] ([id_doctor], [nom_doctor], [ape_doctor], [dni_doctor], [tel_doctor], [usu_doctor], [contra_doctor], [id_especialidad]) VALUES (20, N'Claudia', N'vilchez', N'32154215', N'916184512', N'clau', N'123', 21)
INSERT [dbo].[DOCTOR] ([id_doctor], [nom_doctor], [ape_doctor], [dni_doctor], [tel_doctor], [usu_doctor], [contra_doctor], [id_especialidad]) VALUES (26, N'Camz', N'mila', N'56421', N'91563189', N'Cmila', N'123', 23)
INSERT [dbo].[DOCTOR] ([id_doctor], [nom_doctor], [ape_doctor], [dni_doctor], [tel_doctor], [usu_doctor], [contra_doctor], [id_especialidad]) VALUES (27, N'CAMILA', N'LUCIO', N'915482', N'9451682165', N'luc', N'123', 37)
INSERT [dbo].[DOCTOR] ([id_doctor], [nom_doctor], [ape_doctor], [dni_doctor], [tel_doctor], [usu_doctor], [contra_doctor], [id_especialidad]) VALUES (28, N'mila', N'LUCIO', N'1625891', N'91628549', N'admin', N'123', 19)
INSERT [dbo].[DOCTOR] ([id_doctor], [nom_doctor], [ape_doctor], [dni_doctor], [tel_doctor], [usu_doctor], [contra_doctor], [id_especialidad]) VALUES (33, N'doctor', N'lucio', N'34353637', N'916919147', N'doctor', N'123', 19)
SET IDENTITY_INSERT [dbo].[DOCTOR] OFF
GO
INSERT [dbo].[DOCTOR_PACIENTE] ([doctor_id], [paciente_id]) VALUES (3, 1)
GO
SET IDENTITY_INSERT [dbo].[ESPECIALIDAD] ON 

INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (34, N' Medicina intensiva')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (42, N'Análisis clínicos')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (19, N'Cardiologo')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (18, N'Dentista')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (38, N'Dermatología')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (20, N'Endocrinologia')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (25, N'Gastroenterología')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (28, N'Hematología')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (29, N'Infectología')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (21, N'Medicina General')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (30, N'Neumología')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (37, N'Neurocirugía')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (23, N'Neurología')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (31, N'Nutriología')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (22, N'Nutriologo')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (24, N'Odontologo')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (32, N'Oftalmología')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (41, N'Otorrinolaringología')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (35, N'Pediatría')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (2, N'Psicologo')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (10, N'Psiquiatra')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (33, N'Reanimación')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (36, N'Toxicología')
INSERT [dbo].[ESPECIALIDAD] ([id_especialidad], [nom_especialidad]) VALUES (40, N'Urología')
SET IDENTITY_INSERT [dbo].[ESPECIALIDAD] OFF
GO
SET IDENTITY_INSERT [dbo].[ESTADOS] ON 

INSERT [dbo].[ESTADOS] ([id_estados], [nom_estados]) VALUES (1, N'Activo')
INSERT [dbo].[ESTADOS] ([id_estados], [nom_estados]) VALUES (2, N'No activo')
SET IDENTITY_INSERT [dbo].[ESTADOS] OFF
GO
SET IDENTITY_INSERT [dbo].[GENERO] ON 

INSERT [dbo].[GENERO] ([id_genero], [nom_genero]) VALUES (1, N'BASICO')
INSERT [dbo].[GENERO] ([id_genero], [nom_genero]) VALUES (2, N'EJECUTIVO')
INSERT [dbo].[GENERO] ([id_genero], [nom_genero]) VALUES (3, N'VIP')
INSERT [dbo].[GENERO] ([id_genero], [nom_genero]) VALUES (4, N'VIP CON DESINFECCION')
INSERT [dbo].[GENERO] ([id_genero], [nom_genero]) VALUES (5, N'PREMIUM')
SET IDENTITY_INSERT [dbo].[GENERO] OFF
GO
SET IDENTITY_INSERT [dbo].[HORARIO] ON 

INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (1, CAST(N'08:00:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (2, CAST(N'08:30:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (3, CAST(N'09:00:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (4, CAST(N'09:30:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (5, CAST(N'10:00:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (6, CAST(N'10:30:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (7, CAST(N'11:00:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (8, CAST(N'11:30:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (9, CAST(N'12:00:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (10, CAST(N'12:30:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (11, CAST(N'13:00:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (12, CAST(N'13:30:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (13, CAST(N'14:00:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (14, CAST(N'14:30:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (15, CAST(N'15:00:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (16, CAST(N'15:30:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (17, CAST(N'16:00:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (18, CAST(N'16:30:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (19, CAST(N'17:00:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (20, CAST(N'17:30:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (21, CAST(N'18:00:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (22, CAST(N'18:30:00' AS Time))
INSERT [dbo].[HORARIO] ([id_horario], [hora]) VALUES (23, CAST(N'19:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[HORARIO] OFF
GO
SET IDENTITY_INSERT [dbo].[PACIENTE] ON 

INSERT [dbo].[PACIENTE] ([id_paciente], [nom_paciente], [ape_paciente], [dni_paciente], [nac_paciente], [id_genero], [tel_paciente], [usu_paciente], [contra_paciente]) VALUES (66, N'BXG379', N'TOYOTA SAIL', N'12345678', CAST(N'2024-11-11' AS Date), 1, N'967876567', N'Camila', N'2023')
INSERT [dbo].[PACIENTE] ([id_paciente], [nom_paciente], [ape_paciente], [dni_paciente], [nac_paciente], [id_genero], [tel_paciente], [usu_paciente], [contra_paciente]) VALUES (68, N'CSD567', N'TOYOTA RUSH', N'34354657', CAST(N'2024-12-03' AS Date), 3, N'980987879', N'Angel', N'2013')
INSERT [dbo].[PACIENTE] ([id_paciente], [nom_paciente], [ape_paciente], [dni_paciente], [nac_paciente], [id_genero], [tel_paciente], [usu_paciente], [contra_paciente]) VALUES (69, N'FGV456', N'HYUNDAY', N'23242526', CAST(N'2024-11-25' AS Date), 4, N'987696065', N'Xiomara', N'2015')
INSERT [dbo].[PACIENTE] ([id_paciente], [nom_paciente], [ape_paciente], [dni_paciente], [nac_paciente], [id_genero], [tel_paciente], [usu_paciente], [contra_paciente]) VALUES (70, N'XFG345', N'SUSUKI', N'34356788', CAST(N'2024-06-12' AS Date), 5, N'908768594', N'Daniela', N'2013')
INSERT [dbo].[PACIENTE] ([id_paciente], [nom_paciente], [ape_paciente], [dni_paciente], [nac_paciente], [id_genero], [tel_paciente], [usu_paciente], [contra_paciente]) VALUES (72, N'CFW23', N'MERCEDES', N'43536353', CAST(N'2024-11-28' AS Date), 3, N'967869683', N'GABRIEL', N'2024')
SET IDENTITY_INSERT [dbo].[PACIENTE] OFF
GO
SET IDENTITY_INSERT [dbo].[SECRETARIA] ON 

INSERT [dbo].[SECRETARIA] ([id_secretaria], [nom_secretaria], [ape_secretaria], [dni_secretaria], [tel_secretaria], [usu_secretaria], [contra_secretaria]) VALUES (3, N'Cera Abrillantadora', N'Tarjeta', N'2', N'915765675', N'12345678910', N'Soles')
SET IDENTITY_INSERT [dbo].[SECRETARIA] OFF
GO
INSERT [dbo].[SECRETARIA_DOCTOR] ([secretaria_id], [doctor_id]) VALUES (1, 3)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ADMINIST__0F874A881B00788B]    Script Date: 26/11/2024 06:42:54 p. m. ******/
ALTER TABLE [dbo].[ADMINISTRADOR] ADD UNIQUE NONCLUSTERED 
(
	[dni_administrador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ADMINIST__0F874A88A279351A]    Script Date: 26/11/2024 06:42:54 p. m. ******/
ALTER TABLE [dbo].[ADMINISTRADOR] ADD UNIQUE NONCLUSTERED 
(
	[dni_administrador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ADMINIST__C3A5B482466A5203]    Script Date: 26/11/2024 06:42:54 p. m. ******/
ALTER TABLE [dbo].[ADMINISTRADOR] ADD UNIQUE NONCLUSTERED 
(
	[usu_administrador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ADMINIST__C3A5B4824985779C]    Script Date: 26/11/2024 06:42:54 p. m. ******/
ALTER TABLE [dbo].[ADMINISTRADOR] ADD UNIQUE NONCLUSTERED 
(
	[usu_administrador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DOCTOR__9F459A6149C15BFB]    Script Date: 26/11/2024 06:42:54 p. m. ******/
ALTER TABLE [dbo].[DOCTOR] ADD UNIQUE NONCLUSTERED 
(
	[dni_doctor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DOCTOR__9F459A61EBBDC31A]    Script Date: 26/11/2024 06:42:54 p. m. ******/
ALTER TABLE [dbo].[DOCTOR] ADD UNIQUE NONCLUSTERED 
(
	[dni_doctor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DOCTOR__EC3905E46EB72369]    Script Date: 26/11/2024 06:42:54 p. m. ******/
ALTER TABLE [dbo].[DOCTOR] ADD UNIQUE NONCLUSTERED 
(
	[usu_doctor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DOCTOR__EC3905E4D45C778B]    Script Date: 26/11/2024 06:42:54 p. m. ******/
ALTER TABLE [dbo].[DOCTOR] ADD UNIQUE NONCLUSTERED 
(
	[usu_doctor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ESPECIALIDAD]    Script Date: 26/11/2024 06:42:54 p. m. ******/
ALTER TABLE [dbo].[ESPECIALIDAD] ADD  CONSTRAINT [IX_ESPECIALIDAD] UNIQUE NONCLUSTERED 
(
	[nom_especialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__PACIENTE__2FCD317ACA5C0169]    Script Date: 26/11/2024 06:42:54 p. m. ******/
ALTER TABLE [dbo].[PACIENTE] ADD  CONSTRAINT [UQ__PACIENTE__2FCD317ACA5C0169] UNIQUE NONCLUSTERED 
(
	[dni_paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__PACIENTE__2FCD317AD7BC2370]    Script Date: 26/11/2024 06:42:54 p. m. ******/
ALTER TABLE [dbo].[PACIENTE] ADD  CONSTRAINT [UQ__PACIENTE__2FCD317AD7BC2370] UNIQUE NONCLUSTERED 
(
	[dni_paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__PACIENTE__8E90F7A71969CD07]    Script Date: 26/11/2024 06:42:54 p. m. ******/
ALTER TABLE [dbo].[PACIENTE] ADD  CONSTRAINT [UQ__PACIENTE__8E90F7A71969CD07] UNIQUE NONCLUSTERED 
(
	[usu_paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__PACIENTE__8E90F7A74D951863]    Script Date: 26/11/2024 06:42:54 p. m. ******/
ALTER TABLE [dbo].[PACIENTE] ADD  CONSTRAINT [UQ__PACIENTE__8E90F7A74D951863] UNIQUE NONCLUSTERED 
(
	[usu_paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SECRETAR__4FA5471783D23BF4]    Script Date: 26/11/2024 06:42:54 p. m. ******/
ALTER TABLE [dbo].[SECRETARIA] ADD UNIQUE NONCLUSTERED 
(
	[dni_secretaria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SECRETAR__5CE3AEE944958CA3]    Script Date: 26/11/2024 06:42:54 p. m. ******/
ALTER TABLE [dbo].[SECRETARIA] ADD UNIQUE NONCLUSTERED 
(
	[usu_secretaria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADMINISTRADOR_DOCTOR]  WITH NOCHECK ADD FOREIGN KEY([administrador_id])
REFERENCES [dbo].[ADMINISTRADOR] ([id_administrador])
GO
ALTER TABLE [dbo].[ADMINISTRADOR_DOCTOR]  WITH NOCHECK ADD FOREIGN KEY([administrador_id])
REFERENCES [dbo].[ADMINISTRADOR] ([id_administrador])
GO
ALTER TABLE [dbo].[ADMINISTRADOR_DOCTOR]  WITH NOCHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[DOCTOR] ([id_doctor])
GO
ALTER TABLE [dbo].[ADMINISTRADOR_DOCTOR]  WITH NOCHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[DOCTOR] ([id_doctor])
GO
ALTER TABLE [dbo].[ADMINISTRADOR_PACIENTE]  WITH NOCHECK ADD FOREIGN KEY([administrador_id])
REFERENCES [dbo].[ADMINISTRADOR] ([id_administrador])
GO
ALTER TABLE [dbo].[ADMINISTRADOR_PACIENTE]  WITH NOCHECK ADD FOREIGN KEY([administrador_id])
REFERENCES [dbo].[ADMINISTRADOR] ([id_administrador])
GO
ALTER TABLE [dbo].[ADMINISTRADOR_PACIENTE]  WITH NOCHECK ADD  CONSTRAINT [FK__ADMINISTR__pacie__336AA144] FOREIGN KEY([paciente_id])
REFERENCES [dbo].[PACIENTE] ([id_paciente])
GO
ALTER TABLE [dbo].[ADMINISTRADOR_PACIENTE] CHECK CONSTRAINT [FK__ADMINISTR__pacie__336AA144]
GO
ALTER TABLE [dbo].[ADMINISTRADOR_PACIENTE]  WITH NOCHECK ADD  CONSTRAINT [FK__ADMINISTR__pacie__6D0D32F4] FOREIGN KEY([paciente_id])
REFERENCES [dbo].[PACIENTE] ([id_paciente])
GO
ALTER TABLE [dbo].[ADMINISTRADOR_PACIENTE] NOCHECK CONSTRAINT [FK__ADMINISTR__pacie__6D0D32F4]
GO
ALTER TABLE [dbo].[ADMINISTRADOR_SECRETARIA]  WITH NOCHECK ADD FOREIGN KEY([administrador_id])
REFERENCES [dbo].[ADMINISTRADOR] ([id_administrador])
GO
ALTER TABLE [dbo].[ADMINISTRADOR_SECRETARIA]  WITH NOCHECK ADD FOREIGN KEY([administrador_id])
REFERENCES [dbo].[ADMINISTRADOR] ([id_administrador])
GO
ALTER TABLE [dbo].[ADMINISTRADOR_SECRETARIA]  WITH NOCHECK ADD FOREIGN KEY([secretaria_id])
REFERENCES [dbo].[SECRETARIA] ([id_secretaria])
GO
ALTER TABLE [dbo].[CITAS]  WITH CHECK ADD FOREIGN KEY([id_doctor])
REFERENCES [dbo].[DOCTOR] ([id_doctor])
GO
ALTER TABLE [dbo].[CITAS]  WITH CHECK ADD FOREIGN KEY([id_doctor])
REFERENCES [dbo].[DOCTOR] ([id_doctor])
GO
ALTER TABLE [dbo].[CITAS]  WITH CHECK ADD FOREIGN KEY([id_especialidad])
REFERENCES [dbo].[ESPECIALIDAD] ([id_especialidad])
GO
ALTER TABLE [dbo].[CITAS]  WITH CHECK ADD FOREIGN KEY([id_especialidad])
REFERENCES [dbo].[ESPECIALIDAD] ([id_especialidad])
GO
ALTER TABLE [dbo].[CITAS]  WITH CHECK ADD FOREIGN KEY([id_estados])
REFERENCES [dbo].[ESTADOS] ([id_estados])
GO
ALTER TABLE [dbo].[CITAS]  WITH CHECK ADD FOREIGN KEY([id_estados])
REFERENCES [dbo].[ESTADOS] ([id_estados])
GO
ALTER TABLE [dbo].[CITAS]  WITH CHECK ADD FOREIGN KEY([id_horario])
REFERENCES [dbo].[HORARIO] ([id_horario])
GO
ALTER TABLE [dbo].[CITAS]  WITH CHECK ADD FOREIGN KEY([id_horario])
REFERENCES [dbo].[HORARIO] ([id_horario])
GO
ALTER TABLE [dbo].[CITAS]  WITH CHECK ADD  CONSTRAINT [FK__CITAS__id_pacien__3A179ED3] FOREIGN KEY([id_paciente])
REFERENCES [dbo].[PACIENTE] ([id_paciente])
GO
ALTER TABLE [dbo].[CITAS] CHECK CONSTRAINT [FK__CITAS__id_pacien__3A179ED3]
GO
ALTER TABLE [dbo].[CITAS]  WITH CHECK ADD  CONSTRAINT [FK__CITAS__id_pacien__73852659] FOREIGN KEY([id_paciente])
REFERENCES [dbo].[PACIENTE] ([id_paciente])
GO
ALTER TABLE [dbo].[CITAS] CHECK CONSTRAINT [FK__CITAS__id_pacien__73852659]
GO
ALTER TABLE [dbo].[CITAS]  WITH CHECK ADD  CONSTRAINT [FK_CITAS_PACIENTES] FOREIGN KEY([id_paciente])
REFERENCES [dbo].[PACIENTE] ([id_paciente])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CITAS] CHECK CONSTRAINT [FK_CITAS_PACIENTES]
GO
ALTER TABLE [dbo].[DOCTOR]  WITH NOCHECK ADD FOREIGN KEY([id_especialidad])
REFERENCES [dbo].[ESPECIALIDAD] ([id_especialidad])
GO
ALTER TABLE [dbo].[DOCTOR]  WITH NOCHECK ADD FOREIGN KEY([id_especialidad])
REFERENCES [dbo].[ESPECIALIDAD] ([id_especialidad])
GO
ALTER TABLE [dbo].[DOCTOR_PACIENTE]  WITH NOCHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[DOCTOR] ([id_doctor])
GO
ALTER TABLE [dbo].[DOCTOR_PACIENTE]  WITH NOCHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[DOCTOR] ([id_doctor])
GO
ALTER TABLE [dbo].[DOCTOR_PACIENTE]  WITH NOCHECK ADD  CONSTRAINT [FK__DOCTOR_PA__pacie__3CF40B7E] FOREIGN KEY([paciente_id])
REFERENCES [dbo].[PACIENTE] ([id_paciente])
GO
ALTER TABLE [dbo].[DOCTOR_PACIENTE] CHECK CONSTRAINT [FK__DOCTOR_PA__pacie__3CF40B7E]
GO
ALTER TABLE [dbo].[DOCTOR_PACIENTE]  WITH NOCHECK ADD  CONSTRAINT [FK__DOCTOR_PA__pacie__73BA3083] FOREIGN KEY([paciente_id])
REFERENCES [dbo].[PACIENTE] ([id_paciente])
GO
ALTER TABLE [dbo].[DOCTOR_PACIENTE] NOCHECK CONSTRAINT [FK__DOCTOR_PA__pacie__73BA3083]
GO
ALTER TABLE [dbo].[PACIENTE]  WITH NOCHECK ADD  CONSTRAINT [FK__PACIENTE__id_gen__3DE82FB7] FOREIGN KEY([id_genero])
REFERENCES [dbo].[GENERO] ([id_genero])
GO
ALTER TABLE [dbo].[PACIENTE] CHECK CONSTRAINT [FK__PACIENTE__id_gen__3DE82FB7]
GO
ALTER TABLE [dbo].[PACIENTE]  WITH NOCHECK ADD  CONSTRAINT [FK__PACIENTE__id_gen__74AE54BC] FOREIGN KEY([id_genero])
REFERENCES [dbo].[GENERO] ([id_genero])
GO
ALTER TABLE [dbo].[PACIENTE] NOCHECK CONSTRAINT [FK__PACIENTE__id_gen__74AE54BC]
GO
ALTER TABLE [dbo].[SECRETARIA_DOCTOR]  WITH NOCHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[DOCTOR] ([id_doctor])
GO
ALTER TABLE [dbo].[SECRETARIA_DOCTOR]  WITH NOCHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[DOCTOR] ([id_doctor])
GO
ALTER TABLE [dbo].[SECRETARIA_DOCTOR]  WITH NOCHECK ADD FOREIGN KEY([secretaria_id])
REFERENCES [dbo].[SECRETARIA] ([id_secretaria])
GO
ALTER TABLE [dbo].[SECRETARIA_PACIENTE]  WITH NOCHECK ADD  CONSTRAINT [FK__SECRETARI__pacie__40C49C62] FOREIGN KEY([paciente_id])
REFERENCES [dbo].[PACIENTE] ([id_paciente])
GO
ALTER TABLE [dbo].[SECRETARIA_PACIENTE] CHECK CONSTRAINT [FK__SECRETARI__pacie__40C49C62]
GO
ALTER TABLE [dbo].[SECRETARIA_PACIENTE]  WITH NOCHECK ADD  CONSTRAINT [FK__SECRETARI__pacie__778AC167] FOREIGN KEY([paciente_id])
REFERENCES [dbo].[PACIENTE] ([id_paciente])
GO
ALTER TABLE [dbo].[SECRETARIA_PACIENTE] NOCHECK CONSTRAINT [FK__SECRETARI__pacie__778AC167]
GO
ALTER TABLE [dbo].[SECRETARIA_PACIENTE]  WITH NOCHECK ADD FOREIGN KEY([secretaria_id])
REFERENCES [dbo].[SECRETARIA] ([id_secretaria])
GO
USE [master]
GO
ALTER DATABASE [PROYECTO] SET  READ_WRITE 
GO
