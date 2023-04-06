USE [DB_CollageManagement]
GO
/****** Object:  Table [dbo].[tbl_AdmissionMaster]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_AdmissionMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Startdate] [varchar](50) NULL,
	[Enddate] [varchar](50) NULL,
	[Daylimit] [int] NULL,
	[Alllimit] [int] NULL,
	[Entrydate] [datetime] NULL,
	[Modifydate] [datetime] NULL,
	[IsOpen] [bit] NULL,
	[Program] [int] NULL,
	[Branch] [int] NULL,
	[Year] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Assignment]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Assignment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[Year] [int] NULL,
	[SubjectId] [int] NULL,
	[Assignment] [varchar](100) NULL,
	[EntryDate] [datetime] NULL,
	[Modifydate] [datetime] NULL,
	[Program] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_AssignSubject]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_AssignSubject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[Year] [int] NULL,
	[SubjectId] [int] NULL,
	[TeacherId] [int] NULL,
	[Entrydate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[ProgramId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_BatchMaster]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_BatchMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FromYear] [varchar](10) NULL,
	[ToYear] [varchar](10) NULL,
	[EntryDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Branch]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Branch](
	[BranchId] [int] IDENTITY(1000,10) NOT NULL,
	[Branch_Name] [varchar](100) NULL,
	[Branch_Code] [varchar](100) NULL,
	[EntryDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_FeesHead]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_FeesHead](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Branch] [varchar](100) NULL,
	[Branch_Code] [varchar](100) NULL,
	[_Year] [varchar](100) NULL,
	[EntryBy] [varchar](100) NULL,
	[EntryDate] [datetime] NULL,
	[Modifydate] [datetime] NULL,
	[Amount] [varchar](100) NULL,
	[Program] [int] NULL,
	[FeesType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_FeesSubmissionModes]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_FeesSubmissionModes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Mode] [varchar](120) NULL,
	[EntryDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Feessubmition]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Feessubmition](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](100) NULL,
	[FatherName] [varchar](100) NULL,
	[Branch] [varchar](100) NULL,
	[_Year] [varchar](100) NULL,
	[Amount] [varchar](100) NULL,
	[FeesSubmitionMode] [varchar](100) NULL,
	[EntryDate] [datetime] NULL,
	[Program] [int] NULL,
	[FeesType] [int] NULL,
	[CheckNumber] [bigint] NULL,
	[TransctionID] [int] NULL,
	[Enrollment] [varchar](100) NULL,
	[FeesReceiptNo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_FeessubmitionSummry]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_FeessubmitionSummry](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnrollmentNo] [varchar](100) NULL,
	[ReceiptNo] [bigint] NULL,
	[Mode] [int] NULL,
	[TotalbranchFees] [numeric](10, 2) NULL,
	[TotalFees] [numeric](10, 2) NULL,
	[SubmitedFees] [numeric](10, 2) NULL,
	[DueFees] [numeric](10, 2) NULL,
	[Entrydate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_FeesType]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_FeesType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Program] [int] NOT NULL,
	[Branch] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[FeesType] [varchar](100) NULL,
	[EntryDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_login]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_login](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[UserId] [varchar](100) NULL,
	[LoginTypeId] [int] NULL,
	[Password] [varchar](100) NULL,
	[EntryDate] [datetime] NULL,
	[_UId] [int] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MasterRequestMode]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MasterRequestMode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ResuestMode] [varchar](100) NULL,
	[Entrydate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MasterRole]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MasterRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NULL,
	[Role] [varchar](50) NULL,
	[EntryDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Notifications]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Notifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[Discreption] [varchar](max) NULL,
	[EntryDate] [datetime] NULL,
	[EntryBy] [int] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [int] NULL,
	[IsStaff] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Program]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Program](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Program] [varchar](50) NULL,
	[ProgramType] [varchar](50) NULL,
	[ProgramDuration] [varchar](50) NULL,
	[Entryby] [int] NULL,
	[EntryDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ProgramBranchMapping]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ProgramBranchMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProgramId] [int] NULL,
	[BranchId] [int] NULL,
	[EntryDate] [datetime] NULL,
	[Modifydate] [datetime] NULL,
	[EntryBy] [int] NULL,
	[ModifyBy] [int] NULL,
	[BatchId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ProjectReport]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ProjectReport](
	[ProjectId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](100) NULL,
	[Branch] [varchar](100) NULL,
	[_Year] [varchar](100) NULL,
	[Enrollment] [varchar](100) NULL,
	[ProjectTitle] [varchar](100) NULL,
	[Techonology] [varchar](100) NULL,
	[Entrydate] [varchar](100) NULL,
	[Program] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_RegistrationMaster]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_RegistrationMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Startdate] [varchar](50) NULL,
	[Enddate] [varchar](50) NULL,
	[Daylimit] [int] NULL,
	[Alllimit] [int] NULL,
	[Entrydate] [datetime] NULL,
	[Modifydate] [datetime] NULL,
	[IsOpen] [bit] NULL,
	[Program] [int] NULL,
	[Branch] [int] NULL,
	[Year] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_session]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_session](
	[SessionId] [int] IDENTITY(1,1) NOT NULL,
	[Sessionkey] [varchar](100) NULL,
	[LoginID] [int] NULL,
	[RequestMode] [int] NULL,
	[EntryDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_student]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Fname] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Mobile] [varchar](20) NULL,
	[Branch] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[Gender] [varchar](50) NULL,
	[Entrydate] [datetime] NULL,
	[Group_Name] [varchar](100) NULL,
	[Entrolment_No] [varchar](100) NULL,
	[DOB] [varchar](50) NULL,
	[FatherOccupation] [varchar](150) NULL,
	[MotherName] [varchar](150) NULL,
	[Program] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Student_Admission]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Student_Admission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Fname] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Mobile] [varchar](20) NULL,
	[Branch] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[Gender] [varchar](50) NULL,
	[Admissiondate] [datetime] NULL,
	[Group_Name] [varchar](100) NULL,
	[DOB] [varchar](50) NULL,
	[EntrollmentNo] [varchar](100) NULL,
	[Fess_Status] [varchar](100) NULL,
	[_Year] [varchar](100) NULL,
	[Program] [int] NULL,
	[MotherName] [varchar](100) NULL,
	[FatherOccupation] [varchar](150) NULL,
	[Religion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_StudentAttandance]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_StudentAttandance](
	[EnrollmentNo] [varchar](50) NULL,
	[IsPresent] [bit] NULL,
	[IsAbsent] [bit] NULL,
	[IsLate] [bit] NULL,
	[IsHalfDay] [bit] NULL,
	[Note] [varchar](250) NULL,
	[EntryDate] [datetime] NULL,
	[EntryBy] [int] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [datetime] NULL,
	[AttandanceDate] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Studentfine]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Studentfine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EnrollmentNumber] [varchar](20) NULL,
	[FineAmount] [varchar](20) NULL,
	[FineResion] [varchar](100) NULL,
	[EntryDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[FineStatus] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_StudentLedger]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_StudentLedger](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnrollmentNo] [varchar](100) NULL,
	[TotalFees] [numeric](18, 9) NULL,
	[TotalSubmitedFees] [numeric](18, 9) NULL,
	[Totalduefees] [numeric](18, 9) NULL,
	[EntryDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[Mode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SubjectMaster]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SubjectMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[_Year] [varchar](100) NULL,
	[SubjectName] [varchar](100) NULL,
	[SubjectCode] [varchar](100) NULL,
	[SubjectType] [varchar](100) NULL,
	[TheoryMarks] [varchar](100) NULL,
	[PracticalMarks] [varchar](100) NULL,
	[EntryDate] [datetime] NULL,
	[Modifydate] [datetime] NULL,
	[BranchId] [int] NULL,
	[Program] [int] NULL,
	[PassingMarks] [int] NULL,
	[IsPrectical] [bit] NULL,
	[Iswritten] [bit] NULL,
	[PrecticalPassingMarks] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Syllabus]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Syllabus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BranchID] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
	[_Year] [int] NOT NULL,
	[_Path] [varchar](500) NULL,
	[EntryDate] [datetime] NULL,
	[EntryBy] [int] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [int] NULL,
	[Program] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Teacher]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Teacher](
	[TeacherId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Fname] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Mobile] [varchar](100) NULL,
	[DOB] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[salary] [varchar](100) NULL,
	[Qualification] [varchar](100) NULL,
	[EntryDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TimeTable]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TimeTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Program] [int] NULL,
	[Branch] [int] NULL,
	[Year] [int] NULL,
	[Subject] [int] NULL,
	[Teacher] [int] NULL,
	[TimeFrom] [varchar](50) NULL,
	[TimeTo] [varchar](50) NULL,
	[RoomNo] [varchar](50) NULL,
	[EntryDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[Day] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_VideoLectures]    Script Date: 06-04-2023 18:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_VideoLectures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[SubjectId] [int] NULL,
	[Year] [int] NULL,
	[EntryBy] [int] NULL,
	[EntryDate] [datetime] NULL,
	[ModifyBy] [int] NULL,
	[ModifyDate] [datetime] NULL,
	[VideoUrl] [varchar](100) NULL,
	[Program] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_AdmissionMaster] ON 
GO
INSERT [dbo].[tbl_AdmissionMaster] ([ID], [Startdate], [Enddate], [Daylimit], [Alllimit], [Entrydate], [Modifydate], [IsOpen], [Program], [Branch], [Year]) VALUES (1, N'2023-04-01', N'2023-04-28', 12, 500, CAST(N'2023-04-03T12:46:54.730' AS DateTime), CAST(N'2023-04-03T12:46:54.730' AS DateTime), 1, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_AdmissionMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Assignment] ON 
GO
INSERT [dbo].[tbl_Assignment] ([Id], [BranchId], [Year], [SubjectId], [Assignment], [EntryDate], [Modifydate], [Program]) VALUES (1, 1040, 1, 6, N'Testing', CAST(N'2023-03-27T15:52:37.330' AS DateTime), CAST(N'2023-03-27T16:32:40.633' AS DateTime), 7)
GO
INSERT [dbo].[tbl_Assignment] ([Id], [BranchId], [Year], [SubjectId], [Assignment], [EntryDate], [Modifydate], [Program]) VALUES (2, 1010, 1, 7, N'fgfdgfdg', CAST(N'2023-03-27T16:33:33.347' AS DateTime), NULL, 6)
GO
SET IDENTITY_INSERT [dbo].[tbl_Assignment] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_AssignSubject] ON 
GO
INSERT [dbo].[tbl_AssignSubject] ([Id], [BranchId], [Year], [SubjectId], [TeacherId], [Entrydate], [ModifyDate], [ProgramId]) VALUES (2, 1000, 2, 1, 1, CAST(N'2023-01-10T18:02:56.873' AS DateTime), CAST(N'2023-01-20T10:21:49.763' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_AssignSubject] ([Id], [BranchId], [Year], [SubjectId], [TeacherId], [Entrydate], [ModifyDate], [ProgramId]) VALUES (7, 1040, 1, 6, 1, CAST(N'2023-03-27T15:31:28.250' AS DateTime), CAST(N'2023-03-27T15:32:21.890' AS DateTime), 7)
GO
SET IDENTITY_INSERT [dbo].[tbl_AssignSubject] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_BatchMaster] ON 
GO
INSERT [dbo].[tbl_BatchMaster] ([Id], [FromYear], [ToYear], [EntryDate], [ModifyDate]) VALUES (3, N'2022', N'2026', CAST(N'2023-01-14T13:44:50.100' AS DateTime), CAST(N'2023-01-14T13:51:30.743' AS DateTime))
GO
INSERT [dbo].[tbl_BatchMaster] ([Id], [FromYear], [ToYear], [EntryDate], [ModifyDate]) VALUES (4, N'2023', N'2028', CAST(N'2023-01-20T16:07:47.137' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_BatchMaster] ([Id], [FromYear], [ToYear], [EntryDate], [ModifyDate]) VALUES (5, N'2023', N'2027', CAST(N'2023-01-31T14:42:21.863' AS DateTime), CAST(N'2023-03-27T13:25:32.783' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_BatchMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Branch] ON 
GO
INSERT [dbo].[tbl_Branch] ([BranchId], [Branch_Name], [Branch_Code], [EntryDate], [ModifyDate]) VALUES (1000, N'Test', N'102', CAST(N'2022-12-24T15:43:17.940' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_Branch] ([BranchId], [Branch_Name], [Branch_Code], [EntryDate], [ModifyDate]) VALUES (1010, N'C.S', N'2356', CAST(N'2022-12-29T17:23:21.140' AS DateTime), CAST(N'2023-04-06T10:12:35.450' AS DateTime))
GO
INSERT [dbo].[tbl_Branch] ([BranchId], [Branch_Name], [Branch_Code], [EntryDate], [ModifyDate]) VALUES (1020, N'Machanical', N'2356', CAST(N'2023-01-07T12:38:24.043' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_Branch] ([BranchId], [Branch_Name], [Branch_Code], [EntryDate], [ModifyDate]) VALUES (1040, N'B.A(History)', N'2356', CAST(N'2023-03-27T13:29:24.327' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_Branch] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_FeesHead] ON 
GO
INSERT [dbo].[tbl_FeesHead] ([Id], [Branch], [Branch_Code], [_Year], [EntryBy], [EntryDate], [Modifydate], [Amount], [Program], [FeesType]) VALUES (1, N'1010', N'', N'1', N'', CAST(N'2023-01-24T17:27:41.567' AS DateTime), NULL, N'230', 6, 5)
GO
INSERT [dbo].[tbl_FeesHead] ([Id], [Branch], [Branch_Code], [_Year], [EntryBy], [EntryDate], [Modifydate], [Amount], [Program], [FeesType]) VALUES (2, N'1010', N'', N'1', N'', CAST(N'2023-01-24T17:30:38.080' AS DateTime), CAST(N'2023-01-27T13:39:22.787' AS DateTime), N'24000', 6, 4)
GO
INSERT [dbo].[tbl_FeesHead] ([Id], [Branch], [Branch_Code], [_Year], [EntryBy], [EntryDate], [Modifydate], [Amount], [Program], [FeesType]) VALUES (3, N'1010', N'', N'1', N'', CAST(N'2023-01-24T19:02:24.720' AS DateTime), CAST(N'2023-01-31T18:17:05.330' AS DateTime), N'45000', 6, 2)
GO
INSERT [dbo].[tbl_FeesHead] ([Id], [Branch], [Branch_Code], [_Year], [EntryBy], [EntryDate], [Modifydate], [Amount], [Program], [FeesType]) VALUES (5, N'1020', N'', N'1', N'', CAST(N'2023-01-27T17:01:26.617' AS DateTime), NULL, N'500', 4, 7)
GO
INSERT [dbo].[tbl_FeesHead] ([Id], [Branch], [Branch_Code], [_Year], [EntryBy], [EntryDate], [Modifydate], [Amount], [Program], [FeesType]) VALUES (6, N'1010', N'', N'1', N'', CAST(N'2023-01-28T12:58:34.560' AS DateTime), NULL, N'150000', 3, 8)
GO
INSERT [dbo].[tbl_FeesHead] ([Id], [Branch], [Branch_Code], [_Year], [EntryBy], [EntryDate], [Modifydate], [Amount], [Program], [FeesType]) VALUES (7, N'1010', N'', N'1', N'', CAST(N'2023-01-28T17:08:02.410' AS DateTime), NULL, N'150000', 5, 11)
GO
INSERT [dbo].[tbl_FeesHead] ([Id], [Branch], [Branch_Code], [_Year], [EntryBy], [EntryDate], [Modifydate], [Amount], [Program], [FeesType]) VALUES (8, N'1020', N'', N'1', N'', CAST(N'2023-01-31T18:17:19.087' AS DateTime), NULL, N'250', 6, 12)
GO
INSERT [dbo].[tbl_FeesHead] ([Id], [Branch], [Branch_Code], [_Year], [EntryBy], [EntryDate], [Modifydate], [Amount], [Program], [FeesType]) VALUES (9, N'1020', N'', N'1', N'', CAST(N'2023-01-31T18:17:33.290' AS DateTime), NULL, N'210', 6, 13)
GO
INSERT [dbo].[tbl_FeesHead] ([Id], [Branch], [Branch_Code], [_Year], [EntryBy], [EntryDate], [Modifydate], [Amount], [Program], [FeesType]) VALUES (10, N'1020', N'', N'1', N'', CAST(N'2023-01-31T18:18:14.540' AS DateTime), NULL, N'45000', 6, 2)
GO
SET IDENTITY_INSERT [dbo].[tbl_FeesHead] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_FeesSubmissionModes] ON 
GO
INSERT [dbo].[tbl_FeesSubmissionModes] ([ID], [Mode], [EntryDate]) VALUES (1, N'Cash Payment', CAST(N'2023-01-28T13:42:04.787' AS DateTime))
GO
INSERT [dbo].[tbl_FeesSubmissionModes] ([ID], [Mode], [EntryDate]) VALUES (2, N'Check Payment', CAST(N'2023-01-28T13:42:16.577' AS DateTime))
GO
INSERT [dbo].[tbl_FeesSubmissionModes] ([ID], [Mode], [EntryDate]) VALUES (3, N'Online Payment', CAST(N'2023-01-28T13:42:26.820' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_FeesSubmissionModes] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Feessubmition] ON 
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [StudentName], [FatherName], [Branch], [_Year], [Amount], [FeesSubmitionMode], [EntryDate], [Program], [FeesType], [CheckNumber], [TransctionID], [Enrollment], [FeesReceiptNo]) VALUES (1, N'Raj', N'Prakash Mishra', N'1020', N'1', N'5461', N'1', CAST(N'2023-02-02T17:17:02.780' AS DateTime), 6, 0, NULL, NULL, N'E202300001', N'202300000000')
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [StudentName], [FatherName], [Branch], [_Year], [Amount], [FeesSubmitionMode], [EntryDate], [Program], [FeesType], [CheckNumber], [TransctionID], [Enrollment], [FeesReceiptNo]) VALUES (2, N'Raj', N'Prakash Mishra', N'1020', N'1', N'9000', N'1', CAST(N'2023-02-02T17:34:55.280' AS DateTime), 6, 0, NULL, NULL, N'E202300001', N'202300000001')
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [StudentName], [FatherName], [Branch], [_Year], [Amount], [FeesSubmitionMode], [EntryDate], [Program], [FeesType], [CheckNumber], [TransctionID], [Enrollment], [FeesReceiptNo]) VALUES (3, N'Raj', N'Prakash Mishra', N'1020', N'1', N'15000', N'1', CAST(N'2023-03-13T14:44:19.303' AS DateTime), 6, 0, NULL, NULL, N'E202300001', N'202300000001')
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [StudentName], [FatherName], [Branch], [_Year], [Amount], [FeesSubmitionMode], [EntryDate], [Program], [FeesType], [CheckNumber], [TransctionID], [Enrollment], [FeesReceiptNo]) VALUES (4, N'Raj', N'Prakash Mishra', N'1020', N'1', N'999.03', N'1', CAST(N'2023-03-13T14:48:17.310' AS DateTime), 6, 0, NULL, NULL, N'E202300001', N'202300000001')
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [StudentName], [FatherName], [Branch], [_Year], [Amount], [FeesSubmitionMode], [EntryDate], [Program], [FeesType], [CheckNumber], [TransctionID], [Enrollment], [FeesReceiptNo]) VALUES (5, N'Raj', N'Prakash Mishra', N'1020', N'1', N'14999.97', N'1', CAST(N'2023-03-13T14:49:45.790' AS DateTime), 6, 0, NULL, NULL, N'E202300001', N'202300000001')
GO
SET IDENTITY_INSERT [dbo].[tbl_Feessubmition] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_FeessubmitionSummry] ON 
GO
INSERT [dbo].[tbl_FeessubmitionSummry] ([ID], [EnrollmentNo], [ReceiptNo], [Mode], [TotalbranchFees], [TotalFees], [SubmitedFees], [DueFees], [Entrydate]) VALUES (1, N'E202300001', 202300000000, 1, CAST(45460.00 AS Numeric(10, 2)), CAST(0.00 AS Numeric(10, 2)), CAST(45460.00 AS Numeric(10, 2)), CAST(0.00 AS Numeric(10, 2)), CAST(N'2023-02-02T17:17:02.780' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_FeessubmitionSummry] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_FeesType] ON 
GO
INSERT [dbo].[tbl_FeesType] ([Id], [Program], [Branch], [Year], [FeesType], [EntryDate], [ModifyDate]) VALUES (2, 6, 1020, 1, N'Admission Fees', CAST(N'2023-01-21T17:40:08.690' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_FeesType] ([Id], [Program], [Branch], [Year], [FeesType], [EntryDate], [ModifyDate]) VALUES (3, 6, 1010, 1, N'Computer Fees', CAST(N'2023-01-21T17:42:43.297' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_FeesType] ([Id], [Program], [Branch], [Year], [FeesType], [EntryDate], [ModifyDate]) VALUES (4, 6, 1010, 1, N'Admission Fees', CAST(N'2023-01-21T17:43:04.490' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_FeesType] ([Id], [Program], [Branch], [Year], [FeesType], [EntryDate], [ModifyDate]) VALUES (5, 6, 1010, 1, N'Registration Fees', CAST(N'2023-01-21T17:43:25.573' AS DateTime), CAST(N'2023-01-24T15:10:07.690' AS DateTime))
GO
INSERT [dbo].[tbl_FeesType] ([Id], [Program], [Branch], [Year], [FeesType], [EntryDate], [ModifyDate]) VALUES (6, 5, 1010, 1, N'Sport Fees', CAST(N'2023-01-21T17:43:52.063' AS DateTime), CAST(N'2023-01-31T14:39:38.867' AS DateTime))
GO
INSERT [dbo].[tbl_FeesType] ([Id], [Program], [Branch], [Year], [FeesType], [EntryDate], [ModifyDate]) VALUES (7, 4, 1020, 1, N'Tutition Fees', CAST(N'2023-01-27T16:59:04.880' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_FeesType] ([Id], [Program], [Branch], [Year], [FeesType], [EntryDate], [ModifyDate]) VALUES (8, 3, 1010, 1, N'Admission Fees', CAST(N'2023-01-28T12:52:08.670' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_FeesType] ([Id], [Program], [Branch], [Year], [FeesType], [EntryDate], [ModifyDate]) VALUES (11, 5, 1010, 1, N'Admission Fees', CAST(N'2023-01-28T17:07:43.710' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_FeesType] ([Id], [Program], [Branch], [Year], [FeesType], [EntryDate], [ModifyDate]) VALUES (12, 6, 1020, 1, N'Registration Fees ', CAST(N'2023-01-31T17:42:31.420' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_FeesType] ([Id], [Program], [Branch], [Year], [FeesType], [EntryDate], [ModifyDate]) VALUES (13, 6, 1020, 1, N'Sport Fees', CAST(N'2023-01-31T17:42:47.160' AS DateTime), CAST(N'2023-02-01T11:43:30.463' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_FeesType] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_login] ON 
GO
INSERT [dbo].[tbl_login] ([ID], [Name], [UserId], [LoginTypeId], [Password], [EntryDate], [_UId], [IsActive]) VALUES (1, N'Admin', N'amarnag702@gmail.com', 1, N'Admin@123', CAST(N'2022-12-24T15:28:33.587' AS DateTime), 1, 1)
GO
INSERT [dbo].[tbl_login] ([ID], [Name], [UserId], [LoginTypeId], [Password], [EntryDate], [_UId], [IsActive]) VALUES (3, N'Hemant', N'E202300000', 3, N'6390749256', CAST(N'2023-01-06T16:47:27.900' AS DateTime), 2, 0)
GO
INSERT [dbo].[tbl_login] ([ID], [Name], [UserId], [LoginTypeId], [Password], [EntryDate], [_UId], [IsActive]) VALUES (11, N'Raj', N'E202300001', 3, N'8957180204', CAST(N'2023-01-31T18:21:56.720' AS DateTime), 4, 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_login] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_MasterRequestMode] ON 
GO
INSERT [dbo].[tbl_MasterRequestMode] ([Id], [ResuestMode], [Entrydate]) VALUES (1, N'Web', CAST(N'2023-02-21T15:01:00.870' AS DateTime))
GO
INSERT [dbo].[tbl_MasterRequestMode] ([Id], [ResuestMode], [Entrydate]) VALUES (2, N'App', CAST(N'2023-02-21T15:01:07.057' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_MasterRequestMode] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_MasterRole] ON 
GO
INSERT [dbo].[tbl_MasterRole] ([Id], [RoleID], [Role], [EntryDate]) VALUES (1, 1, N'Adminestrator', CAST(N'2022-12-24T16:29:38.020' AS DateTime))
GO
INSERT [dbo].[tbl_MasterRole] ([Id], [RoleID], [Role], [EntryDate]) VALUES (2, 2, N'Teacher', CAST(N'2022-12-24T16:29:59.533' AS DateTime))
GO
INSERT [dbo].[tbl_MasterRole] ([Id], [RoleID], [Role], [EntryDate]) VALUES (3, 3, N'Student', CAST(N'2022-12-24T16:30:13.170' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_MasterRole] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Notifications] ON 
GO
INSERT [dbo].[tbl_Notifications] ([Id], [Title], [Discreption], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [IsStaff]) VALUES (1, N'Test', N'People love to receive notifications. Let me take a step back and rephrase it a bit- People love to ', CAST(N'2022-12-26T16:15:12.533' AS DateTime), 1, CAST(N'2022-12-27T10:41:26.197' AS DateTime), 1, 1)
GO
INSERT [dbo].[tbl_Notifications] ([Id], [Title], [Discreption], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [IsStaff]) VALUES (3, N'Leave', N'christmas Leave on 25 dec 2022', CAST(N'2022-12-26T17:19:13.443' AS DateTime), 1, CAST(N'2022-12-26T19:03:59.407' AS DateTime), 1, 0)
GO
INSERT [dbo].[tbl_Notifications] ([Id], [Title], [Discreption], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [IsStaff]) VALUES (4, N'adasd', N'gdfgdfgdfgdfg', CAST(N'2023-01-09T18:08:45.690' AS DateTime), 1, CAST(N'2023-01-09T18:09:08.717' AS DateTime), 1, NULL)
GO
INSERT [dbo].[tbl_Notifications] ([Id], [Title], [Discreption], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [IsStaff]) VALUES (5, N'Leave', N'Leave for testing ', CAST(N'2023-02-21T10:19:38.163' AS DateTime), 1, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_Notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Program] ON 
GO
INSERT [dbo].[tbl_Program] ([Id], [Program], [ProgramType], [ProgramDuration], [Entryby], [EntryDate], [ModifyDate], [ModifyBy]) VALUES (3, N'M.Tech', N'SemesterWise', N'2', 1, CAST(N'2023-01-09T13:51:04.493' AS DateTime), CAST(N'2023-01-10T12:23:44.160' AS DateTime), 1)
GO
INSERT [dbo].[tbl_Program] ([Id], [Program], [ProgramType], [ProgramDuration], [Entryby], [EntryDate], [ModifyDate], [ModifyBy]) VALUES (4, N'Diploma', N'SemesterWise', N'3', 1, CAST(N'2023-01-10T12:24:41.370' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tbl_Program] ([Id], [Program], [ProgramType], [ProgramDuration], [Entryby], [EntryDate], [ModifyDate], [ModifyBy]) VALUES (5, N'B.Ed', N'YearWise', N'3', 1, CAST(N'2023-01-11T18:19:50.790' AS DateTime), CAST(N'2023-01-11T18:20:04.703' AS DateTime), 1)
GO
INSERT [dbo].[tbl_Program] ([Id], [Program], [ProgramType], [ProgramDuration], [Entryby], [EntryDate], [ModifyDate], [ModifyBy]) VALUES (6, N'B.Tech', N'SemesterWise', N'4', 1, CAST(N'2023-01-20T16:06:44.853' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tbl_Program] ([Id], [Program], [ProgramType], [ProgramDuration], [Entryby], [EntryDate], [ModifyDate], [ModifyBy]) VALUES (7, N'B.A', N'SemesterWise', N'4', 1, CAST(N'2023-03-27T13:28:46.813' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_Program] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ProgramBranchMapping] ON 
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (6, 4, 1020, CAST(N'2023-01-11T13:29:07.147' AS DateTime), CAST(N'2023-01-18T17:26:35.000' AS DateTime), 1, 1, 3)
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (7, 5, 1010, CAST(N'2023-01-14T16:11:16.530' AS DateTime), CAST(N'2023-01-18T17:26:27.590' AS DateTime), 1, 1, 2)
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (8, 6, 1010, CAST(N'2023-01-20T16:08:00.640' AS DateTime), CAST(N'2023-02-21T10:19:01.743' AS DateTime), 1, 1, 5)
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (9, 6, 1020, CAST(N'2023-01-21T10:33:56.730' AS DateTime), NULL, 1, NULL, 4)
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (10, 6, 1000, CAST(N'2023-01-21T10:34:03.240' AS DateTime), NULL, 1, NULL, 4)
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (11, 3, 1010, CAST(N'2023-01-28T12:51:45.690' AS DateTime), NULL, 1, NULL, 3)
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (12, 6, 1010, CAST(N'2023-01-31T14:42:46.500' AS DateTime), NULL, 1, NULL, 4)
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (13, 7, 1040, CAST(N'2023-03-27T13:29:44.550' AS DateTime), NULL, 1, NULL, 5)
GO
SET IDENTITY_INSERT [dbo].[tbl_ProgramBranchMapping] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ProjectReport] ON 
GO
INSERT [dbo].[tbl_ProjectReport] ([ProjectId], [StudentName], [Branch], [_Year], [Enrollment], [ProjectTitle], [Techonology], [Entrydate], [Program]) VALUES (1, N'Hemant', N'1010', N'1', N'E202300000', N'Project', N'.Net', N'Jan 20 2023  3:41PM', 5)
GO
SET IDENTITY_INSERT [dbo].[tbl_ProjectReport] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_RegistrationMaster] ON 
GO
INSERT [dbo].[tbl_RegistrationMaster] ([Id], [Startdate], [Enddate], [Daylimit], [Alllimit], [Entrydate], [Modifydate], [IsOpen], [Program], [Branch], [Year]) VALUES (2, N'2023-04-01', N'2023-04-28', 12, 1500, CAST(N'2023-03-28T16:44:38.010' AS DateTime), CAST(N'2023-04-03T13:27:21.767' AS DateTime), 1, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_RegistrationMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_session] ON 
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1, N'Microsoft.AspNetCore.Session.DistributedSession', 1, 1, CAST(N'2023-02-21T15:12:47.357' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2, N'9fe2e8dc-b5e0-0a9d-188c-7af3bd308cef', 1, 1, CAST(N'2023-02-21T15:14:05.297' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3, N'4def3a76-427a-b372-2915-3a371d8b7f8d', 1, 1, CAST(N'2023-02-21T15:16:48.860' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (4, N'7f70cb9a-42f2-ac78-fa54-fb6d6b6c7e40', 1, 1, CAST(N'2023-02-23T10:06:26.187' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5, N'655e94b5-ecf1-9028-9d49-6d0088a158ac', 1, 1, CAST(N'2023-02-23T10:14:39.050' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (6, N'660cfb85-36e1-e82a-1916-d39684a46262', 1, 1, CAST(N'2023-02-23T18:09:25.450' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (7, N'b802032e-9ca9-0e75-9bcf-0f9b2c37c02e', 1, 1, CAST(N'2023-02-23T18:15:54.227' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (8, N'25a36f69-59de-ec04-5e22-20ffe8ae4266', 1, 1, CAST(N'2023-02-23T18:18:38.133' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (9, N'25a36f69-59de-ec04-5e22-20ffe8ae4266', 1, 1, CAST(N'2023-02-23T18:20:51.960' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10, N'f21d231d-4726-8a9d-5deb-40a3ae9778c2', 1, 1, CAST(N'2023-02-23T18:21:43.030' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (11, N'f21d231d-4726-8a9d-5deb-40a3ae9778c2', 1, 1, CAST(N'2023-02-23T18:25:41.443' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (12, N'6fde1d83-4b58-285a-b648-4f744c0c564b', 1, 1, CAST(N'2023-02-23T18:30:00.707' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (13, N'df86e16a-3c8a-8185-90c3-7667db9d58d8', 1, 1, CAST(N'2023-02-23T18:32:18.070' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14, N'bc91f7db-1740-07e0-fa85-347d46b4b48f', 1, 1, CAST(N'2023-02-23T18:34:03.207' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15, N'98ac18a6-f7f1-ec8f-00b1-8e81fefe8e9f', 1, 1, CAST(N'2023-02-23T18:35:46.540' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16, N'85cd2c39-0a9c-444e-2887-696d5b03ac11', 1, 1, CAST(N'2023-02-23T18:44:12.937' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17, N'1d730f5d-9388-b554-2c01-e7d865dbc81f', 1, 1, CAST(N'2023-02-23T18:46:47.610' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18, N'1f5e2072-fe95-5076-3e3c-2dc976289936', 1, 1, CAST(N'2023-02-23T18:49:29.970' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (19, N'9f36e04f-1223-7430-546e-817c8d576e43', 1, 1, CAST(N'2023-02-23T18:55:57.087' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (20, N'19a0cc80-2072-dbb6-7dcc-df0479693e71', 1, 1, CAST(N'2023-02-23T18:57:38.300' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (21, N'64ea50af-ed64-865f-f591-02b07e09a6f7', 1, 1, CAST(N'2023-02-27T14:05:30.670' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (22, N'a2e521c2-ae0c-9836-d676-a8163a1b07c6', 1, 1, CAST(N'2023-02-27T15:36:45.340' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (23, N'ca6b6b50-4b64-6dfe-acda-70c1a83207f9', 1, 1, CAST(N'2023-02-27T15:40:06.773' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (24, N'13379987-30a8-66b3-3a06-74ec390304bd', 1, 1, CAST(N'2023-02-27T15:46:30.787' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (25, N'862297b0-a4d9-1fc9-fc0c-db298e279d05', 1, 1, CAST(N'2023-02-27T15:47:37.860' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (26, N'0394c510-29d9-f8ea-6bf9-d424d75d89b7', 1, 1, CAST(N'2023-02-27T17:22:27.890' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (27, N'1eb7bd0b-a18d-8a34-765b-68064f0f3d70', 1, 1, CAST(N'2023-02-27T17:23:53.263' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (28, N'e0b21b24-3d06-4618-bb6e-6ee05b4b2125', 1, 1, CAST(N'2023-02-27T17:29:13.943' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (29, N'4799cdd3-253c-5b3f-2d10-0a6bc7086043', 1, 1, CAST(N'2023-02-27T17:30:48.120' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (30, N'50363ef2-4e64-e03d-ca26-354edfd3c9e7', 1, 1, CAST(N'2023-02-27T18:14:37.020' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (31, N'ab56a533-1412-7196-4e65-26a7752a3932', 1, 1, CAST(N'2023-02-27T18:35:23.787' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (32, N'43545bef-fa0b-8628-70a4-54d36848d2dc', 1, 1, CAST(N'2023-03-13T13:11:12.053' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (33, N'8ce9eeff-6c17-29af-085c-d80006678c20', 1, 1, CAST(N'2023-03-13T13:39:55.060' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (34, N'f340f5ff-0be8-6a1d-99bc-c242273037bc', 1, 1, CAST(N'2023-03-13T13:55:04.940' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (35, N'78440493-1094-23c3-ea3f-7058a77d6364', 1, 1, CAST(N'2023-03-13T14:40:33.107' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (36, N'78440493-1094-23c3-ea3f-7058a77d6364', 4, 1, CAST(N'2023-03-13T14:41:21.870' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (37, N'78440493-1094-23c3-ea3f-7058a77d6364', 1, 1, CAST(N'2023-03-13T14:43:10.357' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (38, N'8c416286-1726-968a-271e-c6269a9e4551', 1, 1, CAST(N'2023-03-13T14:56:38.577' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (39, N'c7198d04-cc55-ce99-6394-c5ba592513d1', 1, 1, CAST(N'2023-03-13T15:04:47.700' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (40, N'7d7c7f5f-9335-b3fe-3233-51897c970bb4', 1, 1, CAST(N'2023-03-13T15:25:03.980' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (41, N'9a40d7f9-60f8-f057-f2f8-7d8a7da2150f', 1, 1, CAST(N'2023-03-13T15:27:27.353' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (42, N'484d1289-7797-b984-3551-f7f9b4f6918a', 1, 1, CAST(N'2023-03-13T15:35:44.913' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (43, N'a64b469c-7916-8c54-dc5f-5de94ed7eefb', 1, 1, CAST(N'2023-03-13T15:39:11.610' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (44, N'45a18dad-4c50-6b83-5c3d-176bbd7ffd5c', 1, 1, CAST(N'2023-03-13T15:40:05.217' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (45, N'47213a66-968f-331f-1ff3-a1bbb59770d4', 1, 1, CAST(N'2023-03-13T15:57:29.393' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (46, N'6bdb66c0-4b57-9833-1116-446f7fe5afd2', 1, 1, CAST(N'2023-03-13T16:03:12.007' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (47, N'3d7e1a51-d1dc-4720-abd2-4a7297ea9c3c', 1, 1, CAST(N'2023-03-13T16:11:54.973' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (48, N'ef8b8661-3be1-7cf7-a577-d443bee6137d', 1, 1, CAST(N'2023-03-13T16:13:58.493' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (49, N'd82590c3-877d-5405-0913-55155b3c76b3', 1, 1, CAST(N'2023-03-25T17:44:31.530' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (50, N'2fe9b892-0bcd-32a4-a84e-157eae29151c', 1, 1, CAST(N'2023-03-25T17:47:48.337' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (51, N'4cffa629-f8e7-53e5-28ef-85e191b40747', 1, 1, CAST(N'2023-03-25T17:50:00.250' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (52, N'e455f67e-cb7a-0334-4649-c05da10b4abc', 1, 1, CAST(N'2023-03-25T17:51:40.217' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (53, N'04a829ee-7bec-1210-854d-c30373ca7513', 1, 1, CAST(N'2023-03-25T17:57:57.640' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (54, N'e7d53785-62b3-e1be-8227-dea9eddd1760', 1, 1, CAST(N'2023-03-25T18:09:20.497' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (55, N'be76c9cc-e657-c1c2-3a3e-5e875c50f7e9', 1, 1, CAST(N'2023-03-25T18:12:25.737' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (56, N'6c0900dc-12ed-2caa-4cb4-97c96b91dc42', 1, 1, CAST(N'2023-03-25T18:13:51.540' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (57, N'1ade7456-89b2-c18c-b4d5-879fad71845c', 1, 1, CAST(N'2023-03-25T18:16:05.790' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (58, N'b174570b-3417-b03b-217c-934ffd6f6916', 1, 1, CAST(N'2023-03-25T18:25:14.817' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (59, N'7670bffd-57ba-30a6-bc10-2d1fc3b7dc86', 1, 1, CAST(N'2023-03-25T18:37:43.913' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (60, N'39ff1c4c-2911-429d-c461-317ddecaa4ab', 1, 1, CAST(N'2023-03-25T18:41:31.710' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (61, N'c807014c-6b3e-d786-c4ed-6a61fb2e7303', 1, 1, CAST(N'2023-03-27T12:26:57.430' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (62, N'a0c8ebdc-39f6-f01b-fa38-2c8f39a10272', 1, 1, CAST(N'2023-03-27T12:30:23.367' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (63, N'b09ebaf4-07d6-70c5-fe74-14ba4ea68b0a', 1, 1, CAST(N'2023-03-27T12:31:47.347' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (64, N'0ea19d44-09c1-3fa0-a33c-5340aa73fa1d', 1, 1, CAST(N'2023-03-27T12:36:51.643' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (65, N'd453b8f3-ae72-baf5-9b3c-c03d3a9a765c', 1, 1, CAST(N'2023-03-27T12:38:27.463' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (66, N'560b02f7-ca10-0876-3f52-8a0c9862e0d5', 1, 1, CAST(N'2023-03-27T12:41:34.607' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (67, N'88f2cbac-80fc-9050-9213-5685055da517', 1, 1, CAST(N'2023-03-27T12:45:58.687' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (68, N'b568196a-ef30-514c-8764-c7be2b887f97', 1, 1, CAST(N'2023-03-27T12:47:19.277' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (69, N'7892eb51-1584-f935-eac1-562d859ba628', 1, 1, CAST(N'2023-03-27T12:49:14.837' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (70, N'c3b391d5-ca17-e725-54ff-5cfb63fc5fa6', 1, 1, CAST(N'2023-03-27T12:50:16.230' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (71, N'bedb6b3b-7059-47ec-deb8-fdecc445a09c', 1, 1, CAST(N'2023-03-27T12:53:21.987' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (72, N'6d19426c-4eab-c3fb-d84d-acfcafbca801', 1, 1, CAST(N'2023-03-27T12:57:18.183' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (73, N'98d69725-8988-ab70-0b1a-653191b062ff', 1, 1, CAST(N'2023-03-27T13:11:54.463' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (74, N'a63348b0-7809-1721-705a-363f9b7acc9d', 1, 1, CAST(N'2023-03-27T13:24:26.847' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (75, N'a63348b0-7809-1721-705a-363f9b7acc9d', 1, 1, CAST(N'2023-03-27T13:35:16.340' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (76, N'37c86166-3849-749a-ad80-d6162ca503c4', 1, 1, CAST(N'2023-03-27T13:37:28.813' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (77, N'9613d501-275b-602e-39b9-1f1a221d597f', 1, 1, CAST(N'2023-03-27T13:47:59.100' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (78, N'adc000fe-65d2-455a-c2f5-eae19ff50f1e', 1, 1, CAST(N'2023-03-27T13:49:14.177' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (79, N'cb8f9dc1-ff0f-71b4-469b-bfc5268521bc', 1, 1, CAST(N'2023-03-27T13:51:04.390' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (80, N'bf6f27ca-48d8-af47-bde5-8105629b7cac', 1, 1, CAST(N'2023-03-27T13:55:51.490' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (81, N'c0a0f0f9-50ab-8471-da11-6c7419667c69', 1, 1, CAST(N'2023-03-27T14:00:06.160' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (82, N'775aa4e3-c46f-f780-386f-ead53a3fc530', 1, 1, CAST(N'2023-03-27T14:40:33.190' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (83, N'7b39499d-4362-e26f-1405-57dfa7ecefcd', 1, 1, CAST(N'2023-03-27T14:45:02.143' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (84, N'd026fc8a-6688-5214-7284-c577b3cfcde5', 1, 1, CAST(N'2023-03-27T14:46:04.820' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (85, N'1d99846d-55ba-7637-249b-519ae8406758', 1, 1, CAST(N'2023-03-27T14:47:27.667' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (86, N'a78e1951-2d1b-6cec-5698-73aba09a88b3', 1, 1, CAST(N'2023-03-27T14:52:50.867' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (87, N'e3cd57e8-4e21-20d2-9bb7-e84efe562db1', 1, 1, CAST(N'2023-03-27T14:56:33.650' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (88, N'e659aac9-8eb1-b558-4c89-9e14941e78e4', 1, 1, CAST(N'2023-03-27T15:10:17.873' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (89, N'bfa718e4-0871-da75-fb25-08ee747d49ea', 1, 1, CAST(N'2023-03-27T15:13:10.630' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (90, N'bf6fb7d5-d772-5317-195d-21f46b93e568', 1, 1, CAST(N'2023-03-27T15:15:07.000' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (91, N'975db641-34e4-091b-154e-063bb83f9b32', 1, 1, CAST(N'2023-03-27T15:16:36.823' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (92, N'6da08170-c895-6b5e-5f31-8b52863d8c06', 1, 1, CAST(N'2023-03-27T15:19:59.170' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (93, N'08d79827-94c5-985f-072e-4029250f2b54', 1, 1, CAST(N'2023-03-27T15:22:32.843' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (94, N'072c2ba5-0b6b-5101-544c-0ab8097d43ef', 1, 1, CAST(N'2023-03-27T15:38:16.060' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (95, N'e81ccda3-0371-59b8-697e-ba2dc0094781', 1, 1, CAST(N'2023-03-27T15:39:29.160' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (96, N'e7f37afc-e82f-5a6d-25d4-ba284d85aa9d', 1, 1, CAST(N'2023-03-27T15:41:10.930' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (97, N'3ed2611e-12f2-baf8-1fc9-d0ccb8ad5824', 1, 1, CAST(N'2023-03-27T15:45:55.773' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (98, N'dfc6bb10-6486-ff5c-95c6-9ad1a537517d', 1, 1, CAST(N'2023-03-27T15:48:00.587' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (99, N'fbe73ffd-5626-505c-b4ff-f91044a9ce77', 1, 1, CAST(N'2023-03-27T15:51:47.783' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (100, N'f0244d80-f1d2-4ff0-646a-1d25be995214', 1, 1, CAST(N'2023-03-27T16:26:06.680' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (101, N'f8c96dfa-1bd6-8507-3076-05c30db51fe2', 1, 1, CAST(N'2023-03-27T16:29:07.960' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (102, N'9054ab16-e37b-98c9-2692-0796ad2d51fd', 1, 1, CAST(N'2023-03-27T16:31:07.813' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (103, N'45b4ec5f-aa99-f056-9b76-959df4e6ea0d', 1, 1, CAST(N'2023-03-27T16:32:30.243' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (104, N'79325430-157b-d7e9-2dc0-57b522e85eb0', 1, 1, CAST(N'2023-03-27T16:44:15.193' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (105, N'6f8b5eb4-46ef-7a75-0854-2a934a329015', 1, 1, CAST(N'2023-03-27T16:49:51.573' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (106, N'87251ffc-b828-5011-cd7d-66f8ddac936f', 1, 1, CAST(N'2023-03-27T16:51:53.950' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (107, N'd63b0e7e-7515-6112-481b-829a22e81336', 1, 1, CAST(N'2023-03-27T16:54:35.483' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (108, N'1c7311a6-3bed-e0df-81bf-9e5038c431db', 1, 1, CAST(N'2023-03-27T17:04:25.183' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (109, N'e05d4ad1-fa55-e976-1373-fdc44fad974f', 1, 1, CAST(N'2023-03-27T17:06:37.330' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (110, N'35615779-cbc2-fb91-388a-184e156a1df5', 1, 1, CAST(N'2023-03-27T17:53:06.300' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (111, N'0f159ae9-291b-5a2e-8306-10e0d36d2f73', 1, 1, CAST(N'2023-03-27T18:10:03.063' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (112, N'8821bd6c-7173-150e-d633-e3e1b51fe215', 1, 1, CAST(N'2023-03-27T18:38:51.920' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (113, N'3edff41b-669e-212a-68c1-ccf52265a581', 1, 1, CAST(N'2023-03-28T17:21:44.017' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (114, N'e7f01ed7-a6ca-2a45-f4f1-a913a81abd33', 1, 1, CAST(N'2023-03-28T17:26:13.640' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (115, N'd58d8a2c-8b78-d7f3-d2fd-2b4a84894d51', 1, 1, CAST(N'2023-03-28T17:28:33.083' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (116, N'215e6502-b450-2148-9548-c2f0915a69db', 1, 1, CAST(N'2023-03-28T17:39:34.190' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (117, N'a35039bc-ad6a-57f3-3b97-2fd09e2fdf13', 1, 1, CAST(N'2023-03-28T17:41:58.423' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (118, N'8b453ee7-ad44-51d4-bef4-476ae406a5b0', 1, 1, CAST(N'2023-03-28T18:43:28.420' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (119, N'b5f331f7-c156-111b-1ac0-c057022eaad6', 1, 1, CAST(N'2023-03-28T18:45:16.460' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (120, N'558edd1c-6202-1370-b322-64ddd7021701', 1, 1, CAST(N'2023-03-28T18:50:22.093' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (121, N'c65d71cc-78af-fa22-06c9-e72d58031b2a', 1, 1, CAST(N'2023-04-03T12:37:45.410' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (122, N'd8297d63-b271-f1c8-ef8d-bd334b522cc6', 1, 1, CAST(N'2023-04-03T12:44:10.380' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (123, N'e9a55f48-0f28-5028-1187-9c1c430d9881', 1, 1, CAST(N'2023-04-03T12:55:46.553' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (124, N'e7c32662-dfb6-43d0-5bf2-91905b0df1db', 1, 1, CAST(N'2023-04-03T13:08:53.887' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (125, N'8490f34c-e895-e57f-d847-2a5ed2495052', 1, 1, CAST(N'2023-04-03T13:10:40.933' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (126, N'f857fe8c-d7d9-764e-cbee-122016bc4a87', 1, 1, CAST(N'2023-04-03T13:13:22.480' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (127, N'ae97d099-f189-fb46-eed3-460ff4458621', 1, 1, CAST(N'2023-04-03T13:26:55.030' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (128, N'79133022-758c-f7ef-13ba-45c224855b49', 1, 1, CAST(N'2023-04-03T13:41:38.867' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (129, N'e9a29d43-2f0f-11c2-608c-e373581a41a3', 1, 1, CAST(N'2023-04-03T13:43:16.833' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (130, N'58167909-8c78-74fc-9772-7495b5cde7c0', 1, 1, CAST(N'2023-04-03T13:45:16.407' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (131, N'af893bbc-68d3-b842-49cc-1f326e1f5a22', 1, 1, CAST(N'2023-04-03T13:54:48.910' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (132, N'285eedbd-e214-fd94-b40e-38d5cd29ae82', 1, 1, CAST(N'2023-04-03T15:35:11.737' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (133, N'2ae77c3b-ae17-3a7d-37a0-827278f54c14', 1, 1, CAST(N'2023-04-03T15:43:48.000' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (134, N'08fe9cb9-2093-ae00-03aa-08aa25c1d0ac', 1, 1, CAST(N'2023-04-03T15:46:25.480' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (135, N'4c1d50a6-644a-72ba-5f6b-075b2b58d6a2', 1, 1, CAST(N'2023-04-03T15:56:45.493' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (136, N'8ff58a48-bc30-220b-8300-aedbfea231ff', 1, 1, CAST(N'2023-04-03T16:09:12.730' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (137, N'b95068af-6952-4fd4-d979-945ad4ab594b', 1, 1, CAST(N'2023-04-03T16:10:51.450' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (138, N'5a1c3079-6ef2-fff7-f19d-b39d08f26756', 1, 1, CAST(N'2023-04-03T16:25:49.647' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (139, N'cab21554-6c46-bece-8c51-c4c843770023', 1, 1, CAST(N'2023-04-03T16:28:12.397' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (140, N'8c3c89cb-df2e-6ae8-1d9a-43316265dc8d', 1, 1, CAST(N'2023-04-03T16:36:38.197' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (141, N'af817c59-e383-000f-38fc-1025f12fec7e', 1, 1, CAST(N'2023-04-03T16:39:27.580' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (142, N'9b524d93-6d6e-e031-1103-5937c1f0cf7e', 1, 1, CAST(N'2023-04-03T16:41:33.473' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (143, N'e562c97b-bee5-2a21-e75f-d46c9ea7087d', 1, 1, CAST(N'2023-04-03T16:48:01.707' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (144, N'84abe710-421b-3c82-ea21-8f01691dd495', 1, 1, CAST(N'2023-04-03T17:42:17.600' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (145, N'9377b050-8f91-17b7-1bc0-b465275aafdd', 1, 1, CAST(N'2023-04-03T17:59:51.380' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (146, N'b65484f1-6aec-490a-0513-69b14894ae4f', 1, 1, CAST(N'2023-04-03T18:14:36.233' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (147, N'8077f43f-9c9e-b63c-7373-903e8a477d99', 1, 1, CAST(N'2023-04-03T18:16:41.110' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (148, N'54f67cc7-107b-de7f-15de-ef547913afea', 1, 1, CAST(N'2023-04-03T18:39:12.853' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (149, N'70a1477d-ee21-f77c-7705-7547926a7753', 1, 1, CAST(N'2023-04-03T18:42:55.940' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (150, N'1d9c3b7f-336e-f3f2-1d65-f62dc347c3a6', 1, 1, CAST(N'2023-04-03T18:44:27.570' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (151, N'b887cded-dc41-ad3e-7c7d-1c872bc7a2f0', 1, 1, CAST(N'2023-04-03T18:47:37.570' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (152, N'c77e2c42-167c-9b4e-ce78-acba3ed89655', 1, 1, CAST(N'2023-04-03T18:50:34.193' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (153, N'9d2c6f6b-45cc-3b38-c19a-56d957b129bc', 1, 1, CAST(N'2023-04-03T18:53:15.083' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (154, N'1f8a85d5-9cd1-ea28-eb9f-a953bf15427f', 1, 1, CAST(N'2023-04-03T18:57:08.610' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (155, N'd9d0dec1-9015-1174-c349-5130cfefc71f', 1, 1, CAST(N'2023-04-03T18:58:01.863' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (156, N'd64cdaa6-868e-c4ba-9b40-985504f24f86', 1, 1, CAST(N'2023-04-04T10:29:54.120' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (157, N'a60f690b-956f-a1d6-5313-a84e971d1171', 1, 1, CAST(N'2023-04-04T12:20:42.200' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (158, N'bf2a86b3-3e4e-71e8-971c-598ab48a1fba', 1, 1, CAST(N'2023-04-04T13:46:16.077' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (159, N'fc308260-5dee-6d1f-791a-885ceabb9b27', 1, 1, CAST(N'2023-04-04T14:47:28.470' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (160, N'83ee663f-1d04-cd02-6fc7-797d740da2da', 1, 1, CAST(N'2023-04-04T15:13:01.143' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (161, N'd32de64d-d72f-5d56-8d9a-92b4cf1e8cbc', 1, 1, CAST(N'2023-04-04T15:21:03.170' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (162, N'08295aa7-bdf0-be7d-9e4e-e6c40c5f7b0e', 1, 1, CAST(N'2023-04-04T15:24:54.460' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (163, N'b3904b7d-126a-ee2e-0443-ad3278f27910', 1, 1, CAST(N'2023-04-04T15:27:23.930' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (164, N'53010f46-3ffd-dee3-8071-131d780b7f90', 1, 1, CAST(N'2023-04-04T15:29:57.320' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (165, N'5c670c27-21f0-3af6-317f-2dc85e599df5', 1, 1, CAST(N'2023-04-04T15:43:26.307' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (166, N'388c5617-36a4-27ae-9157-a1673699c434', 1, 1, CAST(N'2023-04-04T15:46:02.737' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (167, N'cdcdb484-33aa-32e9-2124-329ae61f7a24', 1, 1, CAST(N'2023-04-04T15:54:01.827' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (168, N'588c891e-e386-2ed9-8f99-246d35f04f5c', 1, 1, CAST(N'2023-04-04T15:57:56.063' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (169, N'07a7d4c6-edc3-3f95-21db-3ac801b30f35', 1, 1, CAST(N'2023-04-04T16:06:16.130' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (170, N'd10a5faa-8b75-aba0-38c0-a347a7de69b5', 1, 1, CAST(N'2023-04-04T16:08:31.140' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (171, N'f7054249-3545-877f-d339-e36c2e3a75e4', 1, 1, CAST(N'2023-04-05T10:24:03.150' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (172, N'a1123eb3-c6c5-e664-3b7a-9ad60ee605fe', 1, 1, CAST(N'2023-04-05T10:31:30.947' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (173, N'77ce69ff-da3d-cc0d-daa4-afee8627e220', 1, 1, CAST(N'2023-04-05T10:34:56.563' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (174, N'68ce1d49-ba98-bc2f-11b7-6c7b074f0230', 1, 1, CAST(N'2023-04-05T10:37:57.407' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (175, N'b7b8c5b2-9e2a-fec6-6cf8-3612592d92e0', 1, 1, CAST(N'2023-04-05T11:02:50.193' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (176, N'c7feea36-0a8c-e3ff-069e-9b4338dd4273', 1, 1, CAST(N'2023-04-05T11:26:00.390' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (177, N'393c54f0-a4bb-d416-a530-278e9faa7070', 1, 1, CAST(N'2023-04-05T11:36:48.573' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (178, N'd58a7f4b-1376-5a69-5460-7441ba83ad5e', 1, 1, CAST(N'2023-04-05T11:43:43.833' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (179, N'368d9dfb-90b0-1829-ba43-9e86e1351b5c', 1, 1, CAST(N'2023-04-05T11:46:26.267' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (180, N'594e9325-c47b-509e-8318-538b35876ee3', 1, 1, CAST(N'2023-04-05T12:12:22.683' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (181, N'baeb1e64-8fd7-1d23-fd2a-8b2f7383978b', 1, 1, CAST(N'2023-04-05T12:16:21.760' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (182, N'8ffc5dce-e2c6-9f81-7fef-27e4db6ad065', 1, 1, CAST(N'2023-04-05T12:26:09.927' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (183, N'efe141a8-a5f5-a179-bde3-bb7aef6c720d', 1, 1, CAST(N'2023-04-05T12:36:20.597' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (184, N'cd6fd16a-2cd8-d4d0-71a4-ca2ed897b501', 1, 1, CAST(N'2023-04-05T14:36:57.003' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (185, N'6a0c01a6-7cc2-d3ef-a829-64772562c12c', 1, 1, CAST(N'2023-04-05T14:46:42.013' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (186, N'a8bfc96c-797e-a375-16a9-82bfb4585055', 1, 1, CAST(N'2023-04-05T14:48:54.377' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (187, N'075284f5-d038-04d2-16be-6f16abdd175d', 1, 1, CAST(N'2023-04-05T14:50:53.097' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (188, N'900be980-d976-1590-a94c-34b927960f7f', 1, 1, CAST(N'2023-04-05T14:53:12.827' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (189, N'64fd17f0-79b4-b273-b418-5ef97b94dccf', 1, 1, CAST(N'2023-04-05T14:54:14.587' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (190, N'1e7bb600-6b73-e9b4-c323-7d2eef616df3', 1, 1, CAST(N'2023-04-05T14:57:57.497' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (191, N'e2cc4f4a-9c23-f5e8-c4e8-902520e2208c', 1, 1, CAST(N'2023-04-05T15:00:10.163' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (192, N'6af74ea0-aa2b-d167-6232-4bc253a3a7f2', 1, 1, CAST(N'2023-04-05T15:07:50.467' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (193, N'8c44f8ac-b0dc-1608-8e2b-9d9b3aaf2444', 1, 1, CAST(N'2023-04-05T15:31:01.827' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (194, N'01beebd1-4fd8-8a5b-3e08-b3a6de1ce77e', 1, 1, CAST(N'2023-04-05T18:10:55.447' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (195, N'254772f4-07a4-cf56-33d7-5683a9eb40a7', 1, 1, CAST(N'2023-04-05T18:20:44.747' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (196, N'1242b773-3734-5cf8-6b42-0f7acf92b9f0', 1, 1, CAST(N'2023-04-05T18:23:21.370' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (197, N'68ae8a5d-ecfa-2b31-0559-c1c4d007ed1b', 1, 1, CAST(N'2023-04-05T18:24:32.760' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (198, N'85c0524c-9592-457a-31d8-2d8e052c64f9', 1, 1, CAST(N'2023-04-05T18:28:56.290' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (199, N'30cbdd9d-7e84-9adb-11f0-64b0bcdf5f9f', 1, 1, CAST(N'2023-04-05T18:30:57.670' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (200, N'66b49b03-a238-fb38-0192-e64098fd9fb1', 1, 1, CAST(N'2023-04-05T18:34:15.110' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (201, N'8b4ab72b-e95f-2023-f534-677f13a5cf57', 1, 1, CAST(N'2023-04-05T18:44:33.777' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (202, N'2abcfacf-67ff-4cca-2014-91c173b353b7', 1, 1, CAST(N'2023-04-05T18:55:26.790' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (203, N'a13ea81f-94be-f377-7de6-293399c10e33', 1, 1, CAST(N'2023-04-05T19:02:45.830' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (204, N'b953cad9-ba9b-160d-39eb-d1f0c32f0968', 1, 1, CAST(N'2023-04-05T19:03:31.707' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (205, N'1a16bf83-f2fd-b60b-c6b4-238fe1a04559', 1, 1, CAST(N'2023-04-05T19:05:47.733' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (206, N'db62378c-eba0-3dd8-6ffb-92e59be01f7a', 1, 1, CAST(N'2023-04-06T10:10:53.307' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (207, N'f70f7330-fbb9-578b-299c-ef72a91d41a0', 1, 1, CAST(N'2023-04-06T10:12:00.500' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (208, N'e7ab9c8a-c31e-bae6-565c-601e7183dad8', 1, 1, CAST(N'2023-04-06T10:16:06.770' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (209, N'b19f87de-d1ca-6fce-05b3-a002e1cb50b9', 1, 1, CAST(N'2023-04-06T10:53:33.037' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (210, N'b64b0a2a-204c-3226-dcda-03413fae8c11', 1, 1, CAST(N'2023-04-06T10:57:40.697' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (211, N'e8548373-91ae-7afc-121e-89c6705b6dd6', 1, 1, CAST(N'2023-04-06T11:02:15.483' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (212, N'549652c6-2fff-474f-c966-d816924e9846', 1, 1, CAST(N'2023-04-06T11:04:38.533' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (213, N'2bafcf96-aece-fe44-aa3f-2b8d1795e872', 1, 1, CAST(N'2023-04-06T11:07:48.600' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (214, N'4c738a89-6362-afc4-8c69-f7948416cc92', 1, 1, CAST(N'2023-04-06T11:15:45.530' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (215, N'1ffcc495-2da2-21c2-2268-9505690cee16', 1, 1, CAST(N'2023-04-06T11:49:56.173' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (216, N'8c6bfdaf-3f0c-2886-36f4-b6646c83af6a', 1, 1, CAST(N'2023-04-06T12:40:39.970' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (217, N'138bbb91-4d2d-328d-9916-2a1d8d07f5b4', 1, 1, CAST(N'2023-04-06T12:42:49.837' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (218, N'db9a62cd-6514-e318-d19d-b9e5a4ac1a5e', 1, 1, CAST(N'2023-04-06T15:11:10.883' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (219, N'7def6078-d3ef-d0f5-1977-f38439493e84', 1, 1, CAST(N'2023-04-06T15:12:40.823' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (220, N'e294d402-7bd9-9377-adf2-aab5f1e5e56b', 1, 1, CAST(N'2023-04-06T15:18:46.927' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (221, N'2beb3f13-def9-873e-f750-323820851c31', 1, 1, CAST(N'2023-04-06T16:06:23.743' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (222, N'a81bb1cd-119a-cf32-03ae-82dd939d99d6', 1, 1, CAST(N'2023-04-06T16:07:51.040' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (223, N'82a9f026-4954-6a21-e1ea-20c0c8c5988a', 1, 1, CAST(N'2023-04-06T16:13:58.043' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (224, N'e8479070-a82f-660c-c6f9-e6fd2bc8d0b0', 1, 1, CAST(N'2023-04-06T16:18:28.380' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (225, N'4785236a-a04b-c415-5e57-4ecd3821a91d', 1, 1, CAST(N'2023-04-06T16:54:31.687' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (226, N'119ef16c-0ee3-7752-91a2-b6e8ae10402e', 1, 1, CAST(N'2023-04-06T17:10:49.210' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (227, N'a17667ae-463f-08c3-28e1-67dbf037b997', 1, 1, CAST(N'2023-04-06T17:14:30.430' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (228, N'8b66acc2-c266-876c-d67b-ece14711ddd4', 1, 1, CAST(N'2023-04-06T17:23:56.913' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (229, N'51283558-fd57-e8e6-fe80-9dcc1ab39874', 1, 1, CAST(N'2023-04-06T17:24:52.020' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_session] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_student] ON 
GO
INSERT [dbo].[tbl_student] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [Entrolment_No], [DOB], [FatherOccupation], [MotherName], [Program]) VALUES (1, N'Hemant', N'Ramlakhan nag', N'amarnag702@gmail.com', N'6390749256', N'1010', N'Lucknow', N'Male', CAST(N'2023-01-19T19:06:14.410' AS DateTime), N'A', N'20230000', N'2004-07-15', N'Farmer', N'Urmila Nag', 3)
GO
INSERT [dbo].[tbl_student] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [Entrolment_No], [DOB], [FatherOccupation], [MotherName], [Program]) VALUES (2, N'Shivam Tiwari', N'Father', N'st820372@gmail.com', N'8956784512', N'1010', N'Lucknow', N'Male', CAST(N'2023-01-23T14:28:43.517' AS DateTime), N'A', N'20230001', N'2022-06-17', N'Farmar', N'Mother', 6)
GO
INSERT [dbo].[tbl_student] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [Entrolment_No], [DOB], [FatherOccupation], [MotherName], [Program]) VALUES (3, N'Raj', N'Prakash Mishra', N'amarnag702@gmail.com', N'8957180204', N'1020', N'Lakhimpur', N'Male', CAST(N'2023-01-31T18:21:06.260' AS DateTime), N'A', N'20230002', N'2006-07-07', N'Droctor', N'Rinki Mishra', 6)
GO
INSERT [dbo].[tbl_student] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [Entrolment_No], [DOB], [FatherOccupation], [MotherName], [Program]) VALUES (4, N'Hemant', N'Ramlakhan Nag', N'amarnag702@gmail.com', N'9685748596', N'1010', N'Lucknow', N'Male', CAST(N'2023-02-18T15:31:09.007' AS DateTime), N'A', N'20230003', N'1004-07-15', N'Farmare', N'Urmila Nag', 6)
GO
SET IDENTITY_INSERT [dbo].[tbl_student] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Student_Admission] ON 
GO
INSERT [dbo].[tbl_Student_Admission] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Admissiondate], [Group_Name], [DOB], [EntrollmentNo], [Fess_Status], [_Year], [Program], [MotherName], [FatherOccupation], [Religion]) VALUES (1, N'Institute', N'', N'amarnag702@gmail.com', N'6390749256', N'', N'Dhaurahra Lakhimpur-Kheri', N'', CAST(N'2023-01-19T14:45:45.993' AS DateTime), N'', N'', N'', N'1', N'', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_Student_Admission] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Admissiondate], [Group_Name], [DOB], [EntrollmentNo], [Fess_Status], [_Year], [Program], [MotherName], [FatherOccupation], [Religion]) VALUES (2, N'Hemant', N'Ramlakhan nag', N'amarnag702@gmail.com', N'6390749256', N'1010', N'Lucknow', N'Male', CAST(N'2023-01-20T14:54:31.053' AS DateTime), N'A', N'2004-07-15', N'E202300000', N'1', N'1', 5, N'Urmila Nag', N'Farmer', N'Hindu')
GO
INSERT [dbo].[tbl_Student_Admission] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Admissiondate], [Group_Name], [DOB], [EntrollmentNo], [Fess_Status], [_Year], [Program], [MotherName], [FatherOccupation], [Religion]) VALUES (4, N'Raj', N'Prakash Mishra', N'amarnag702@gmail.com', N'8957180204', N'1020', N'Lakhimpur', N'--Select Gender--', CAST(N'2023-01-31T18:21:56.717' AS DateTime), N'A', N'2006-07-07', N'E202300001', N'2', N'1', 6, N'Rinki Mishra', N'Droctor', N'Hindu')
GO
SET IDENTITY_INSERT [dbo].[tbl_Student_Admission] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Studentfine] ON 
GO
INSERT [dbo].[tbl_Studentfine] ([Id], [EnrollmentNumber], [FineAmount], [FineResion], [EntryDate], [ModifyDate], [FineStatus]) VALUES (1, N'E202300000', N'120', N'Testing', CAST(N'2023-03-27T17:00:08.137' AS DateTime), NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_Studentfine] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_StudentLedger] ON 
GO
INSERT [dbo].[tbl_StudentLedger] ([ID], [EnrollmentNo], [TotalFees], [TotalSubmitedFees], [Totalduefees], [EntryDate], [ModifyDate], [Mode]) VALUES (1, N'E202300001', CAST(45460.000000000 AS Numeric(18, 9)), CAST(5461.000000000 AS Numeric(18, 9)), CAST(39999.000000000 AS Numeric(18, 9)), CAST(N'2023-02-02T17:17:02.780' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tbl_StudentLedger] ([ID], [EnrollmentNo], [TotalFees], [TotalSubmitedFees], [Totalduefees], [EntryDate], [ModifyDate], [Mode]) VALUES (2, N'E202300001', CAST(39999.000000000 AS Numeric(18, 9)), CAST(9000.000000000 AS Numeric(18, 9)), CAST(30999.000000000 AS Numeric(18, 9)), CAST(N'2023-02-02T17:34:55.283' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tbl_StudentLedger] ([ID], [EnrollmentNo], [TotalFees], [TotalSubmitedFees], [Totalduefees], [EntryDate], [ModifyDate], [Mode]) VALUES (3, N'E202300001', CAST(30999.000000000 AS Numeric(18, 9)), CAST(15000.000000000 AS Numeric(18, 9)), CAST(15999.000000000 AS Numeric(18, 9)), CAST(N'2023-03-13T14:44:19.303' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tbl_StudentLedger] ([ID], [EnrollmentNo], [TotalFees], [TotalSubmitedFees], [Totalduefees], [EntryDate], [ModifyDate], [Mode]) VALUES (4, N'E202300001', CAST(15999.000000000 AS Numeric(18, 9)), CAST(999.030000000 AS Numeric(18, 9)), CAST(14999.970000000 AS Numeric(18, 9)), CAST(N'2023-03-13T14:48:17.310' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tbl_StudentLedger] ([ID], [EnrollmentNo], [TotalFees], [TotalSubmitedFees], [Totalduefees], [EntryDate], [ModifyDate], [Mode]) VALUES (5, N'E202300001', CAST(14999.970000000 AS Numeric(18, 9)), CAST(14999.970000000 AS Numeric(18, 9)), CAST(0.000000000 AS Numeric(18, 9)), CAST(N'2023-03-13T14:49:45.790' AS DateTime), NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_StudentLedger] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_SubjectMaster] ON 
GO
INSERT [dbo].[tbl_SubjectMaster] ([Id], [_Year], [SubjectName], [SubjectCode], [SubjectType], [TheoryMarks], [PracticalMarks], [EntryDate], [Modifydate], [BranchId], [Program], [PassingMarks], [IsPrectical], [Iswritten], [PrecticalPassingMarks]) VALUES (1, N'2', N'Applied Mathemetics-2', N'AM-1', N'optional', N'52', N'23', CAST(N'2023-03-13T15:59:05.877' AS DateTime), CAST(N'2023-03-27T12:52:06.580' AS DateTime), 1010, 5, 17, 1, 1, 9)
GO
INSERT [dbo].[tbl_SubjectMaster] ([Id], [_Year], [SubjectName], [SubjectCode], [SubjectType], [TheoryMarks], [PracticalMarks], [EntryDate], [Modifydate], [BranchId], [Program], [PassingMarks], [IsPrectical], [Iswritten], [PrecticalPassingMarks]) VALUES (2, N'1', N'Machanics', N'M-001', N'Conpalsary', N'50', N'50', CAST(N'2023-03-13T16:00:06.877' AS DateTime), NULL, 1020, 6, 17, 1, 1, 8)
GO
INSERT [dbo].[tbl_SubjectMaster] ([Id], [_Year], [SubjectName], [SubjectCode], [SubjectType], [TheoryMarks], [PracticalMarks], [EntryDate], [Modifydate], [BranchId], [Program], [PassingMarks], [IsPrectical], [Iswritten], [PrecticalPassingMarks]) VALUES (4, N'2', N'Applied Mathemetics-3', N'wer34', N'Conpalsary', N'45', N'45', CAST(N'2023-03-27T13:26:40.430' AS DateTime), NULL, 1010, 6, 45, 1, 1, 0)
GO
INSERT [dbo].[tbl_SubjectMaster] ([Id], [_Year], [SubjectName], [SubjectCode], [SubjectType], [TheoryMarks], [PracticalMarks], [EntryDate], [Modifydate], [BranchId], [Program], [PassingMarks], [IsPrectical], [Iswritten], [PrecticalPassingMarks]) VALUES (5, N'1', N'test', N'TST-23', N'optional', N'30', N'', CAST(N'2023-03-27T13:27:45.397' AS DateTime), NULL, 1020, 4, 45, 1, 1, 0)
GO
INSERT [dbo].[tbl_SubjectMaster] ([Id], [_Year], [SubjectName], [SubjectCode], [SubjectType], [TheoryMarks], [PracticalMarks], [EntryDate], [Modifydate], [BranchId], [Program], [PassingMarks], [IsPrectical], [Iswritten], [PrecticalPassingMarks]) VALUES (6, N'1', N'History', N'H-23', N'Conpalsary', N'100', N'', CAST(N'2023-03-27T13:30:45.510' AS DateTime), NULL, 1040, 7, 33, 0, 1, 0)
GO
INSERT [dbo].[tbl_SubjectMaster] ([Id], [_Year], [SubjectName], [SubjectCode], [SubjectType], [TheoryMarks], [PracticalMarks], [EntryDate], [Modifydate], [BranchId], [Program], [PassingMarks], [IsPrectical], [Iswritten], [PrecticalPassingMarks]) VALUES (7, N'1', N'dasda', N'sd34', N'optional', N'45', N'', CAST(N'2023-03-27T16:33:17.457' AS DateTime), NULL, 1010, 6, 45, 0, 1, 0)
GO
INSERT [dbo].[tbl_SubjectMaster] ([Id], [_Year], [SubjectName], [SubjectCode], [SubjectType], [TheoryMarks], [PracticalMarks], [EntryDate], [Modifydate], [BranchId], [Program], [PassingMarks], [IsPrectical], [Iswritten], [PrecticalPassingMarks]) VALUES (8, N'1', N'gdfg', N'fdgfd65', N'Conpalsary', N'56', N'', CAST(N'2023-04-06T11:17:57.557' AS DateTime), NULL, 1010, 6, 56, 0, 1, 0)
GO
INSERT [dbo].[tbl_SubjectMaster] ([Id], [_Year], [SubjectName], [SubjectCode], [SubjectType], [TheoryMarks], [PracticalMarks], [EntryDate], [Modifydate], [BranchId], [Program], [PassingMarks], [IsPrectical], [Iswritten], [PrecticalPassingMarks]) VALUES (9, N'1', N'ryrty', N'65yty', N'optional', N'67', N'', CAST(N'2023-04-06T11:18:13.357' AS DateTime), NULL, 1010, 6, 67, 0, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[tbl_SubjectMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Syllabus] ON 
GO
INSERT [dbo].[tbl_Syllabus] ([ID], [BranchID], [SubjectID], [_Year], [_Path], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [Program]) VALUES (2, 1010, 1, 1, N'\Syllabus\1\reward-coin.png', CAST(N'2023-01-31T14:43:18.367' AS DateTime), 1, CAST(N'2023-01-31T14:43:51.373' AS DateTime), 1, 6)
GO
INSERT [dbo].[tbl_Syllabus] ([ID], [BranchID], [SubjectID], [_Year], [_Path], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [Program]) VALUES (3, 1020, 2, 1, N'\Syllabus\1\color.png', CAST(N'2023-02-18T16:44:54.420' AS DateTime), 1, NULL, NULL, 6)
GO
SET IDENTITY_INSERT [dbo].[tbl_Syllabus] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Teacher] ON 
GO
INSERT [dbo].[tbl_Teacher] ([TeacherId], [Name], [Fname], [Email], [Mobile], [DOB], [Address], [salary], [Qualification], [EntryDate], [ModifyDate]) VALUES (1, N'TestGyanu', N'fsdf', N'TestGyanu@gmail.com', N'9685748596', N'1221-02-12', N'Gomatinagar', N'12000', N'B.Tech', CAST(N'2022-12-24T15:59:47.593' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_Teacher] ([TeacherId], [Name], [Fname], [Email], [Mobile], [DOB], [Address], [salary], [Qualification], [EntryDate], [ModifyDate]) VALUES (2, N'Ankit', N'Ramlakhan', N'ankit@gmail.com', N'63938288314', N'2023-01-05', N'Lakhimpur', N'25000', N'B.sc,B.Ed,M.A', CAST(N'2023-01-07T12:37:53.397' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_Teacher] ([TeacherId], [Name], [Fname], [Email], [Mobile], [DOB], [Address], [salary], [Qualification], [EntryDate], [ModifyDate]) VALUES (3, N'Amar', N'teter', N'amrnag78.com', N'8965236598', N'2023-04-01', N'ertertertert', N'54554', N'etert', CAST(N'2023-04-06T11:17:09.433' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_Teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_TimeTable] ON 
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (1, 6, 1010, 1, 7, 1, N'21:09', N'16:15', N'L-1', CAST(N'2023-04-06T16:10:05.247' AS DateTime), CAST(N'2023-04-06T17:15:36.360' AS DateTime), N'Monday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (2, 6, 1010, 1, 8, 2, N'22:10', N'22:10', N'L-2', CAST(N'2023-04-06T16:10:28.690' AS DateTime), NULL, N'Tuesday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (3, 6, 1010, 1, 9, 3, N'16:14', N'19:10', N'L-3', CAST(N'2023-04-06T16:10:45.907' AS DateTime), NULL, N'Wednesday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (4, 6, 1010, 1, 8, 2, N'21:18', N'16:23', N'er', CAST(N'2023-04-06T16:19:06.353' AS DateTime), CAST(N'2023-04-06T17:15:36.360' AS DateTime), N'Monday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (5, 6, 1010, 1, 8, 3, N'16:23', N'20:19', N'vcxv', CAST(N'2023-04-06T16:19:06.353' AS DateTime), CAST(N'2023-04-06T17:15:36.360' AS DateTime), N'Monday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (6, 6, 1010, 1, 8, 1, N'17:17', N'17:16', N'jgj', CAST(N'2023-04-06T17:15:36.360' AS DateTime), NULL, N'Monday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (7, 6, 1010, 1, 9, 1, N'19:15', N'17:16', N'ghjghj', CAST(N'2023-04-06T17:15:36.363' AS DateTime), NULL, N'Monday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (8, 6, 1010, 1, 7, 1, N'22:15', N'17:19', N'ghjghj', CAST(N'2023-04-06T17:15:36.363' AS DateTime), NULL, N'Monday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (9, 6, 1010, 1, 9, 2, N'17:20', N'22:15', N'ghj', CAST(N'2023-04-06T17:15:36.363' AS DateTime), NULL, N'Monday')
GO
SET IDENTITY_INSERT [dbo].[tbl_TimeTable] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_VideoLectures] ON 
GO
INSERT [dbo].[tbl_VideoLectures] ([Id], [BranchId], [SubjectId], [Year], [EntryBy], [EntryDate], [ModifyBy], [ModifyDate], [VideoUrl], [Program]) VALUES (3, 1020, 2, 1, 1, CAST(N'2023-02-18T13:25:41.013' AS DateTime), 1, CAST(N'2023-03-27T17:04:54.140' AS DateTime), N'https://www.youtube.com/watch?v=jdPkQcfCuYg', 6)
GO
SET IDENTITY_INSERT [dbo].[tbl_VideoLectures] OFF
GO
ALTER TABLE [dbo].[tbl_SubjectMaster] ADD  DEFAULT ((0)) FOR [BranchId]
GO
