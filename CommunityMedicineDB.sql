USE [master]
GO
/****** Object:  Database [CommunityMedicineDB]    Script Date: 08/02/2015 12:02:24 ******/
CREATE DATABASE [CommunityMedicineDB] ON  PRIMARY 
( NAME = N'CommunityMedicineDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\CommunityMedicineDB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CommunityMedicineDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\CommunityMedicineDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CommunityMedicineDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CommunityMedicineDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CommunityMedicineDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET ARITHABORT OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CommunityMedicineDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CommunityMedicineDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CommunityMedicineDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [CommunityMedicineDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CommunityMedicineDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CommunityMedicineDB] SET  READ_WRITE
GO
ALTER DATABASE [CommunityMedicineDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [CommunityMedicineDB] SET  MULTI_USER
GO
ALTER DATABASE [CommunityMedicineDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CommunityMedicineDB] SET DB_CHAINING OFF
GO
USE [CommunityMedicineDB]
GO
/****** Object:  Table [dbo].[PatientTBL]    Script Date: 08/02/2015 12:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PatientTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VoterId] [varchar](50) NOT NULL,
	[ServiceTimes] [int] NOT NULL,
 CONSTRAINT [PK_PatientTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PatientTBL] ON
INSERT [dbo].[PatientTBL] ([Id], [VoterId], [ServiceTimes]) VALUES (9, N'5644309456813', 1)
INSERT [dbo].[PatientTBL] ([Id], [VoterId], [ServiceTimes]) VALUES (10, N'9509623450915', 1)
SET IDENTITY_INSERT [dbo].[PatientTBL] OFF
/****** Object:  Table [dbo].[ObservationTBL]    Script Date: 08/02/2015 12:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ObservationTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Observation] [varchar](max) NOT NULL,
	[Date] [varchar](50) NOT NULL,
	[PatientId] [int] NOT NULL,
	[CenterId] [int] NOT NULL,
	[DoctorId] [int] NOT NULL,
 CONSTRAINT [PK_ObservationTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ObservationTBL] ON
INSERT [dbo].[ObservationTBL] ([Id], [Observation], [Date], [PatientId], [CenterId], [DoctorId]) VALUES (11, N'', N'2015-8-2', 9, 18, 14)
INSERT [dbo].[ObservationTBL] ([Id], [Observation], [Date], [PatientId], [CenterId], [DoctorId]) VALUES (12, N'', N'2015-8-3', 10, 18, 14)
SET IDENTITY_INSERT [dbo].[ObservationTBL] OFF
/****** Object:  Table [dbo].[MedicineTBL]    Script Date: 08/02/2015 12:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MedicineTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameOfMedicine] [varchar](max) NOT NULL,
 CONSTRAINT [PK_MedicineTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MedicineTBL] ON
INSERT [dbo].[MedicineTBL] ([Id], [NameOfMedicine]) VALUES (4, N'Alka-Seltzer Plus Cold 500mg')
INSERT [dbo].[MedicineTBL] ([Id], [NameOfMedicine]) VALUES (5, N'Banophen 250mg')
INSERT [dbo].[MedicineTBL] ([Id], [NameOfMedicine]) VALUES (6, N'Advil 500mg')
INSERT [dbo].[MedicineTBL] ([Id], [NameOfMedicine]) VALUES (7, N'Ultram 200mg')
INSERT [dbo].[MedicineTBL] ([Id], [NameOfMedicine]) VALUES (8, N'ORSaline-N 10g')
INSERT [dbo].[MedicineTBL] ([Id], [NameOfMedicine]) VALUES (9, N'Napa 500mg')
INSERT [dbo].[MedicineTBL] ([Id], [NameOfMedicine]) VALUES (10, N'Napa-Extra 500mg')
INSERT [dbo].[MedicineTBL] ([Id], [NameOfMedicine]) VALUES (11, N'Seclo 20mg')
INSERT [dbo].[MedicineTBL] ([Id], [NameOfMedicine]) VALUES (12, N'Ace 500mg')
INSERT [dbo].[MedicineTBL] ([Id], [NameOfMedicine]) VALUES (13, N'Tuska 20ml')
INSERT [dbo].[MedicineTBL] ([Id], [NameOfMedicine]) VALUES (14, N'Albandajol 200mg')
SET IDENTITY_INSERT [dbo].[MedicineTBL] OFF
/****** Object:  Table [dbo].[DoctorTBL]    Script Date: 08/02/2015 12:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoctorTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DoctorName] [varchar](250) NOT NULL,
	[Degree] [varchar](450) NOT NULL,
	[Specialization] [varchar](550) NOT NULL,
	[CenterId] [int] NOT NULL,
 CONSTRAINT [PK_DoctorTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DoctorTBL] ON
INSERT [dbo].[DoctorTBL] ([Id], [DoctorName], [Degree], [Specialization], [CenterId]) VALUES (14, N'Dr. Nazrul Islam', N'MBBS', N'Medicine Spisealize', 18)
SET IDENTITY_INSERT [dbo].[DoctorTBL] OFF
/****** Object:  Table [dbo].[DistrictTBL]    Script Date: 08/02/2015 12:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DistrictTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DistrictName] [varchar](150) NOT NULL,
	[Population] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DistrictTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DistrictTBL] ON
INSERT [dbo].[DistrictTBL] ([Id], [DistrictName], [Population]) VALUES (1, N'Rangpur', CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[DistrictTBL] ([Id], [DistrictName], [Population]) VALUES (2, N'Dhaka', CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[DistrictTBL] ([Id], [DistrictName], [Population]) VALUES (3, N'Khulna', CAST(100200 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[DistrictTBL] OFF
/****** Object:  Table [dbo].[DiseaseTBL]    Script Date: 08/02/2015 12:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiseaseTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Description] [text] NOT NULL,
	[TreatmentProcedure] [text] NOT NULL,
 CONSTRAINT [PK_DiseaseTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DiseaseTBL] ON
INSERT [dbo].[DiseaseTBL] ([Id], [Name], [Description], [TreatmentProcedure]) VALUES (3, N'Colds & Flu', N'Symptoms of a viral infection involving the upper respiratory tract and characterized by congestion of the nasal mucous membrane, watery nasal rhinorrhea, and general malaise, with a duration of 3–5 days.', N'Drugs and medications are in some way related to, or used in the treatment of Cold Symptoms.')
INSERT [dbo].[DiseaseTBL] ([Id], [Name], [Description], [TreatmentProcedure]) VALUES (4, N'Pain', N'An unpleasant sensory and emotional experience associated with actual or potential tissue damage or described in terms of such damage.', N'Drugs and medications are in some way related to, or used in the treatment of Pain.')
INSERT [dbo].[DiseaseTBL] ([Id], [Name], [Description], [TreatmentProcedure]) VALUES (5, N'Diarrhea', N'Diarrhea is defined as loose, watery, and frequent stools.', N'The expertise, skill, knowledge and judgment of healthcare practitioners.')
INSERT [dbo].[DiseaseTBL] ([Id], [Name], [Description], [TreatmentProcedure]) VALUES (6, N'Dengue', N'Dengue has emerged as a worldwide problem only since the 1950s. Although dengue rarely occurs in the continental United States, it is endemic in Puerto Rico and in many popular tourist destinations in Latin America, Southeast Asia and the Pacific islands', N'Learn how to recognize and diagnose, assess and manage patients with mild to severe dengue.')
INSERT [dbo].[DiseaseTBL] ([Id], [Name], [Description], [TreatmentProcedure]) VALUES (7, N'Food Poisoning', N'More than 250 different foodborne diseases have been described. Most of these diseases are infections, caused by a variety of bacteria, viruses, and parasites that can be foodborne.', N'Many foodborne microbes are present in healthy animals (usually in their intestines) raised for food. Meat and poultry carcasses can become contaminated during slaughter by contact with small amounts of intestinal contents.')
INSERT [dbo].[DiseaseTBL] ([Id], [Name], [Description], [TreatmentProcedure]) VALUES (8, N'Influenza (Flu)', N' H3N2 viruses were most common overall during this season, however, there was a wave of influenza B activity starting in early March.', N'This Long-Term Care Employers toolkit is being launched in collaboration with the HHS National Vaccine Program Office, as a guide to increasing flu vaccination among healthcare personnel in long-term care settings.')
SET IDENTITY_INSERT [dbo].[DiseaseTBL] OFF
/****** Object:  Table [dbo].[CenterTBL]    Script Date: 08/02/2015 12:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CenterTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CenterName] [varchar](250) NOT NULL,
	[ThanaId] [int] NOT NULL,
	[CenterCode] [varchar](450) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CenterTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CenterTBL] ON
INSERT [dbo].[CenterTBL] ([Id], [CenterName], [ThanaId], [CenterCode], [Password]) VALUES (18, N'Pirgasa Community Health Center', 5, N'Pirgasa-CEN-1', N'5Yomh3xdACF7rs1KnOiaAnLeVcgqmT25aGwm0fd7YgVeGhZSJnsPmAJoc2y776LXngNL+0Wccr6D/thEQVSg7w==')
SET IDENTITY_INSERT [dbo].[CenterTBL] OFF
/****** Object:  Table [dbo].[CenterPatientRelationTBL]    Script Date: 08/02/2015 12:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CenterPatientRelationTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NOT NULL,
	[CenterId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
 CONSTRAINT [PK_CenterPatientRelationTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CenterPatientRelationTBL] ON
INSERT [dbo].[CenterPatientRelationTBL] ([Id], [PatientId], [CenterId], [DistrictId]) VALUES (23, 9, 18, 1)
INSERT [dbo].[CenterPatientRelationTBL] ([Id], [PatientId], [CenterId], [DistrictId]) VALUES (24, 10, 18, 1)
SET IDENTITY_INSERT [dbo].[CenterPatientRelationTBL] OFF
/****** Object:  Table [dbo].[CenterMedicineRelationTBL]    Script Date: 08/02/2015 12:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CenterMedicineRelationTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CenterId] [int] NOT NULL,
	[MedicineId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_CenterMedicineRelationTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CenterMedicineRelationTBL] ON
INSERT [dbo].[CenterMedicineRelationTBL] ([Id], [CenterId], [MedicineId], [Quantity]) VALUES (30, 18, 4, 190)
INSERT [dbo].[CenterMedicineRelationTBL] ([Id], [CenterId], [MedicineId], [Quantity]) VALUES (31, 18, 8, 480)
INSERT [dbo].[CenterMedicineRelationTBL] ([Id], [CenterId], [MedicineId], [Quantity]) VALUES (32, 18, 10, 250)
SET IDENTITY_INSERT [dbo].[CenterMedicineRelationTBL] OFF
/****** Object:  Table [dbo].[TreatmentTBL]    Script Date: 08/02/2015 12:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TreatmentTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseId] [int] NOT NULL,
	[MedicineId] [int] NOT NULL,
	[Dose] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Note] [varchar](150) NOT NULL,
	[ObservationId] [int] NOT NULL,
	[TakenTime] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TreatmentTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TreatmentTBL] ON
INSERT [dbo].[TreatmentTBL] ([Id], [DiseaseId], [MedicineId], [Dose], [Quantity], [Note], [ObservationId], [TakenTime]) VALUES (11, 8, 10, N'1+1+1', 20, N'Continue', 11, N'After Meal')
INSERT [dbo].[TreatmentTBL] ([Id], [DiseaseId], [MedicineId], [Dose], [Quantity], [Note], [ObservationId], [TakenTime]) VALUES (12, 3, 4, N'1+0+0', 10, N'Continue', 11, N'After Meal')
INSERT [dbo].[TreatmentTBL] ([Id], [DiseaseId], [MedicineId], [Dose], [Quantity], [Note], [ObservationId], [TakenTime]) VALUES (13, 3, 10, N'1+1+1', 20, N'Continue', 12, N'After Meal')
INSERT [dbo].[TreatmentTBL] ([Id], [DiseaseId], [MedicineId], [Dose], [Quantity], [Note], [ObservationId], [TakenTime]) VALUES (14, 5, 8, N'1+1+1', 20, N'Continue', 12, N'After Meal')
SET IDENTITY_INSERT [dbo].[TreatmentTBL] OFF
/****** Object:  Table [dbo].[ThanaTBL]    Script Date: 08/02/2015 12:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanaTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ThanaName] [varchar](150) NOT NULL,
	[DistrictId] [int] NOT NULL,
 CONSTRAINT [PK_ThanaTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ThanaTBL] ON
INSERT [dbo].[ThanaTBL] ([Id], [ThanaName], [DistrictId]) VALUES (1, N'Pirgonj', 1)
INSERT [dbo].[ThanaTBL] ([Id], [ThanaName], [DistrictId]) VALUES (2, N'Mithapukur', 1)
INSERT [dbo].[ThanaTBL] ([Id], [ThanaName], [DistrictId]) VALUES (3, N'Dhanmondi', 2)
INSERT [dbo].[ThanaTBL] ([Id], [ThanaName], [DistrictId]) VALUES (4, N'Mirpur', 2)
INSERT [dbo].[ThanaTBL] ([Id], [ThanaName], [DistrictId]) VALUES (5, N'Pirgasa', 1)
SET IDENTITY_INSERT [dbo].[ThanaTBL] OFF
/****** Object:  ForeignKey [FK_ThanaTBL_DistrictTBL]    Script Date: 08/02/2015 12:02:24 ******/
ALTER TABLE [dbo].[ThanaTBL]  WITH CHECK ADD  CONSTRAINT [FK_ThanaTBL_DistrictTBL] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[DistrictTBL] ([Id])
GO
ALTER TABLE [dbo].[ThanaTBL] CHECK CONSTRAINT [FK_ThanaTBL_DistrictTBL]
GO
