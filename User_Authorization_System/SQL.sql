/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [User_Authorizatoin_System_Db]    Script Date: 3/7/2018 5:37:06 PM ******/
CREATE DATABASE [User_Authorizatoin_System_Db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'User_Authorizatoin_System_Db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\User_Authorizatoin_System_Db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'User_Authorizatoin_System_Db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\User_Authorizatoin_System_Db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [User_Authorizatoin_System_Db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET ARITHABORT OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET  MULTI_USER 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET QUERY_STORE = OFF
GO
USE [User_Authorizatoin_System_Db]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [User_Authorizatoin_System_Db]
GO
/****** Object:  Table [dbo].[Permission_Table]    Script Date: 3/7/2018 5:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission_Table](
	[permission_id] [int] IDENTITY(1,1) NOT NULL,
	[permission_controller] [nvarchar](50) NULL,
	[permission_action] [nvarchar](50) NULL,
 CONSTRAINT [PK_Permission_Table] PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pivot_P_R_Table]    Script Date: 3/7/2018 5:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pivot_P_R_Table](
	[ppr_id] [int] IDENTITY(1,1) NOT NULL,
	[ppr_permission_id] [int] NULL,
	[ppr_role_id] [int] NULL,
 CONSTRAINT [PK_Pivot_P_R_Table] PRIMARY KEY CLUSTERED 
(
	[ppr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pivot_R_U_Table]    Script Date: 3/7/2018 5:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pivot_R_U_Table](
	[pru_id] [int] IDENTITY(1,1) NOT NULL,
	[pru_user_id] [int] NOT NULL,
	[pru_role_id] [int] NOT NULL,
 CONSTRAINT [PK_Pivot_R_U_Table] PRIMARY KEY CLUSTERED 
(
	[pru_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Table]    Script Date: 3/7/2018 5:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Table](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role_Table] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Table]    Script Date: 3/7/2018 5:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Table](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_username] [nvarchar](50) NULL,
	[user_password] [nvarchar](50) NULL,
 CONSTRAINT [PK_User_Table] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Permission_Table] ON 

INSERT [dbo].[Permission_Table] ([permission_id], [permission_controller], [permission_action]) VALUES (1, N'Yetkili', N'PHP')
INSERT [dbo].[Permission_Table] ([permission_id], [permission_controller], [permission_action]) VALUES (2, N'Yetkili', N'HTML')
INSERT [dbo].[Permission_Table] ([permission_id], [permission_controller], [permission_action]) VALUES (3, N'Yetkili', N'CSS')
INSERT [dbo].[Permission_Table] ([permission_id], [permission_controller], [permission_action]) VALUES (4, N'Yetkili', N'JavaScript')
INSERT [dbo].[Permission_Table] ([permission_id], [permission_controller], [permission_action]) VALUES (5, N'Yetkili', N'JSON')
INSERT [dbo].[Permission_Table] ([permission_id], [permission_controller], [permission_action]) VALUES (6, N'Yetkili', N'Laravel')
SET IDENTITY_INSERT [dbo].[Permission_Table] OFF
SET IDENTITY_INSERT [dbo].[Role_Table] ON 

INSERT [dbo].[Role_Table] ([role_id], [role_name]) VALUES (1, N'Admin')
INSERT [dbo].[Role_Table] ([role_id], [role_name]) VALUES (2, N'Editor')
SET IDENTITY_INSERT [dbo].[Role_Table] OFF
SET IDENTITY_INSERT [dbo].[User_Table] ON 

INSERT [dbo].[User_Table] ([user_id], [user_username], [user_password]) VALUES (1, N'orxan', N'orxan')
INSERT [dbo].[User_Table] ([user_id], [user_username], [user_password]) VALUES (2, N'sakit', N'sakit')
INSERT [dbo].[User_Table] ([user_id], [user_username], [user_password]) VALUES (3, N'turan', N'turan')
INSERT [dbo].[User_Table] ([user_id], [user_username], [user_password]) VALUES (4, N'xalid', N'xalid')
SET IDENTITY_INSERT [dbo].[User_Table] OFF
ALTER TABLE [dbo].[Pivot_P_R_Table]  WITH CHECK ADD  CONSTRAINT [FK_Pivot_P_R_Table_Permission_Table] FOREIGN KEY([ppr_permission_id])
REFERENCES [dbo].[Permission_Table] ([permission_id])
GO
ALTER TABLE [dbo].[Pivot_P_R_Table] CHECK CONSTRAINT [FK_Pivot_P_R_Table_Permission_Table]
GO
ALTER TABLE [dbo].[Pivot_P_R_Table]  WITH CHECK ADD  CONSTRAINT [FK_Pivot_P_R_Table_Role_Table] FOREIGN KEY([ppr_role_id])
REFERENCES [dbo].[Role_Table] ([role_id])
GO
ALTER TABLE [dbo].[Pivot_P_R_Table] CHECK CONSTRAINT [FK_Pivot_P_R_Table_Role_Table]
GO
ALTER TABLE [dbo].[Pivot_R_U_Table]  WITH CHECK ADD  CONSTRAINT [FK_Pivot_R_U_Table_Role_Table] FOREIGN KEY([pru_role_id])
REFERENCES [dbo].[Role_Table] ([role_id])
GO
ALTER TABLE [dbo].[Pivot_R_U_Table] CHECK CONSTRAINT [FK_Pivot_R_U_Table_Role_Table]
GO
ALTER TABLE [dbo].[Pivot_R_U_Table]  WITH CHECK ADD  CONSTRAINT [FK_Pivot_R_U_Table_User_Table] FOREIGN KEY([pru_user_id])
REFERENCES [dbo].[User_Table] ([user_id])
GO
ALTER TABLE [dbo].[Pivot_R_U_Table] CHECK CONSTRAINT [FK_Pivot_R_U_Table_User_Table]
GO
USE [master]
GO
ALTER DATABASE [User_Authorizatoin_System_Db] SET  READ_WRITE 
GO
