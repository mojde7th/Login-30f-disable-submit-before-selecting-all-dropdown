USE [master]
GO
/****** Object:  Database [of1]    Script Date: 4/13/2022 12:47:27 PM ******/
CREATE DATABASE [of1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'of1', FILENAME = N'C:\Users\abdolahnejad\of1.mdf' , SIZE = 204800KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'of1_log', FILENAME = N'C:\Users\abdolahnejad\of1_log.ldf' , SIZE = 270336KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [of1] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [of1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [of1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [of1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [of1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [of1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [of1] SET ARITHABORT OFF 
GO
ALTER DATABASE [of1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [of1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [of1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [of1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [of1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [of1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [of1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [of1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [of1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [of1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [of1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [of1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [of1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [of1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [of1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [of1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [of1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [of1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [of1] SET  MULTI_USER 
GO
ALTER DATABASE [of1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [of1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [of1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [of1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [of1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [of1] SET QUERY_STORE = OFF
GO
USE [of1]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [of1]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 4/13/2022 12:47:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SALARY_YYMM] [nchar](4) NULL,
	[REG_NO] [nchar](7) NULL,
	[COMPANY_CODE] [nchar](1) NULL,
	[MG_CODE] [nchar](2) NULL,
	[PYRLCMP_CODE] [nchar](3) NULL,
	[NATIONAL_NO] [nchar](10) NULL,
	[NAME] [nvarchar](30) NULL,
	[FNAME] [nvarchar](30) NULL,
	[FATHER_NAME] [nchar](30) NULL,
	[ID_NO] [nvarchar](50) NULL,
	[SEX_CODE] [nchar](1) NULL,
	[BIRTH_DATE] [nchar](10) NULL,
	[POST_LEVEL] [nchar](3) NULL,
	[EDUCAT_LEVEL] [nchar](3) NULL,
	[EMPLOYM_TYPE] [nchar](3) NULL,
	[GRADE] [nchar](3) NULL,
	[SERVICE_YEAR] [nchar](2) NULL,
	[6626] [nvarchar](50) NULL,
	[6352] [nvarchar](50) NULL,
	[5184] [nvarchar](50) NULL,
	[6373] [nvarchar](50) NULL,
	[6356] [nvarchar](50) NULL,
	[5185] [nvarchar](50) NULL,
	[6357] [nvarchar](50) NULL,
	[6358] [nvarchar](50) NULL,
	[6369] [nvarchar](50) NULL,
	[6359] [nvarchar](50) NULL,
	[6362] [nvarchar](50) NULL,
	[6363] [nvarchar](50) NULL,
	[5181] [nvarchar](50) NULL,
	[6299] [nvarchar](50) NULL,
	[6178] [nvarchar](50) NULL,
	[6177] [nvarchar](50) NULL,
	[6364] [nvarchar](50) NULL,
	[6365] [nvarchar](50) NULL,
	[6353] [nvarchar](50) NULL,
	[5192] [nvarchar](50) NULL,
	[6366] [nvarchar](50) NULL,
	[6262] [nvarchar](50) NULL,
	[6367] [nvarchar](50) NULL,
	[6207] [nvarchar](50) NULL,
	[6206] [nvarchar](50) NULL,
	[6372] [nvarchar](50) NULL,
	[6368] [nvarchar](50) NULL,
	[5207] [nvarchar](50) NULL,
	[Main_NetSalary] [nvarchar](max) NULL,
	[KI_NetSalary] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[month]    Script Date: 4/13/2022 12:47:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[month](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[monthname] [nchar](10) NULL,
	[monthnum] [nchar](2) NULL,
 CONSTRAINT [PK_monthhh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 4/13/2022 12:47:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nchar](10) NULL,
	[Pass] [nchar](10) NULL,
	[CompanyStatus] [nchar](1) NULL,
	[CompanyCode] [nchar](1) NULL,
	[PayrollStatus] [nchar](1) NULL,
	[PayrollCode] [nchar](3) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[year]    Script Date: 4/13/2022 12:47:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[year](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[yearname] [nchar](12) NULL,
	[yearnum] [nchar](2) NULL,
 CONSTRAINT [PK_yearrr] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [SALARY_YYMM], [REG_NO], [COMPANY_CODE], [MG_CODE], [PYRLCMP_CODE], [NATIONAL_NO], [NAME], [FNAME], [FATHER_NAME], [ID_NO], [SEX_CODE], [BIRTH_DATE], [POST_LEVEL], [EDUCAT_LEVEL], [EMPLOYM_TYPE], [GRADE], [SERVICE_YEAR], [6626], [6352], [5184], [6373], [6356], [5185], [6357], [6358], [6369], [6359], [6362], [6363], [5181], [6299], [6178], [6177], [6364], [6365], [6353], [5192], [6366], [6262], [6367], [6207], [6206], [6372], [6368], [5207], [Main_NetSalary], [KI_NetSalary]) VALUES (1, N'0010', N' 574689', N'1', N'38', N'110', N'1671476417', N'ليلا ', N'عادل               ', N'یداله                         ', N'169            ', N'2', N'13560923  ', N'05 ', N'10 ', N'2
', N'1  ', N'21', N'78488800
', N'1075896
', N'0', N'355500', N'4289550
', N'12868650
', N'12000', N'20000', N'32000', N'120000', N'2370000
', N'38588800
', N'2222345', N'434222', N'2138630
', N'0', N'2486800
', N'242441', N'431121', N'48042960
', N'4144444', N'325254', N'1600000
', N'55255', N'5917440
', N'314566', N'278821
', N'19703005
', NULL, NULL)
INSERT [dbo].[Employee] ([Id], [SALARY_YYMM], [REG_NO], [COMPANY_CODE], [MG_CODE], [PYRLCMP_CODE], [NATIONAL_NO], [NAME], [FNAME], [FATHER_NAME], [ID_NO], [SEX_CODE], [BIRTH_DATE], [POST_LEVEL], [EDUCAT_LEVEL], [EMPLOYM_TYPE], [GRADE], [SERVICE_YEAR], [6626], [6352], [5184], [6373], [6356], [5185], [6357], [6358], [6369], [6359], [6362], [6363], [5181], [6299], [6178], [6177], [6364], [6365], [6353], [5192], [6366], [6262], [6367], [6207], [6206], [6372], [6368], [5207], [Main_NetSalary], [KI_NetSalary]) VALUES (2, N'0010', N'574687 ', N'3', N'31', N'098', N'1011476417', N'علی', N'زمانی', N'محمد                          ', N'100', N'1', N'13600810  ', N'04 ', N'9  ', N'1  ', N'3  ', N'17', N'85588800', N'1020896', N'20000', N'40000', N'6800000', N'45000000', N'23000', N'140000', N'400000', N'2658000', N'3457000', N'2233600', N'3339900', N'344434', N'5334545', N'324234365', N'123131', N'42124', N'534324', N'432424', N'54356', N'34421', N'1700000', N'24324235', N'5322567', N'554677', N'1423425', N'5345353', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[month] ON 

INSERT [dbo].[month] ([id], [monthname], [monthnum]) VALUES (1, N'فروردین   ', N'01')
INSERT [dbo].[month] ([id], [monthname], [monthnum]) VALUES (2, N'اردیبهشت  ', N'02')
INSERT [dbo].[month] ([id], [monthname], [monthnum]) VALUES (3, N'خرداد     ', N'03')
INSERT [dbo].[month] ([id], [monthname], [monthnum]) VALUES (4, N'تیر       ', N'04')
INSERT [dbo].[month] ([id], [monthname], [monthnum]) VALUES (5, N'مرداد     ', N'05')
INSERT [dbo].[month] ([id], [monthname], [monthnum]) VALUES (6, N'شهریور    ', N'06')
INSERT [dbo].[month] ([id], [monthname], [monthnum]) VALUES (7, N'مهر       ', N'07')
INSERT [dbo].[month] ([id], [monthname], [monthnum]) VALUES (8, N'آبان      ', N'08')
INSERT [dbo].[month] ([id], [monthname], [monthnum]) VALUES (9, N'آذر       ', N'09')
INSERT [dbo].[month] ([id], [monthname], [monthnum]) VALUES (10, N'دی        ', N'10')
INSERT [dbo].[month] ([id], [monthname], [monthnum]) VALUES (11, N'بهمن      ', N'11')
INSERT [dbo].[month] ([id], [monthname], [monthnum]) VALUES (12, N'اسفند     ', N'12')
SET IDENTITY_INSERT [dbo].[month] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (1, N'pr1020    ', N'1020      ', N'1', N'1', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (2, N'pr1021    ', N'1021      ', N'1', N'2', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (3, N'pr1022    ', N'1022      ', N'1', N'3', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (4, N'pr1023    ', N'1023      ', N'1', N'4', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (5, N'pr1024    ', N'1024      ', N'1', N'5', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (6, N'pr1025    ', N'1025      ', N'1', N'9', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (7, N'pr1026    ', N'1026      ', N'1', N'2', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (8, N'pr1027    ', N'1027      ', N'1', N'3', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (9, N'pr1028    ', N'1028      ', N'1', N'4', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (10, N'pr1029    ', N'1029      ', N'1', N'2', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (11, N'pr1030    ', N'1030      ', N'1', N'0', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (12, N'pr1031    ', N'1031      ', N'0', N'4', N'1', N'098')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (13, N'pr1032    ', N'1032      ', N'0', N'3', N'1', N'543')
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[year] ON 

INSERT [dbo].[year] ([id], [yearname], [yearnum]) VALUES (1, N'1400        ', N'00')
INSERT [dbo].[year] ([id], [yearname], [yearnum]) VALUES (2, N'1399        ', N'99')
INSERT [dbo].[year] ([id], [yearname], [yearnum]) VALUES (3, N'1398        ', N'98')
INSERT [dbo].[year] ([id], [yearname], [yearnum]) VALUES (4, N'1397        ', N'97')
SET IDENTITY_INSERT [dbo].[year] OFF
USE [master]
GO
ALTER DATABASE [of1] SET  READ_WRITE 
GO
