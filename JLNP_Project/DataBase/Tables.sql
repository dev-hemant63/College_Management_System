USE [DB_CollageManagement]
GO
/****** Object:  Table [dbo].[tbl_Assignment]    Script Date: 01-02-2023 18:27:12 ******/
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_AssignSubject]    Script Date: 01-02-2023 18:27:12 ******/
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_BatchMaster]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_Branch]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_FeesHead]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_FeesSubmissionModes]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_Feessubmition]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_FeesType]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_login]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_MasterRole]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_Notifications]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_Program]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_ProgramBranchMapping]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_ProjectReport]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_student]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_Student_Admission]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_StudentAttandance]    Script Date: 01-02-2023 18:27:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_StudentAttandance](
	[StudentId] [int] NULL,
	[BranchId] [int] NULL,
	[Year] [int] NULL,
	[IsAttand] [int] NULL,
	[Entrydate] [datetime] NULL,
	[SubjectId] [bigint] NULL,
	[IsAbsent] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Studentfine]    Script Date: 01-02-2023 18:27:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Studentfine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[_Year] [int] NULL,
	[StudentName] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[tbl_StudentLedger]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_SubjectMaster]    Script Date: 01-02-2023 18:27:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SubjectMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Branch] [varchar](100) NULL,
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Syllabus]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_Teacher]    Script Date: 01-02-2023 18:27:12 ******/
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
/****** Object:  Table [dbo].[tbl_TimeTable]    Script Date: 01-02-2023 18:27:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TimeTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[Year] [int] NULL,
	[SubjectId] [int] NULL,
	[Day] [varchar](100) NULL,
	[Period1] [varchar](100) NULL,
	[Period2] [varchar](100) NULL,
	[Period3] [varchar](100) NULL,
	[Period4] [varchar](100) NULL,
	[Period5] [varchar](100) NULL,
	[Period6] [varchar](100) NULL,
	[EntryDate] [datetime] NULL,
	[Modifydate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_VideoLectures]    Script Date: 01-02-2023 18:27:12 ******/
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
SET IDENTITY_INSERT [dbo].[tbl_Assignment] ON 
GO
INSERT [dbo].[tbl_Assignment] ([Id], [BranchId], [Year], [SubjectId], [Assignment], [EntryDate], [Modifydate]) VALUES (1, 1000, 1, 1, N'gdfgdfg', CAST(N'2022-12-24T16:00:59.363' AS DateTime), CAST(N'2023-01-05T16:23:23.107' AS DateTime))
GO
INSERT [dbo].[tbl_Assignment] ([Id], [BranchId], [Year], [SubjectId], [Assignment], [EntryDate], [Modifydate]) VALUES (4, 1000, 1, 1, N'4 Chapters Learn In Java', CAST(N'2023-01-06T12:33:46.643' AS DateTime), CAST(N'2023-01-16T19:00:42.190' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_Assignment] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_AssignSubject] ON 
GO
INSERT [dbo].[tbl_AssignSubject] ([Id], [BranchId], [Year], [SubjectId], [TeacherId], [Entrydate], [ModifyDate]) VALUES (2, 1000, 2, 1, 1, CAST(N'2023-01-10T18:02:56.873' AS DateTime), CAST(N'2023-01-20T10:21:49.763' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_AssignSubject] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_BatchMaster] ON 
GO
INSERT [dbo].[tbl_BatchMaster] ([Id], [FromYear], [ToYear], [EntryDate], [ModifyDate]) VALUES (3, N'2022', N'2026', CAST(N'2023-01-14T13:44:50.100' AS DateTime), CAST(N'2023-01-14T13:51:30.743' AS DateTime))
GO
INSERT [dbo].[tbl_BatchMaster] ([Id], [FromYear], [ToYear], [EntryDate], [ModifyDate]) VALUES (4, N'2023', N'2028', CAST(N'2023-01-20T16:07:47.137' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_BatchMaster] ([Id], [FromYear], [ToYear], [EntryDate], [ModifyDate]) VALUES (5, N'2023', N'2027', CAST(N'2023-01-31T14:42:21.863' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_BatchMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Branch] ON 
GO
INSERT [dbo].[tbl_Branch] ([BranchId], [Branch_Name], [Branch_Code], [EntryDate], [ModifyDate]) VALUES (1000, N'Test', N'102', CAST(N'2022-12-24T15:43:17.940' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_Branch] ([BranchId], [Branch_Name], [Branch_Code], [EntryDate], [ModifyDate]) VALUES (1010, N'ComputerScience&Engineering', N'2356', CAST(N'2022-12-29T17:23:21.140' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_Branch] ([BranchId], [Branch_Name], [Branch_Code], [EntryDate], [ModifyDate]) VALUES (1020, N'Machanical', N'2356', CAST(N'2023-01-07T12:38:24.043' AS DateTime), NULL)
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
INSERT [dbo].[tbl_Feessubmition] ([Id], [StudentName], [FatherName], [Branch], [_Year], [Amount], [FeesSubmitionMode], [EntryDate], [Program], [FeesType], [CheckNumber], [TransctionID], [Enrollment], [FeesReceiptNo]) VALUES (11, N'Hemant', N'Ramlakhan nag', N'1010', N'1', N'75000', N'2', CAST(N'2023-01-31T17:14:19.660' AS DateTime), 5, 0, 235654, NULL, N'E202300000', N'202300000000')
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [StudentName], [FatherName], [Branch], [_Year], [Amount], [FeesSubmitionMode], [EntryDate], [Program], [FeesType], [CheckNumber], [TransctionID], [Enrollment], [FeesReceiptNo]) VALUES (12, N'Hemant', N'Ramlakhan nag', N'1010', N'1', N'50000', N'1', CAST(N'2023-01-31T17:15:34.410' AS DateTime), 5, 0, NULL, NULL, N'E202300000', N'202300000001')
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [StudentName], [FatherName], [Branch], [_Year], [Amount], [FeesSubmitionMode], [EntryDate], [Program], [FeesType], [CheckNumber], [TransctionID], [Enrollment], [FeesReceiptNo]) VALUES (13, N'Hemant', N'Ramlakhan nag', N'1010', N'1', N'20000', N'2', CAST(N'2023-01-31T17:35:16.353' AS DateTime), 5, 0, 256332, NULL, N'E202300000', N'202300000001')
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [StudentName], [FatherName], [Branch], [_Year], [Amount], [FeesSubmitionMode], [EntryDate], [Program], [FeesType], [CheckNumber], [TransctionID], [Enrollment], [FeesReceiptNo]) VALUES (14, N'Hemant', N'Ramlakhan nag', N'1010', N'1', N'5000', N'1', CAST(N'2023-01-31T17:36:46.380' AS DateTime), 5, 0, NULL, NULL, N'E202300000', N'202300000001')
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [StudentName], [FatherName], [Branch], [_Year], [Amount], [FeesSubmitionMode], [EntryDate], [Program], [FeesType], [CheckNumber], [TransctionID], [Enrollment], [FeesReceiptNo]) VALUES (15, N'Raj', N'Prakash Mishra', N'1020', N'1', N'5460', N'2', CAST(N'2023-02-01T10:42:26.420' AS DateTime), 6, 0, 123456, NULL, N'E202300001', N'202300000001')
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [StudentName], [FatherName], [Branch], [_Year], [Amount], [FeesSubmitionMode], [EntryDate], [Program], [FeesType], [CheckNumber], [TransctionID], [Enrollment], [FeesReceiptNo]) VALUES (16, N'Raj', N'Prakash Mishra', N'1020', N'1', N'20000', N'1', CAST(N'2023-02-01T11:31:53.037' AS DateTime), 6, 0, NULL, NULL, N'E202300001', N'202300000001')
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [StudentName], [FatherName], [Branch], [_Year], [Amount], [FeesSubmitionMode], [EntryDate], [Program], [FeesType], [CheckNumber], [TransctionID], [Enrollment], [FeesReceiptNo]) VALUES (17, N'Raj', N'Prakash Mishra', N'1020', N'1', N'10000', N'1', CAST(N'2023-02-01T11:37:16.173' AS DateTime), 6, 0, NULL, NULL, N'E202300001', N'202300000001')
GO
SET IDENTITY_INSERT [dbo].[tbl_Feessubmition] OFF
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
INSERT [dbo].[tbl_login] ([ID], [Name], [UserId], [LoginTypeId], [Password], [EntryDate], [_UId], [IsActive]) VALUES (3, N'Hemant', N'E202300000', 3, N'6390749256', CAST(N'2023-01-06T16:47:27.900' AS DateTime), 2, 1)
GO
INSERT [dbo].[tbl_login] ([ID], [Name], [UserId], [LoginTypeId], [Password], [EntryDate], [_UId], [IsActive]) VALUES (11, N'Raj', N'E202300001', 3, N'8957180204', CAST(N'2023-01-31T18:21:56.720' AS DateTime), 4, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_login] OFF
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
SET IDENTITY_INSERT [dbo].[tbl_Program] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ProgramBranchMapping] ON 
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (6, 4, 1020, CAST(N'2023-01-11T13:29:07.147' AS DateTime), CAST(N'2023-01-18T17:26:35.000' AS DateTime), 1, 1, 3)
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (7, 5, 1010, CAST(N'2023-01-14T16:11:16.530' AS DateTime), CAST(N'2023-01-18T17:26:27.590' AS DateTime), 1, 1, 2)
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (8, 6, 1010, CAST(N'2023-01-20T16:08:00.640' AS DateTime), NULL, 1, NULL, 4)
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (9, 6, 1020, CAST(N'2023-01-21T10:33:56.730' AS DateTime), NULL, 1, NULL, 4)
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (10, 6, 1000, CAST(N'2023-01-21T10:34:03.240' AS DateTime), NULL, 1, NULL, 4)
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (11, 3, 1010, CAST(N'2023-01-28T12:51:45.690' AS DateTime), NULL, 1, NULL, 3)
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (12, 6, 1010, CAST(N'2023-01-31T14:42:46.500' AS DateTime), NULL, 1, NULL, 4)
GO
SET IDENTITY_INSERT [dbo].[tbl_ProgramBranchMapping] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ProjectReport] ON 
GO
INSERT [dbo].[tbl_ProjectReport] ([ProjectId], [StudentName], [Branch], [_Year], [Enrollment], [ProjectTitle], [Techonology], [Entrydate], [Program]) VALUES (1, N'Hemant', N'1010', N'1', N'E202300000', N'Project', N'.Net', N'Jan 20 2023  3:41PM', 5)
GO
SET IDENTITY_INSERT [dbo].[tbl_ProjectReport] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_student] ON 
GO
INSERT [dbo].[tbl_student] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [Entrolment_No], [DOB], [FatherOccupation], [MotherName], [Program]) VALUES (1, N'Hemant', N'Ramlakhan nag', N'amarnag702@gmail.com', N'6390749256', N'1010', N'Lucknow', N'Male', CAST(N'2023-01-19T19:06:14.410' AS DateTime), N'A', N'20230000', N'2004-07-15', N'Farmer', N'Urmila Nag', 3)
GO
INSERT [dbo].[tbl_student] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [Entrolment_No], [DOB], [FatherOccupation], [MotherName], [Program]) VALUES (2, N'Shivam Tiwari', N'Father', N'st820372@gmail.com', N'8956784512', N'1010', N'Lucknow', N'Male', CAST(N'2023-01-23T14:28:43.517' AS DateTime), N'A', N'20230001', N'2022-06-17', N'Farmar', N'Mother', 6)
GO
INSERT [dbo].[tbl_student] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [Entrolment_No], [DOB], [FatherOccupation], [MotherName], [Program]) VALUES (3, N'Raj', N'Prakash Mishra', N'amarnag702@gmail.com', N'8957180204', N'1020', N'Lakhimpur', N'Male', CAST(N'2023-01-31T18:21:06.260' AS DateTime), N'A', N'20230002', N'2006-07-07', N'Droctor', N'Rinki Mishra', 6)
GO
SET IDENTITY_INSERT [dbo].[tbl_student] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Student_Admission] ON 
GO
INSERT [dbo].[tbl_Student_Admission] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Admissiondate], [Group_Name], [DOB], [EntrollmentNo], [Fess_Status], [_Year], [Program], [MotherName], [FatherOccupation], [Religion]) VALUES (1, N'Institute', N'', N'amarnag702@gmail.com', N'6390749256', N'', N'Dhaurahra Lakhimpur-Kheri', N'', CAST(N'2023-01-19T14:45:45.993' AS DateTime), N'', N'', N'', N'1', N'', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_Student_Admission] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Admissiondate], [Group_Name], [DOB], [EntrollmentNo], [Fess_Status], [_Year], [Program], [MotherName], [FatherOccupation], [Religion]) VALUES (2, N'Hemant', N'Ramlakhan nag', N'amarnag702@gmail.com', N'6390749256', N'1010', N'Lucknow', N'Male', CAST(N'2023-01-20T14:54:31.053' AS DateTime), N'A', N'2004-07-15', N'E202300000', N'2', N'1', 5, N'Urmila Nag', N'Farmer', N'Hindu')
GO
INSERT [dbo].[tbl_Student_Admission] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Admissiondate], [Group_Name], [DOB], [EntrollmentNo], [Fess_Status], [_Year], [Program], [MotherName], [FatherOccupation], [Religion]) VALUES (4, N'Raj', N'Prakash Mishra', N'amarnag702@gmail.com', N'8957180204', N'1020', N'Lakhimpur', N'--Select Gender--', CAST(N'2023-01-31T18:21:56.717' AS DateTime), N'A', N'2006-07-07', N'E202300001', N'1', N'1', 6, N'Rinki Mishra', N'Droctor', N'Hindu')
GO
SET IDENTITY_INSERT [dbo].[tbl_Student_Admission] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Studentfine] ON 
GO
INSERT [dbo].[tbl_Studentfine] ([Id], [BranchId], [_Year], [StudentName], [EnrollmentNumber], [FineAmount], [FineResion], [EntryDate], [ModifyDate], [FineStatus]) VALUES (2, 1000, 2, N'Gyan', N'E202200000', N'100', N'chakkar', CAST(N'2022-12-24T16:19:14.850' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tbl_Studentfine] ([Id], [BranchId], [_Year], [StudentName], [EnrollmentNumber], [FineAmount], [FineResion], [EntryDate], [ModifyDate], [FineStatus]) VALUES (3, 1010, 1, N'Danish', N'E202300000', N'120', N'Sleeping In the Class room', CAST(N'2023-01-10T18:05:17.750' AS DateTime), NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_Studentfine] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_StudentLedger] ON 
GO
INSERT [dbo].[tbl_StudentLedger] ([ID], [EnrollmentNo], [TotalFees], [TotalSubmitedFees], [Totalduefees], [EntryDate], [ModifyDate], [Mode]) VALUES (11, N'E202300000', CAST(150000.000000000 AS Numeric(18, 9)), CAST(75000.000000000 AS Numeric(18, 9)), CAST(75000.000000000 AS Numeric(18, 9)), CAST(N'2023-01-31T17:14:19.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tbl_StudentLedger] ([ID], [EnrollmentNo], [TotalFees], [TotalSubmitedFees], [Totalduefees], [EntryDate], [ModifyDate], [Mode]) VALUES (12, N'E202300000', CAST(75000.000000000 AS Numeric(18, 9)), CAST(50000.000000000 AS Numeric(18, 9)), CAST(25000.000000000 AS Numeric(18, 9)), CAST(N'2023-01-31T17:15:34.490' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tbl_StudentLedger] ([ID], [EnrollmentNo], [TotalFees], [TotalSubmitedFees], [Totalduefees], [EntryDate], [ModifyDate], [Mode]) VALUES (13, N'E202300000', CAST(25000.000000000 AS Numeric(18, 9)), CAST(20000.000000000 AS Numeric(18, 9)), CAST(5000.000000000 AS Numeric(18, 9)), CAST(N'2023-01-31T17:35:16.353' AS DateTime), NULL, 2)
GO
INSERT [dbo].[tbl_StudentLedger] ([ID], [EnrollmentNo], [TotalFees], [TotalSubmitedFees], [Totalduefees], [EntryDate], [ModifyDate], [Mode]) VALUES (14, N'E202300000', CAST(5000.000000000 AS Numeric(18, 9)), CAST(5000.000000000 AS Numeric(18, 9)), CAST(0.000000000 AS Numeric(18, 9)), CAST(N'2023-01-31T17:36:46.383' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tbl_StudentLedger] ([ID], [EnrollmentNo], [TotalFees], [TotalSubmitedFees], [Totalduefees], [EntryDate], [ModifyDate], [Mode]) VALUES (15, N'E202300001', CAST(45460.000000000 AS Numeric(18, 9)), CAST(5460.000000000 AS Numeric(18, 9)), CAST(40000.000000000 AS Numeric(18, 9)), CAST(N'2023-02-01T10:42:26.420' AS DateTime), NULL, 2)
GO
INSERT [dbo].[tbl_StudentLedger] ([ID], [EnrollmentNo], [TotalFees], [TotalSubmitedFees], [Totalduefees], [EntryDate], [ModifyDate], [Mode]) VALUES (16, N'E202300001', CAST(40000.000000000 AS Numeric(18, 9)), CAST(20000.000000000 AS Numeric(18, 9)), CAST(20000.000000000 AS Numeric(18, 9)), CAST(N'2023-02-01T11:31:53.037' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tbl_StudentLedger] ([ID], [EnrollmentNo], [TotalFees], [TotalSubmitedFees], [Totalduefees], [EntryDate], [ModifyDate], [Mode]) VALUES (17, N'E202300001', CAST(20000.000000000 AS Numeric(18, 9)), CAST(10000.000000000 AS Numeric(18, 9)), CAST(10000.000000000 AS Numeric(18, 9)), CAST(N'2023-02-01T11:37:16.173' AS DateTime), NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_StudentLedger] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_SubjectMaster] ON 
GO
INSERT [dbo].[tbl_SubjectMaster] ([Id], [Branch], [_Year], [SubjectName], [SubjectCode], [SubjectType], [TheoryMarks], [PracticalMarks], [EntryDate], [Modifydate], [BranchId], [Program], [PassingMarks]) VALUES (1, N'1010', N'1', N'Mathametics', N'M-2323', N'Conpalsary', N'50', N'50', CAST(N'2023-01-21T13:49:04.070' AS DateTime), CAST(N'2023-01-21T14:40:57.490' AS DateTime), 1010, 6, 23)
GO
SET IDENTITY_INSERT [dbo].[tbl_SubjectMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Syllabus] ON 
GO
INSERT [dbo].[tbl_Syllabus] ([ID], [BranchID], [SubjectID], [_Year], [_Path], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [Program]) VALUES (2, 1010, 1, 1, N'\Syllabus\1\reward-coin.png', CAST(N'2023-01-31T14:43:18.367' AS DateTime), 1, CAST(N'2023-01-31T14:43:51.373' AS DateTime), 1, 6)
GO
SET IDENTITY_INSERT [dbo].[tbl_Syllabus] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Teacher] ON 
GO
INSERT [dbo].[tbl_Teacher] ([TeacherId], [Name], [Fname], [Email], [Mobile], [DOB], [Address], [salary], [Qualification], [EntryDate], [ModifyDate]) VALUES (1, N'TestGyanu', N'fsdf', N'TestGyanu@gmail.com', N'9685748596', N'1221-02-12', N'Gomatinagar', N'12000', N'B.Tech', CAST(N'2022-12-24T15:59:47.593' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_Teacher] ([TeacherId], [Name], [Fname], [Email], [Mobile], [DOB], [Address], [salary], [Qualification], [EntryDate], [ModifyDate]) VALUES (2, N'Ankit', N'Ramlakhan', N'ankit@gmail.com', N'63938288314', N'2023-01-05', N'Lakhimpur', N'25000', N'B.sc,B.Ed,M.A', CAST(N'2023-01-07T12:37:53.397' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_Teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_TimeTable] ON 
GO
INSERT [dbo].[tbl_TimeTable] ([Id], [BranchId], [Year], [SubjectId], [Day], [Period1], [Period2], [Period3], [Period4], [Period5], [Period6], [EntryDate], [Modifydate]) VALUES (1, 1000, 1, 1, N'Monday', N'Mathematics', NULL, NULL, NULL, NULL, N'Mathematics', CAST(N'2022-12-24T15:52:22.373' AS DateTime), CAST(N'2022-12-24T15:52:56.100' AS DateTime))
GO
INSERT [dbo].[tbl_TimeTable] ([Id], [BranchId], [Year], [SubjectId], [Day], [Period1], [Period2], [Period3], [Period4], [Period5], [Period6], [EntryDate], [Modifydate]) VALUES (2, 1000, 1, 1, N'Tuseday', N'Mathematics', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-12-24T15:53:09.083' AS DateTime), CAST(N'2022-12-24T15:53:09.083' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_TimeTable] OFF
GO
ALTER TABLE [dbo].[tbl_SubjectMaster] ADD  DEFAULT ((0)) FOR [BranchId]
GO
