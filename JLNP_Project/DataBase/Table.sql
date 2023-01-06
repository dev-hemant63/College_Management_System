USE [DB_CollageManagement]
GO
/****** Object:  Table [dbo].[tbl_Assignment]    Script Date: 06-01-2023 18:39:44 ******/
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
/****** Object:  Table [dbo].[tbl_AssignSubject]    Script Date: 06-01-2023 18:39:44 ******/
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
/****** Object:  Table [dbo].[tbl_Branch]    Script Date: 06-01-2023 18:39:44 ******/
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
/****** Object:  Table [dbo].[tbl_FeesHead]    Script Date: 06-01-2023 18:39:44 ******/
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Feessubmition]    Script Date: 06-01-2023 18:39:44 ******/
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_login]    Script Date: 06-01-2023 18:39:44 ******/
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
/****** Object:  Table [dbo].[tbl_MasterRole]    Script Date: 06-01-2023 18:39:44 ******/
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
/****** Object:  Table [dbo].[tbl_Notifications]    Script Date: 06-01-2023 18:39:44 ******/
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
/****** Object:  Table [dbo].[tbl_ProjectReport]    Script Date: 06-01-2023 18:39:44 ******/
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
PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_student]    Script Date: 06-01-2023 18:39:44 ******/
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Student_Admission]    Script Date: 06-01-2023 18:39:44 ******/
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_StudentAttandance]    Script Date: 06-01-2023 18:39:44 ******/
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
/****** Object:  Table [dbo].[tbl_Studentfine]    Script Date: 06-01-2023 18:39:44 ******/
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
/****** Object:  Table [dbo].[tbl_SubjectMaster]    Script Date: 06-01-2023 18:39:44 ******/
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Syllabus]    Script Date: 06-01-2023 18:39:44 ******/
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
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Teacher]    Script Date: 06-01-2023 18:39:44 ******/
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
/****** Object:  Table [dbo].[tbl_TimeTable]    Script Date: 06-01-2023 18:39:44 ******/
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
SET IDENTITY_INSERT [dbo].[tbl_Assignment] ON 
GO
INSERT [dbo].[tbl_Assignment] ([Id], [BranchId], [Year], [SubjectId], [Assignment], [EntryDate], [Modifydate]) VALUES (1, 1000, 1, 1, N'gdfgdfg', CAST(N'2022-12-24T16:00:59.363' AS DateTime), CAST(N'2023-01-05T16:23:23.107' AS DateTime))
GO
INSERT [dbo].[tbl_Assignment] ([Id], [BranchId], [Year], [SubjectId], [Assignment], [EntryDate], [Modifydate]) VALUES (4, 1000, 1, 1, N'4 Chapters Learn In Java', CAST(N'2023-01-06T12:33:46.643' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_Assignment] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Branch] ON 
GO
INSERT [dbo].[tbl_Branch] ([BranchId], [Branch_Name], [Branch_Code], [EntryDate], [ModifyDate]) VALUES (1000, N'Test', N'102', CAST(N'2022-12-24T15:43:17.940' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_Branch] ([BranchId], [Branch_Name], [Branch_Code], [EntryDate], [ModifyDate]) VALUES (1010, N'ComputerScience&Engineering', N'2356', CAST(N'2022-12-29T17:23:21.140' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_Branch] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_FeesHead] ON 
GO
INSERT [dbo].[tbl_FeesHead] ([Id], [Branch], [Branch_Code], [_Year], [EntryBy], [EntryDate], [Modifydate], [Amount]) VALUES (1, N'1000', N'', N'2', N'', CAST(N'2022-12-24T15:48:33.457' AS DateTime), CAST(N'2022-12-24T15:49:36.910' AS DateTime), N'23000')
GO
INSERT [dbo].[tbl_FeesHead] ([Id], [Branch], [Branch_Code], [_Year], [EntryBy], [EntryDate], [Modifydate], [Amount]) VALUES (2, N'1000', N'', N'1', N'', CAST(N'2023-01-06T16:48:47.570' AS DateTime), NULL, N'24000')
GO
SET IDENTITY_INSERT [dbo].[tbl_FeesHead] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Feessubmition] ON 
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [StudentName], [FatherName], [Branch], [_Year], [Amount], [FeesSubmitionMode], [EntryDate]) VALUES (1, N'Test', N'gdfg', N'1000', N'1', N'23000', N'Cash', CAST(N'2022-12-24T15:49:13.483' AS DateTime))
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [StudentName], [FatherName], [Branch], [_Year], [Amount], [FeesSubmitionMode], [EntryDate]) VALUES (2, N'Hemant', N'Ramlakhan Nag', N'1000', N'1', N'24000', N'Cash', CAST(N'2023-01-06T16:49:12.507' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_Feessubmition] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_login] ON 
GO
INSERT [dbo].[tbl_login] ([ID], [Name], [UserId], [LoginTypeId], [Password], [EntryDate], [_UId], [IsActive]) VALUES (1, N'Admin', N'1', 1, N'admin', CAST(N'2022-12-24T15:28:33.587' AS DateTime), 1, 1)
GO
INSERT [dbo].[tbl_login] ([ID], [Name], [UserId], [LoginTypeId], [Password], [EntryDate], [_UId], [IsActive]) VALUES (3, N'Hemant', N'E202300000', 3, N'8933014340', CAST(N'2023-01-06T16:47:27.900' AS DateTime), 2, 1)
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
SET IDENTITY_INSERT [dbo].[tbl_Notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_student] ON 
GO
INSERT [dbo].[tbl_student] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [Entrolment_No], [DOB]) VALUES (1, N'Gyan', N'fathersnae', N'gyanu12lll@gmail.com', N'6396857485', N'1000', N'Gamtinagar', N'Male', CAST(N'2022-12-24T15:44:53.167' AS DateTime), N'A', N'20220000', N'2011-05-04')
GO
INSERT [dbo].[tbl_student] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [Entrolment_No], [DOB]) VALUES (2, N'Hemant', N'Ramlakhan Nag', N'Hemant@gmail.com', N'8933014340', N'1000', N'Lakhimpur kheri', N'Male', CAST(N'2023-01-06T16:45:55.273' AS DateTime), N'A', N'20220001', N'2004-07-15')
GO
SET IDENTITY_INSERT [dbo].[tbl_student] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Student_Admission] ON 
GO
INSERT [dbo].[tbl_Student_Admission] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Admissiondate], [Group_Name], [DOB], [EntrollmentNo], [Fess_Status], [_Year]) VALUES (1, N'Admin', N'', N'institute@gmail.com', N'6390749256', N'', N'Institute Address', N'', CAST(N'2023-01-06T16:43:48.653' AS DateTime), N'', N'', N'', N'', N'')
GO
INSERT [dbo].[tbl_Student_Admission] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Admissiondate], [Group_Name], [DOB], [EntrollmentNo], [Fess_Status], [_Year]) VALUES (2, N'Hemant', N'Ramlakhan Nag', N'Hemant@gmail.com', N'8933014340', N'1000', N'Lakhimpur kheri', N'Male', CAST(N'2023-01-06T16:47:27.900' AS DateTime), N'A', N'2004-07-15', N'E202300000', N'Success', N'1')
GO
SET IDENTITY_INSERT [dbo].[tbl_Student_Admission] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Studentfine] ON 
GO
INSERT [dbo].[tbl_Studentfine] ([Id], [BranchId], [_Year], [StudentName], [EnrollmentNumber], [FineAmount], [FineResion], [EntryDate], [ModifyDate], [FineStatus]) VALUES (2, 1000, 3, N'Gyan', N'E202200000', N'100', N'chakkar', CAST(N'2022-12-24T16:19:14.850' AS DateTime), NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_Studentfine] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_SubjectMaster] ON 
GO
INSERT [dbo].[tbl_SubjectMaster] ([Id], [Branch], [_Year], [SubjectName], [SubjectCode], [SubjectType], [TheoryMarks], [PracticalMarks], [EntryDate], [Modifydate], [BranchId]) VALUES (1, N'1000', N'1', N'Mathematic', N'M502', N'Conpalsary', N'50', N'50', CAST(N'2022-12-24T15:51:50.057' AS DateTime), CAST(N'2022-12-31T12:31:41.323' AS DateTime), 1000)
GO
INSERT [dbo].[tbl_SubjectMaster] ([Id], [Branch], [_Year], [SubjectName], [SubjectCode], [SubjectType], [TheoryMarks], [PracticalMarks], [EntryDate], [Modifydate], [BranchId]) VALUES (2, N'1010', N'1', N'Testing', N'TST2023', N'optional', N'23', N'23', CAST(N'2022-12-29T17:24:11.213' AS DateTime), NULL, 1010)
GO
INSERT [dbo].[tbl_SubjectMaster] ([Id], [Branch], [_Year], [SubjectName], [SubjectCode], [SubjectType], [TheoryMarks], [PracticalMarks], [EntryDate], [Modifydate], [BranchId]) VALUES (3, N'1000', N'1', N'Fundamental of computer and Information techonology', N'FOCIT2356', N'Conpalsary', N'50', N'50', CAST(N'2023-01-05T18:52:19.343' AS DateTime), NULL, 1000)
GO
INSERT [dbo].[tbl_SubjectMaster] ([Id], [Branch], [_Year], [SubjectName], [SubjectCode], [SubjectType], [TheoryMarks], [PracticalMarks], [EntryDate], [Modifydate], [BranchId]) VALUES (4, N'1000', N'1', N'Applied Physics', N'PHY2023', N'Conpalsary', N'50', N'30', CAST(N'2023-01-06T17:10:40.333' AS DateTime), NULL, 1000)
GO
SET IDENTITY_INSERT [dbo].[tbl_SubjectMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Syllabus] ON 
GO
INSERT [dbo].[tbl_Syllabus] ([ID], [BranchID], [SubjectID], [_Year], [_Path], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy]) VALUES (1, 1000, 1, 1, N'\Syllabus\1\Man.jpeg', CAST(N'2023-01-04T16:49:10.313' AS DateTime), 1, CAST(N'2023-01-05T15:34:11.083' AS DateTime), 1)
GO
INSERT [dbo].[tbl_Syllabus] ([ID], [BranchID], [SubjectID], [_Year], [_Path], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy]) VALUES (3, 1010, 2, 1, N'\Syllabus\1\RD Service(FMR+FIR) Integration-Guide (1).pdf', CAST(N'2023-01-06T15:13:17.480' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[tbl_Syllabus] ([ID], [BranchID], [SubjectID], [_Year], [_Path], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy]) VALUES (4, 1000, 3, 1, N'\Syllabus\1\1.jpg', CAST(N'2023-01-06T15:13:43.640' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[tbl_Syllabus] ([ID], [BranchID], [SubjectID], [_Year], [_Path], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy]) VALUES (5, 1000, 4, 1, N'\Syllabus\1\Application Form Status Details.pdf', CAST(N'2023-01-06T17:11:16.300' AS DateTime), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_Syllabus] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Teacher] ON 
GO
INSERT [dbo].[tbl_Teacher] ([TeacherId], [Name], [Fname], [Email], [Mobile], [DOB], [Address], [salary], [Qualification], [EntryDate], [ModifyDate]) VALUES (1, N'TestGyanu', N'fsdf', N'TestGyanu@gmail.com', N'9685748596', N'1221-02-12', N'Gomatinagar', N'12000', N'B.Tech', CAST(N'2022-12-24T15:59:47.593' AS DateTime), NULL)
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
