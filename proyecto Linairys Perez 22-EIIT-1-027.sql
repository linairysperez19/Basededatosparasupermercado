
/* Nombre: Linairys Perez. Matricula: 22-EIIT-1-027. SECCION: 0541 */

USE [master]
GO
/****** Object:  Database [supermercadots]    Script Date: 23/08/2023 2:32:40 ******/
CREATE DATABASE [supermercadots]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'supermercadots', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\supermercadots.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'supermercadots_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\supermercadots_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [supermercadots] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [supermercadots].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [supermercadots] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [supermercadots] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [supermercadots] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [supermercadots] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [supermercadots] SET ARITHABORT OFF 
GO
ALTER DATABASE [supermercadots] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [supermercadots] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [supermercadots] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [supermercadots] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [supermercadots] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [supermercadots] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [supermercadots] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [supermercadots] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [supermercadots] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [supermercadots] SET  DISABLE_BROKER 
GO
ALTER DATABASE [supermercadots] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [supermercadots] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [supermercadots] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [supermercadots] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [supermercadots] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [supermercadots] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [supermercadots] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [supermercadots] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [supermercadots] SET  MULTI_USER 
GO
ALTER DATABASE [supermercadots] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [supermercadots] SET DB_CHAINING OFF 
GO
ALTER DATABASE [supermercadots] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [supermercadots] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [supermercadots] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [supermercadots] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [supermercadots] SET QUERY_STORE = ON
GO
ALTER DATABASE [supermercadots] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [supermercadots]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 23/08/2023 2:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[ClientesId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Sexo] [varchar](10) NULL,
	[Correo] [varchar](50) NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[ClientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 23/08/2023 2:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[EmpleadosId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Sexo] [varchar](1) NULL,
	[Puesto de trabajo] [varchar](20) NULL,
	[Sueldo] [varchar](15) NULL,
	[VentasId] [int] NULL,
 CONSTRAINT [PK_empleados] PRIMARY KEY CLUSTERED 
(
	[EmpleadosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 23/08/2023 2:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[ProductosId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Codigo de barras] [varchar](10) NULL,
	[Cantidad] [int] NULL,
	[ProveedoresId] [int] NULL,
	[Precio] [float] NULL,
	[Marca] [varchar](10) NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[ProductosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 23/08/2023 2:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[ProveedoresId] [int] NOT NULL,
	[Nombre] [varchar](10) NULL,
	[Sexo] [varchar](1) NULL,
	[Correo] [varchar](20) NULL,
	[Telefono] [varchar](10) NULL,
	[ProductoId] [int] NULL,
 CONSTRAINT [PK_proveedores] PRIMARY KEY CLUSTERED 
(
	[ProveedoresId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 23/08/2023 2:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[VentasId] [int] NOT NULL,
	[EmpleadoId] [int] NULL,
	[Cantidad] [varchar](10) NULL,
	[Fecha de venta] [varchar](10) NULL,
	[Numero de factura] [varchar](10) NULL,
	[ClienteId] [int] NULL,
 CONSTRAINT [PK_ventas] PRIMARY KEY CLUSTERED 
(
	[VentasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[clientes] ([ClientesId], [Nombre], [Sexo], [Correo]) VALUES (1, N'Sergio Campos', N'M', N'sergcm@gmail.com')
INSERT [dbo].[clientes] ([ClientesId], [Nombre], [Sexo], [Correo]) VALUES (2, N'Carolina Mateo', N'F', N'carolm@gmail.com')
INSERT [dbo].[clientes] ([ClientesId], [Nombre], [Sexo], [Correo]) VALUES (3, N'Jose Peña', N'M', N'josepena@gmail.com')
INSERT [dbo].[clientes] ([ClientesId], [Nombre], [Sexo], [Correo]) VALUES (4, N'Miguel Roman', N'M', N'mr190@gmail.com')
INSERT [dbo].[clientes] ([ClientesId], [Nombre], [Sexo], [Correo]) VALUES (5, N'Andrea Cuesta', N'F', N'cuesta34@outlook.com')
INSERT [dbo].[clientes] ([ClientesId], [Nombre], [Sexo], [Correo]) VALUES (6, N'Lucas Ramirez', N'M', N'lucas025@outlook.com')
INSERT [dbo].[clientes] ([ClientesId], [Nombre], [Sexo], [Correo]) VALUES (7, N'Miguelina De Oleo', N'F', N'deoleomn@gmail.com')
INSERT [dbo].[clientes] ([ClientesId], [Nombre], [Sexo], [Correo]) VALUES (8, N'Massiel De Jesus', N'F', N'masdjs@outlook.com')
INSERT [dbo].[clientes] ([ClientesId], [Nombre], [Sexo], [Correo]) VALUES (9, N'Josefina Reyes', N'F', N'josefrey@gmail.com')
INSERT [dbo].[clientes] ([ClientesId], [Nombre], [Sexo], [Correo]) VALUES (10, N'Estefany Cuevas', N'F', N'cuevas223@gmail.com')
GO
INSERT [dbo].[empleados] ([EmpleadosId], [Nombre], [Sexo], [Puesto de trabajo], [Sueldo], [VentasId]) VALUES (1, N'Ana Gonzalez', N'F', N'Gerente', N'RD$80,000.000', 3)
INSERT [dbo].[empleados] ([EmpleadosId], [Nombre], [Sexo], [Puesto de trabajo], [Sueldo], [VentasId]) VALUES (2, N'Miguelina Vargas', N'F', N'Supervisor', N'RD$60,000.000', 5)
INSERT [dbo].[empleados] ([EmpleadosId], [Nombre], [Sexo], [Puesto de trabajo], [Sueldo], [VentasId]) VALUES (3, N'Maximo Dominguez', N'M', N'Cajero', N'RD$20,000.000', 7)
INSERT [dbo].[empleados] ([EmpleadosId], [Nombre], [Sexo], [Puesto de trabajo], [Sueldo], [VentasId]) VALUES (4, N'Manuel Morel', N'M', N'Cajero', N'RD$20,000.000', 9)
INSERT [dbo].[empleados] ([EmpleadosId], [Nombre], [Sexo], [Puesto de trabajo], [Sueldo], [VentasId]) VALUES (5, N'Maria de Los Santos', N'F', N'Reponedor', N'RD$15,000.000', 2)
INSERT [dbo].[empleados] ([EmpleadosId], [Nombre], [Sexo], [Puesto de trabajo], [Sueldo], [VentasId]) VALUES (6, N'Luis Montero', N'M', N'Jefe de ventas', N'RD$30,000.000', 4)
INSERT [dbo].[empleados] ([EmpleadosId], [Nombre], [Sexo], [Puesto de trabajo], [Sueldo], [VentasId]) VALUES (7, N'Antonio Sanchez', N'M', N'Contable', N'RD$50,000.000', 6)
INSERT [dbo].[empleados] ([EmpleadosId], [Nombre], [Sexo], [Puesto de trabajo], [Sueldo], [VentasId]) VALUES (8, N'Pablo Gutierrez', N'M', N'Administrador', N'RD$50,000.000', 8)
INSERT [dbo].[empleados] ([EmpleadosId], [Nombre], [Sexo], [Puesto de trabajo], [Sueldo], [VentasId]) VALUES (9, N'Nereida Pacheco', N'F', N'Vendedor', N'RD$20,000.000', 10)
INSERT [dbo].[empleados] ([EmpleadosId], [Nombre], [Sexo], [Puesto de trabajo], [Sueldo], [VentasId]) VALUES (10, N'Sobeida Ramos', N'F', N'Cajero', N'RD$20,000.000', NULL)
GO
INSERT [dbo].[productos] ([ProductosId], [Nombre], [Codigo de barras], [Cantidad], [ProveedoresId], [Precio], [Marca]) VALUES (1, N'Leche', N'12345', 100, 2, 90, N'Rica')
INSERT [dbo].[productos] ([ProductosId], [Nombre], [Codigo de barras], [Cantidad], [ProveedoresId], [Precio], [Marca]) VALUES (2, N'Cafe', N'54321', 200, 4, 70, N'Tinto')
INSERT [dbo].[productos] ([ProductosId], [Nombre], [Codigo de barras], [Cantidad], [ProveedoresId], [Precio], [Marca]) VALUES (3, N'Huevos', N'67890', 100, 6, 100, N'Ecocampo')
INSERT [dbo].[productos] ([ProductosId], [Nombre], [Codigo de barras], [Cantidad], [ProveedoresId], [Precio], [Marca]) VALUES (4, N'Azucar', N'09876', 150, 8, 50, N'Amaru')
INSERT [dbo].[productos] ([ProductosId], [Nombre], [Codigo de barras], [Cantidad], [ProveedoresId], [Precio], [Marca]) VALUES (5, N'Arroz', N'10293', 90, 10, 35, N'Campos')
INSERT [dbo].[productos] ([ProductosId], [Nombre], [Codigo de barras], [Cantidad], [ProveedoresId], [Precio], [Marca]) VALUES (6, N'Salsa de tomate', N'48576', 200, 1, 58, N'La Famosa')
INSERT [dbo].[productos] ([ProductosId], [Nombre], [Codigo de barras], [Cantidad], [ProveedoresId], [Precio], [Marca]) VALUES (7, N'Pasta', N'29476', 150, 3, 49, N'Milano')
INSERT [dbo].[productos] ([ProductosId], [Nombre], [Codigo de barras], [Cantidad], [ProveedoresId], [Precio], [Marca]) VALUES (8, N'Jugo', N'18375', 200, 5, 80, N'Santal')
INSERT [dbo].[productos] ([ProductosId], [Nombre], [Codigo de barras], [Cantidad], [ProveedoresId], [Precio], [Marca]) VALUES (9, N'Agua', N'56732', 200, 7, 25, N'Dasani')
INSERT [dbo].[productos] ([ProductosId], [Nombre], [Codigo de barras], [Cantidad], [ProveedoresId], [Precio], [Marca]) VALUES (10, N'Aceite', N'90432', 150, 9, NULL, N'Crisol')
GO
INSERT [dbo].[proveedores] ([ProveedoresId], [Nombre], [Sexo], [Correo], [Telefono], [ProductoId]) VALUES (1, N'Ana Matos', N'F', N'anaa3@gmail.com', N'8097654321', 10)
INSERT [dbo].[proveedores] ([ProveedoresId], [Nombre], [Sexo], [Correo], [Telefono], [ProductoId]) VALUES (2, N'Joel Brea', N'M', N'breaj@gmail.com', N'8290875432', 9)
INSERT [dbo].[proveedores] ([ProveedoresId], [Nombre], [Sexo], [Correo], [Telefono], [ProductoId]) VALUES (3, N'Ivy Gomez', N'F', N'gomez2@gmail.com', N'8498764567', 8)
INSERT [dbo].[proveedores] ([ProveedoresId], [Nombre], [Sexo], [Correo], [Telefono], [ProductoId]) VALUES (4, N'Jen Perez', N'M', N'jenpe5@gmail.com', N'8093214567', 7)
INSERT [dbo].[proveedores] ([ProveedoresId], [Nombre], [Sexo], [Correo], [Telefono], [ProductoId]) VALUES (5, N'Rosa Lara', N'F', N'rosa98@gmail.com', N'8290345627', 6)
INSERT [dbo].[proveedores] ([ProveedoresId], [Nombre], [Sexo], [Correo], [Telefono], [ProductoId]) VALUES (6, N'Axel Matos', N'M', N'axelm@gmail.com', N'8498765402', 5)
INSERT [dbo].[proveedores] ([ProveedoresId], [Nombre], [Sexo], [Correo], [Telefono], [ProductoId]) VALUES (7, N'Amy Lopez', N'F', N'lopez09@gmail.com', N'8094563208', 4)
INSERT [dbo].[proveedores] ([ProveedoresId], [Nombre], [Sexo], [Correo], [Telefono], [ProductoId]) VALUES (8, N'Raul Diaz', N'M', N'rauld4@gmail.com', N'8297654309', 3)
INSERT [dbo].[proveedores] ([ProveedoresId], [Nombre], [Sexo], [Correo], [Telefono], [ProductoId]) VALUES (9, N'Zoe Matos', N'F', N'zoe456@gmail.com', N'8498765018', 2)
INSERT [dbo].[proveedores] ([ProveedoresId], [Nombre], [Sexo], [Correo], [Telefono], [ProductoId]) VALUES (10, N'Rey Santos', N'M', N'sant9@gmail.com', N'8094532184', 1)
GO
INSERT [dbo].[ventas] ([VentasId], [EmpleadoId], [Cantidad], [Fecha de venta], [Numero de factura], [ClienteId]) VALUES (1, 5, N'50', N'12/4/2021', N'0100000005', 3)
INSERT [dbo].[ventas] ([VentasId], [EmpleadoId], [Cantidad], [Fecha de venta], [Numero de factura], [ClienteId]) VALUES (2, 3, N'60', N'20/5/2022', N'0100000005', 9)
INSERT [dbo].[ventas] ([VentasId], [EmpleadoId], [Cantidad], [Fecha de venta], [Numero de factura], [ClienteId]) VALUES (3, 8, N'30', N'6/8/2021', N'0100000005', 6)
INSERT [dbo].[ventas] ([VentasId], [EmpleadoId], [Cantidad], [Fecha de venta], [Numero de factura], [ClienteId]) VALUES (4, 7, N'40', N'29/11/2021', N'0100000005', 2)
INSERT [dbo].[ventas] ([VentasId], [EmpleadoId], [Cantidad], [Fecha de venta], [Numero de factura], [ClienteId]) VALUES (5, 1, N'65', N'19/10/2022', N'0100000005', 7)
INSERT [dbo].[ventas] ([VentasId], [EmpleadoId], [Cantidad], [Fecha de venta], [Numero de factura], [ClienteId]) VALUES (6, 2, N'38', N'23/7/2022', N'0100000005', 5)
INSERT [dbo].[ventas] ([VentasId], [EmpleadoId], [Cantidad], [Fecha de venta], [Numero de factura], [ClienteId]) VALUES (7, 9, N'46', N'18/8/2021', N'0100000005', 1)
INSERT [dbo].[ventas] ([VentasId], [EmpleadoId], [Cantidad], [Fecha de venta], [Numero de factura], [ClienteId]) VALUES (8, 10, N'23', N'1/2/2023', N'0100000005', 10)
INSERT [dbo].[ventas] ([VentasId], [EmpleadoId], [Cantidad], [Fecha de venta], [Numero de factura], [ClienteId]) VALUES (9, 8, N'59', N'2/4/2022', N'0100000005', 4)
INSERT [dbo].[ventas] ([VentasId], [EmpleadoId], [Cantidad], [Fecha de venta], [Numero de factura], [ClienteId]) VALUES (10, 2, N'41', N'15/6/2022', NULL, 8)
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [FK_productos_proveedores1] FOREIGN KEY([ProveedoresId])
REFERENCES [dbo].[proveedores] ([ProveedoresId])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [FK_productos_proveedores1]
GO
ALTER TABLE [dbo].[proveedores]  WITH CHECK ADD  CONSTRAINT [FK_proveedores_productos] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[productos] ([ProductosId])
GO
ALTER TABLE [dbo].[proveedores] CHECK CONSTRAINT [FK_proveedores_productos]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [FK_ventas_clientes] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[clientes] ([ClientesId])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [FK_ventas_clientes]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [FK_ventas_empleados1] FOREIGN KEY([VentasId])
REFERENCES [dbo].[empleados] ([EmpleadosId])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [FK_ventas_empleados1]
GO
USE [master]
GO
ALTER DATABASE [supermercadots] SET  READ_WRITE 
GO
