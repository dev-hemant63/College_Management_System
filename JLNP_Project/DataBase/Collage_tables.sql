USE [DB_CollageERP]
GO
/****** Object:  Table [dbo].[tbl_VideoLectures]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_VideoLectures]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_VideoLectures]
GO
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Users]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Users]
GO
/****** Object:  Table [dbo].[tbl_TimeTable]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_TimeTable]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_TimeTable]
GO
/****** Object:  Table [dbo].[tbl_Teacher]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Teacher]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Teacher]
GO
/****** Object:  Table [dbo].[tbl_Syllabus]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Syllabus]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Syllabus]
GO
/****** Object:  Table [dbo].[tbl_SubjectMaster]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_SubjectMaster]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_SubjectMaster]
GO
/****** Object:  Table [dbo].[tbl_StudentMarks]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_StudentMarks]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_StudentMarks]
GO
/****** Object:  Table [dbo].[tbl_StudentLedger]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_StudentLedger]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_StudentLedger]
GO
/****** Object:  Table [dbo].[tbl_Studentfine]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Studentfine]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Studentfine]
GO
/****** Object:  Table [dbo].[tbl_StudentAttandance]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_StudentAttandance]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_StudentAttandance]
GO
/****** Object:  Table [dbo].[tbl_Student_Admission]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Student_Admission]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Student_Admission]
GO
/****** Object:  Table [dbo].[tbl_student]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_student]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_student]
GO
/****** Object:  Table [dbo].[tbl_session]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_session]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_session]
GO
/****** Object:  Table [dbo].[tbl_RegistrationMaster]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_RegistrationMaster]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_RegistrationMaster]
GO
/****** Object:  Table [dbo].[tbl_Registration]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Registration]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Registration]
GO
/****** Object:  Table [dbo].[tbl_ProjectReport]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_ProjectReport]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_ProjectReport]
GO
/****** Object:  Table [dbo].[tbl_ProgramBranchMapping]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_ProgramBranchMapping]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_ProgramBranchMapping]
GO
/****** Object:  Table [dbo].[tbl_Program]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Program]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Program]
GO
/****** Object:  Table [dbo].[tbl_Notifications]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Notifications]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Notifications]
GO
/****** Object:  Table [dbo].[tbl_MasterRole]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_MasterRole]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_MasterRole]
GO
/****** Object:  Table [dbo].[tbl_MasterRequestMode]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_MasterRequestMode]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_MasterRequestMode]
GO
/****** Object:  Table [dbo].[tbl_login]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_login]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_login]
GO
/****** Object:  Table [dbo].[tbl_Grade]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Grade]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Grade]
GO
/****** Object:  Table [dbo].[tbl_FeesType]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_FeesType]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_FeesType]
GO
/****** Object:  Table [dbo].[tbl_Feessubmition]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Feessubmition]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Feessubmition]
GO
/****** Object:  Table [dbo].[tbl_FeesSubmissionModes]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_FeesSubmissionModes]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_FeesSubmissionModes]
GO
/****** Object:  Table [dbo].[tbl_FeesHistory]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_FeesHistory]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_FeesHistory]
GO
/****** Object:  Table [dbo].[tbl_FeesHead]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_FeesHead]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_FeesHead]
GO
/****** Object:  Table [dbo].[tbl_ExamType]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_ExamType]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_ExamType]
GO
/****** Object:  Table [dbo].[tbl_ExamGroup]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_ExamGroup]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_ExamGroup]
GO
/****** Object:  Table [dbo].[tbl_ExamDetail]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_ExamDetail]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_ExamDetail]
GO
/****** Object:  Table [dbo].[tbl_Exam]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Exam]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Exam]
GO
/****** Object:  Table [dbo].[tbl_Conversation]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Conversation]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Conversation]
GO
/****** Object:  Table [dbo].[tbl_Branch]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Branch]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Branch]
GO
/****** Object:  Table [dbo].[tbl_BatchMaster]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_BatchMaster]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_BatchMaster]
GO
/****** Object:  Table [dbo].[tbl_AssignSubject]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_AssignSubject]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_AssignSubject]
GO
/****** Object:  Table [dbo].[tbl_Assignment]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Assignment]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Assignment]
GO
/****** Object:  Table [dbo].[tbl_AssignExam]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_AssignExam]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_AssignExam]
GO
/****** Object:  Table [dbo].[tbl_AdmissionMaster]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_AdmissionMaster]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_AdmissionMaster]
GO
/****** Object:  Table [dbo].[Master_AddmissionType]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Master_AddmissionType]') AND type in (N'U'))
DROP TABLE [dbo].[Master_AddmissionType]
GO
/****** Object:  Table [dbo].[Log_DBError]    Script Date: 9/19/2023 11:04:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Log_DBError]') AND type in (N'U'))
DROP TABLE [dbo].[Log_DBError]
GO
/****** Object:  Table [dbo].[Log_DBError]    Script Date: 9/19/2023 11:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log_DBError](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ErrorMessage] [varchar](max) NULL,
	[ErrorProcedure] [varchar](50) NULL,
	[Entrydate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_AddmissionType]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_AddmissionType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_AdmissionMaster]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_AdmissionMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Startdate] [varchar](50) NULL,
	[Enddate] [varchar](50) NULL,
	[Entrydate] [datetime] NULL,
	[Modifydate] [datetime] NULL,
	[IsOpen] [bit] NULL,
	[Program] [int] NULL,
	[Branch] [int] NULL,
	[AdmissionType] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_AssignExam]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_AssignExam](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EnrollemntNo] [varchar](240) NULL,
	[ExamID] [int] NULL,
	[Program] [int] NULL,
	[Branch] [int] NULL,
	[Year] [int] NULL,
	[EntryDate] [datetime] NULL,
	[IsAssign] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Assignment]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[Paths] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_AssignSubject]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[ProgramId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_BatchMaster]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_BatchMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FromYear] [varchar](10) NULL,
	[ToYear] [varchar](10) NULL,
	[EntryDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Branch]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[TotalSheet] [int] NULL,
	[IsCounseling] [bit] NULL,
	[AvailableSheet] [int] NULL,
	[AvailabeLateralSheet] [int] NULL,
	[TotalLateralSheet] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Conversation]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Conversation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SenderId] [int] NOT NULL,
	[ReciverId] [int] NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[EntryOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Exam]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Exam](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Exam] [varchar](150) NULL,
	[GroupId] [int] NULL,
	[EntryDate] [datetime] NULL,
	[EntryBy] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ExamDetail]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ExamDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [int] NULL,
	[SubjectId] [int] NULL,
	[Date] [varchar](50) NULL,
	[Time] [varchar](50) NULL,
	[Duration] [int] NULL,
	[RoomNo] [varchar](50) NULL,
	[MinMarks] [int] NULL,
	[MaxMarks] [int] NULL,
	[Entrydate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ExamGroup]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ExamGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExamType] [int] NULL,
	[ExamGroup] [varchar](250) NULL,
	[Description] [varchar](max) NULL,
	[EntryDate] [datetime] NULL,
	[EntryBy] [int] NULL,
	[ExamCount] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ExamType]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ExamType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExamType] [varchar](150) NULL,
	[EntryDate] [datetime] NULL,
	[EntryBy] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_FeesHead]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[FeesType] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_FeesHistory]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_FeesHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TotalFees] [numeric](10, 2) NULL,
	[Fees] [numeric](10, 2) NULL,
	[DueFees] [numeric](10, 2) NULL,
	[ReffId] [int] NULL,
	[EntryDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_FeesSubmissionModes]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_FeesSubmissionModes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Mode] [varchar](120) NULL,
	[EntryDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Feessubmition]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Feessubmition](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [varchar](100) NULL,
	[FeesSubmitionMode] [varchar](100) NULL,
	[EntryDate] [datetime] NULL,
	[FeesType] [int] NULL,
	[CheckNumber] [varchar](30) NULL,
	[TransctionID] [varchar](30) NULL,
	[FeesReceiptNo] [varchar](100) NULL,
	[StudentId] [int] NULL,
	[ReffId] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_FeesType]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[ModifyDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Grade]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Grade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExamType] [int] NULL,
	[PrecentUpto] [int] NULL,
	[PrecentFrom] [int] NULL,
	[GradePoint] [int] NULL,
	[Discreption] [varchar](max) NULL,
	[Entrydate] [datetime] NULL,
	[GradeName] [varchar](240) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_login]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](240) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MasterRequestMode]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MasterRequestMode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ResuestMode] [varchar](100) NULL,
	[Entrydate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MasterRole]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MasterRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NULL,
	[Role] [varchar](50) NULL,
	[EntryDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Notifications]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[IsStaff] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Program]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[ModifyBy] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ProgramBranchMapping]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[BatchId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ProjectReport]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[Program] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Registration]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Registration](
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
	[DOB] [varchar](50) NULL,
	[FatherOccupation] [varchar](150) NULL,
	[MotherName] [varchar](150) NULL,
	[Program] [int] NULL,
	[AdmissionType] [int] NULL,
	[RegistrationNo] [varchar](50) NULL,
	[EntryBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_RegistrationMaster]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_RegistrationMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Startdate] [varchar](50) NULL,
	[Enddate] [varchar](50) NULL,
	[Entrydate] [datetime] NULL,
	[Modifydate] [datetime] NULL,
	[IsOpen] [bit] NULL,
	[Program] [int] NULL,
	[Branch] [int] NULL,
	[AdmissionType] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_session]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_session](
	[SessionId] [int] IDENTITY(1,1) NOT NULL,
	[Sessionkey] [varchar](100) NULL,
	[LoginID] [int] NULL,
	[RequestMode] [int] NULL,
	[EntryDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_student]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[Program] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Student_Admission]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[DOB] [varchar](50) NULL,
	[Fess_Status] [varchar](100) NULL,
	[_Year] [varchar](100) NULL,
	[Program] [int] NULL,
	[MotherName] [varchar](100) NULL,
	[FatherOccupation] [varchar](150) NULL,
	[Religion] [varchar](100) NULL,
	[AdmissionNo] [varchar](15) NULL,
	[AdmissionType] [int] NULL,
	[FatherMo] [varchar](12) NULL,
	[MotherMo] [varchar](12) NULL,
	[MotherOccupation] [varchar](240) NULL,
	[Photo] [varchar](150) NULL,
	[FatherAadharCard] [varchar](150) NULL,
	[IncomeCertificate] [varchar](150) NULL,
	[AadharCard] [varchar](150) NULL,
	[MotherAadharCard] [varchar](150) NULL,
	[CastCertificate] [varchar](150) NULL,
	[Nationalitycertificate] [varchar](150) NULL,
	[TransferCertificate] [varchar](150) NULL,
	[RegistrationNo] [varchar](100) NULL,
	[Batch] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_StudentAttandance]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[AttandanceDate] [varchar](250) NULL,
	[Program] [int] NULL,
	[Branch] [int] NULL,
	[Year] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Studentfine]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[FineStatus] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_StudentLedger]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_StudentLedger](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TotalFees] [numeric](18, 9) NULL,
	[TotalSubmitedFees] [numeric](18, 9) NULL,
	[Totalduefees] [numeric](18, 9) NULL,
	[EntryDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[Mode] [int] NULL,
	[StudentId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_StudentMarks]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_StudentMarks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Program] [int] NULL,
	[Branch] [int] NULL,
	[Year] [int] NULL,
	[EnrollmentNo] [varchar](20) NULL,
	[SubjectId] [int] NULL,
	[IsAttendance] [bit] NULL,
	[Marks] [int] NULL,
	[Note] [varchar](240) NULL,
	[EntryOn] [datetime] NULL,
	[ExamID] [int] NULL,
	[IsPrectical] [bit] NULL,
	[IsWritten] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SubjectMaster]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[PrecticalPassingMarks] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Syllabus]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[Program] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Teacher]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[EntryDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[HighSchoolMarks] [numeric](10, 2) NULL,
	[HighSchool_P] [numeric](10, 2) NULL,
	[HighSchool_B] [varchar](50) NULL,
	[InterMarks] [numeric](10, 2) NULL,
	[Inter_P] [int] NULL,
	[Inter_B] [varchar](50) NULL,
	[UGTitle] [varchar](50) NULL,
	[UGMarks] [numeric](10, 2) NULL,
	[UG_Collage] [varchar](50) NULL,
	[PGTitle] [varchar](50) NULL,
	[PGMarks] [numeric](10, 2) NULL,
	[PG_Collage] [varchar](50) NULL,
	[PreviousCollage] [varchar](50) NULL,
	[Subjects] [varchar](50) NULL,
	[Experiance] [int] NULL,
	[UserId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TimeTable]    Script Date: 9/19/2023 11:04:52 PM ******/
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
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 9/19/2023 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Fname] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Mobile] [varchar](20) NULL,
	[Address] [varchar](100) NULL,
	[Gender] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[MotherName] [varchar](100) NULL,
	[Religion] [varchar](100) NULL,
	[RoleId] [int] NULL,
	[IsActive] [bit] NULL,
	[ReffId] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_VideoLectures]    Script Date: 9/19/2023 11:04:52 PM ******/
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
	[Program] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Master_AddmissionType] ON 
GO
INSERT [dbo].[Master_AddmissionType] ([Id], [DisplayName]) VALUES (1, N'Lateral Entry')
GO
INSERT [dbo].[Master_AddmissionType] ([Id], [DisplayName]) VALUES (2, N'Regular')
GO
SET IDENTITY_INSERT [dbo].[Master_AddmissionType] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_AdmissionMaster] ON 
GO
INSERT [dbo].[tbl_AdmissionMaster] ([ID], [Startdate], [Enddate], [Entrydate], [Modifydate], [IsOpen], [Program], [Branch], [AdmissionType]) VALUES (1, N'2023-04-14', N'2023-04-20', CAST(N'2023-04-03T12:46:54.730' AS DateTime), CAST(N'2023-08-15T21:34:46.377' AS DateTime), 1, 7, 1040, NULL)
GO
INSERT [dbo].[tbl_AdmissionMaster] ([ID], [Startdate], [Enddate], [Entrydate], [Modifydate], [IsOpen], [Program], [Branch], [AdmissionType]) VALUES (2, N'2023-04-14', N'2023-04-20', CAST(N'2023-04-15T15:04:45.693' AS DateTime), CAST(N'2023-08-15T21:34:46.377' AS DateTime), 1, 7, 1040, NULL)
GO
INSERT [dbo].[tbl_AdmissionMaster] ([ID], [Startdate], [Enddate], [Entrydate], [Modifydate], [IsOpen], [Program], [Branch], [AdmissionType]) VALUES (3, N'2023-04-14', N'2023-04-20', CAST(N'2023-04-15T15:13:14.457' AS DateTime), CAST(N'2023-08-15T21:34:46.377' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_AdmissionMaster] ([ID], [Startdate], [Enddate], [Entrydate], [Modifydate], [IsOpen], [Program], [Branch], [AdmissionType]) VALUES (1, N'2023-04-14', N'2023-04-20', CAST(N'2023-04-03T12:46:54.730' AS DateTime), CAST(N'2023-08-15T21:34:46.377' AS DateTime), 1, 7, 1040, NULL)
GO
INSERT [dbo].[tbl_AdmissionMaster] ([ID], [Startdate], [Enddate], [Entrydate], [Modifydate], [IsOpen], [Program], [Branch], [AdmissionType]) VALUES (2, N'2023-04-14', N'2023-04-20', CAST(N'2023-04-15T15:04:45.693' AS DateTime), CAST(N'2023-08-15T21:34:46.377' AS DateTime), 1, 7, 1040, NULL)
GO
INSERT [dbo].[tbl_AdmissionMaster] ([ID], [Startdate], [Enddate], [Entrydate], [Modifydate], [IsOpen], [Program], [Branch], [AdmissionType]) VALUES (3, N'2023-04-14', N'2023-04-20', CAST(N'2023-04-15T15:13:14.457' AS DateTime), CAST(N'2023-08-15T21:34:46.377' AS DateTime), NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_AdmissionMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_AssignExam] ON 
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (1, N'E202300000', 1, 5, 1010, 1, CAST(N'2023-05-07T20:26:22.507' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (2, N'E202300002', 1, 5, 1010, 1, CAST(N'2023-05-07T20:26:22.537' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (3, N'E202300003', 1, 5, 1010, 1, CAST(N'2023-05-07T20:26:22.540' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (4, N'E202300004', 1, 5, 1010, 1, CAST(N'2023-05-07T20:26:22.540' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (5, N'E202300005', 1, 5, 1010, 1, CAST(N'2023-05-07T20:26:22.540' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (6, N'E202300006', 1, 5, 1010, 1, CAST(N'2023-05-07T20:26:22.543' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (7, N'E202300000', 2, 5, 1010, 1, CAST(N'2023-05-14T13:06:51.573' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (8, N'E202300002', 2, 5, 1010, 1, CAST(N'2023-05-14T13:06:51.573' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (9, N'E202300003', 2, 5, 1010, 1, CAST(N'2023-05-14T13:06:51.580' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (10, N'E202300004', 2, 5, 1010, 1, CAST(N'2023-05-14T13:06:51.583' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (11, N'E202300005', 2, 5, 1010, 1, CAST(N'2023-05-14T13:06:51.587' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (12, N'E202300006', 2, 5, 1010, 1, CAST(N'2023-05-14T13:06:51.587' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (13, N'E202300007', 2, 5, 1010, 1, CAST(N'2023-05-14T13:06:51.590' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (1002, N'E202300000', 1002, 5, 1010, 1, CAST(N'2023-05-18T23:57:57.513' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (1003, N'E202300002', 1002, 5, 1010, 1, CAST(N'2023-05-18T23:57:57.520' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (1004, N'E202300003', 1002, 5, 1010, 1, CAST(N'2023-05-18T23:57:57.523' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (1005, N'E202300004', 1002, 5, 1010, 1, CAST(N'2023-05-18T23:57:57.527' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (1006, N'E202300005', 1002, 5, 1010, 1, CAST(N'2023-05-18T23:57:57.527' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (1007, N'E202300006', 1002, 5, 1010, 1, CAST(N'2023-05-18T23:57:57.527' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (1008, N'E202300007', 1002, 5, 1010, 1, CAST(N'2023-05-18T23:57:57.530' AS DateTime), 1)
GO
INSERT [dbo].[tbl_AssignExam] ([Id], [EnrollemntNo], [ExamID], [Program], [Branch], [Year], [EntryDate], [IsAssign]) VALUES (2002, N'E202300001', 1002, 6, 1020, 1, CAST(N'2023-07-30T00:23:24.613' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_AssignExam] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Assignment] ON 
GO
INSERT [dbo].[tbl_Assignment] ([Id], [BranchId], [Year], [SubjectId], [Assignment], [EntryDate], [Modifydate], [Program], [Paths]) VALUES (1, 1040, 1, 6, N'Testing', CAST(N'2023-03-27T15:52:37.330' AS DateTime), CAST(N'2023-03-27T16:32:40.633' AS DateTime), 7, NULL)
GO
INSERT [dbo].[tbl_Assignment] ([Id], [BranchId], [Year], [SubjectId], [Assignment], [EntryDate], [Modifydate], [Program], [Paths]) VALUES (2, 1010, 1, 7, N'fgfdgfdg', CAST(N'2023-03-27T16:33:33.347' AS DateTime), NULL, 6, NULL)
GO
INSERT [dbo].[tbl_Assignment] ([Id], [BranchId], [Year], [SubjectId], [Assignment], [EntryDate], [Modifydate], [Program], [Paths]) VALUES (3, 1040, 1, 6, N'fgdgdfg', CAST(N'2023-04-10T15:17:05.777' AS DateTime), NULL, 7, N'')
GO
INSERT [dbo].[tbl_Assignment] ([Id], [BranchId], [Year], [SubjectId], [Assignment], [EntryDate], [Modifydate], [Program], [Paths]) VALUES (4, 1040, 1, 6, N'gfgfffdg', CAST(N'2023-04-10T15:49:43.140' AS DateTime), NULL, 7, N'Assignment\7\6323.jpg')
GO
INSERT [dbo].[tbl_Assignment] ([Id], [BranchId], [Year], [SubjectId], [Assignment], [EntryDate], [Modifydate], [Program], [Paths]) VALUES (5, 1040, 1, 6, N'gfhfghf', CAST(N'2023-04-12T13:47:46.130' AS DateTime), NULL, 7, N'Assignment\7\6323.jpg')
GO
SET IDENTITY_INSERT [dbo].[tbl_Assignment] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_AssignSubject] ON 
GO
INSERT [dbo].[tbl_AssignSubject] ([Id], [BranchId], [Year], [SubjectId], [TeacherId], [Entrydate], [ModifyDate], [ProgramId]) VALUES (2, 1000, 2, 1, 1, CAST(N'2023-01-10T18:02:56.873' AS DateTime), CAST(N'2023-01-20T10:21:49.763' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_AssignSubject] ([Id], [BranchId], [Year], [SubjectId], [TeacherId], [Entrydate], [ModifyDate], [ProgramId]) VALUES (7, 1040, 1, 6, 1, CAST(N'2023-03-27T15:31:28.250' AS DateTime), CAST(N'2023-03-27T15:32:21.890' AS DateTime), 7)
GO
INSERT [dbo].[tbl_AssignSubject] ([Id], [BranchId], [Year], [SubjectId], [TeacherId], [Entrydate], [ModifyDate], [ProgramId]) VALUES (8, 1010, 1, 10, 7, CAST(N'2023-06-08T22:36:44.773' AS DateTime), NULL, 5)
GO
SET IDENTITY_INSERT [dbo].[tbl_AssignSubject] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_BatchMaster] ON 
GO
INSERT [dbo].[tbl_BatchMaster] ([Id], [FromYear], [ToYear], [EntryDate], [ModifyDate]) VALUES (4, N'2023', N'2028', CAST(N'2023-01-20T16:07:47.137' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_BatchMaster] ([Id], [FromYear], [ToYear], [EntryDate], [ModifyDate]) VALUES (5, N'2023', N'2027', CAST(N'2023-01-31T14:42:21.863' AS DateTime), CAST(N'2023-03-27T13:25:32.783' AS DateTime))
GO
INSERT [dbo].[tbl_BatchMaster] ([Id], [FromYear], [ToYear], [EntryDate], [ModifyDate]) VALUES (6, N'2023', N'2023', CAST(N'2023-04-26T16:34:08.023' AS DateTime), CAST(N'2023-08-17T22:50:56.620' AS DateTime))
GO
INSERT [dbo].[tbl_BatchMaster] ([Id], [FromYear], [ToYear], [EntryDate], [ModifyDate]) VALUES (7, N'2023', N'2026', CAST(N'2023-08-17T22:51:10.000' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_BatchMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Branch] ON 
GO
INSERT [dbo].[tbl_Branch] ([BranchId], [Branch_Name], [Branch_Code], [EntryDate], [ModifyDate], [TotalSheet], [IsCounseling], [AvailableSheet], [AvailabeLateralSheet], [TotalLateralSheet]) VALUES (1000, N'CSE Datascience', N'9078', CAST(N'2022-12-24T15:43:17.940' AS DateTime), CAST(N'2023-08-17T22:48:36.033' AS DateTime), 90, 1, 90, 10, 10)
GO
INSERT [dbo].[tbl_Branch] ([BranchId], [Branch_Name], [Branch_Code], [EntryDate], [ModifyDate], [TotalSheet], [IsCounseling], [AvailableSheet], [AvailabeLateralSheet], [TotalLateralSheet]) VALUES (1010, N'C.S', N'2356', CAST(N'2022-12-29T17:23:21.140' AS DateTime), CAST(N'2023-08-16T23:22:07.210' AS DateTime), 90, 1, 90, 0, 10)
GO
INSERT [dbo].[tbl_Branch] ([BranchId], [Branch_Name], [Branch_Code], [EntryDate], [ModifyDate], [TotalSheet], [IsCounseling], [AvailableSheet], [AvailabeLateralSheet], [TotalLateralSheet]) VALUES (1020, N'Machanical', N'2356', CAST(N'2023-01-07T12:38:24.043' AS DateTime), CAST(N'2023-08-16T23:23:12.723' AS DateTime), 90, 1, 90, 10, 10)
GO
INSERT [dbo].[tbl_Branch] ([BranchId], [Branch_Name], [Branch_Code], [EntryDate], [ModifyDate], [TotalSheet], [IsCounseling], [AvailableSheet], [AvailabeLateralSheet], [TotalLateralSheet]) VALUES (1040, N'B.A(History)', N'2356', CAST(N'2023-03-27T13:29:24.327' AS DateTime), CAST(N'2023-08-16T23:23:11.623' AS DateTime), 90, 1, 90, 10, 10)
GO
INSERT [dbo].[tbl_Branch] ([BranchId], [Branch_Name], [Branch_Code], [EntryDate], [ModifyDate], [TotalSheet], [IsCounseling], [AvailableSheet], [AvailabeLateralSheet], [TotalLateralSheet]) VALUES (1050, N'CSE AI&ML', N'9078', CAST(N'2023-08-16T22:04:14.607' AS DateTime), CAST(N'2023-08-16T23:23:10.383' AS DateTime), 90, 1, 90, 10, 10)
GO
INSERT [dbo].[tbl_Branch] ([BranchId], [Branch_Name], [Branch_Code], [EntryDate], [ModifyDate], [TotalSheet], [IsCounseling], [AvailableSheet], [AvailabeLateralSheet], [TotalLateralSheet]) VALUES (1060, N'IOT', N'9034', CAST(N'2023-08-17T22:47:50.787' AS DateTime), CAST(N'2023-08-17T22:48:34.723' AS DateTime), 50, 1, 50, 10, 10)
GO
INSERT [dbo].[tbl_Branch] ([BranchId], [Branch_Name], [Branch_Code], [EntryDate], [ModifyDate], [TotalSheet], [IsCounseling], [AvailableSheet], [AvailabeLateralSheet], [TotalLateralSheet]) VALUES (1070, N'C.S', N'2356', CAST(N'2023-08-17T23:00:23.973' AS DateTime), CAST(N'2023-09-16T12:02:42.453' AS DateTime), 90, 0, 90, 23, 23)
GO
SET IDENTITY_INSERT [dbo].[tbl_Branch] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Conversation] ON 
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1, 1, 2, N'Email Testing Bhai', CAST(N'2023-09-16T18:14:39.503' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (2, 1, 2, N'Email Testing', CAST(N'2023-09-16T18:25:01.233' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (3, 1, 3, N'Email Testing user2', CAST(N'2023-09-16T18:25:18.353' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (4, 1, 3, N'jhfhgghdhfkjgfkhgghhj', CAST(N'2023-09-17T13:21:16.443' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (5, 1, 3, N'hgfhfhfgh', CAST(N'2023-09-17T13:25:42.750' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (6, 4, 1, N'vghgvhghvghv', CAST(N'2023-09-17T14:24:04.757' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (7, 4, 1, N'vdvdfvdfv', CAST(N'2023-09-17T14:34:12.620' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (8, 1, 4, N'gvghvhgbgvygtv bsdk', CAST(N'2023-09-17T14:34:49.297' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1006, 1, 4, N'Hemant', CAST(N'2023-09-17T20:35:31.667' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1007, 1, 4, N'vfvsdgsfdsfrwfew454', CAST(N'2023-09-17T20:39:47.340' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1008, 4, 1, N'fsdfsdf', CAST(N'2023-09-17T20:56:12.740' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1009, 4, 1, N'gfdsgdgdf565756', CAST(N'2023-09-17T20:59:03.433' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1010, 1, 4, N'fsdfsdf', CAST(N'2023-09-17T21:10:14.537' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1011, 1, 4, N'Hemant 23 and chat', CAST(N'2023-09-17T21:50:24.920' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1012, 4, 1, N'auto message hemant', CAST(N'2023-09-17T21:58:51.170' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1013, 1, 4, N'fsdfsdf by admin', CAST(N'2023-09-17T22:01:54.690' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1014, 1, 4, N'test 2', CAST(N'2023-09-17T22:05:58.383' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1015, 4, 1, N'test 3', CAST(N'2023-09-17T22:06:14.973' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1016, 4, 1, N'hii', CAST(N'2023-09-17T22:10:36.170' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1017, 1, 4, N'hello', CAST(N'2023-09-17T22:11:01.667' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1018, 4, 1, N'send message by Gyan', CAST(N'2023-09-17T22:39:16.443' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1019, 1, 4, N'send message by admin', CAST(N'2023-09-17T22:39:30.783' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1020, 4, 1, N'fsdfsdf', CAST(N'2023-09-18T22:59:25.080' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1021, 4, 3, N'fsdfsdf', CAST(N'2023-09-19T22:47:50.707' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1022, 3, 4, N'hello sir', CAST(N'2023-09-19T22:58:07.637' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1023, 4, 3, N'hello beta', CAST(N'2023-09-19T22:58:24.903' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1024, 3, 4, N'sir mere me koi action nahi show ho raha hai', CAST(N'2023-09-19T22:58:59.117' AS DateTime))
GO
INSERT [dbo].[tbl_Conversation] ([Id], [SenderId], [ReciverId], [Message], [EntryOn]) VALUES (1025, 4, 3, N'axa beta', CAST(N'2023-09-19T22:59:13.370' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_Conversation] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Exam] ON 
GO
INSERT [dbo].[tbl_Exam] ([Id], [Exam], [GroupId], [EntryDate], [EntryBy]) VALUES (1, N'C.S First Year Sessional', 1, CAST(N'2023-05-07T20:12:30.260' AS DateTime), 1)
GO
INSERT [dbo].[tbl_Exam] ([Id], [Exam], [GroupId], [EntryDate], [EntryBy]) VALUES (2, N'C.S First Year Prectical', 2, CAST(N'2023-05-14T13:06:32.320' AS DateTime), 1)
GO
INSERT [dbo].[tbl_Exam] ([Id], [Exam], [GroupId], [EntryDate], [EntryBy]) VALUES (1002, N'TestExam', 2, CAST(N'2023-05-18T23:20:25.240' AS DateTime), 7)
GO
SET IDENTITY_INSERT [dbo].[tbl_Exam] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ExamDetail] ON 
GO
INSERT [dbo].[tbl_ExamDetail] ([Id], [ExamID], [SubjectId], [Date], [Time], [Duration], [RoomNo], [MinMarks], [MaxMarks], [Entrydate]) VALUES (1, 1, 4, N'2023-05-10', N'10:15', 60, N'L-9', 10, 50, CAST(N'2023-05-07T20:14:41.343' AS DateTime))
GO
INSERT [dbo].[tbl_ExamDetail] ([Id], [ExamID], [SubjectId], [Date], [Time], [Duration], [RoomNo], [MinMarks], [MaxMarks], [Entrydate]) VALUES (2, 2, 4, N'2023-05-15', N'22:10', 60, N'L-10', 8, 16, CAST(N'2023-05-14T13:08:48.053' AS DateTime))
GO
INSERT [dbo].[tbl_ExamDetail] ([Id], [ExamID], [SubjectId], [Date], [Time], [Duration], [RoomNo], [MinMarks], [MaxMarks], [Entrydate]) VALUES (1002, 1002, 1, N'2023-05-19', N'00:22', 60, N'L-9', 12, 20, CAST(N'2023-05-18T23:21:54.630' AS DateTime))
GO
INSERT [dbo].[tbl_ExamDetail] ([Id], [ExamID], [SubjectId], [Date], [Time], [Duration], [RoomNo], [MinMarks], [MaxMarks], [Entrydate]) VALUES (2002, 1002, 10, N'2023-05-19', N'00:22', 60, N'L-9', 12, 20, CAST(N'2023-07-30T00:24:02.903' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_ExamDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ExamGroup] ON 
GO
INSERT [dbo].[tbl_ExamGroup] ([Id], [ExamType], [ExamGroup], [Description], [EntryDate], [EntryBy], [ExamCount]) VALUES (1, 1, N'C.S Sessional', N'This exam for student sessional', CAST(N'2023-05-07T20:10:58.283' AS DateTime), 1, 2)
GO
INSERT [dbo].[tbl_ExamGroup] ([Id], [ExamType], [ExamGroup], [Description], [EntryDate], [EntryBy], [ExamCount]) VALUES (2, 2, N'C.S Prectical', N'This the first semester prectical exam', CAST(N'2023-05-14T13:05:51.753' AS DateTime), 1, 2)
GO
SET IDENTITY_INSERT [dbo].[tbl_ExamGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ExamType] ON 
GO
INSERT [dbo].[tbl_ExamType] ([Id], [ExamType], [EntryDate], [EntryBy]) VALUES (1, N'Sessional Exam', CAST(N'2023-05-07T20:08:41.640' AS DateTime), 1)
GO
INSERT [dbo].[tbl_ExamType] ([Id], [ExamType], [EntryDate], [EntryBy]) VALUES (2, N'Prectical Exam', CAST(N'2023-05-14T13:05:01.360' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_ExamType] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_FeesHead] ON 
GO
INSERT [dbo].[tbl_FeesHead] ([Id], [Branch], [Branch_Code], [_Year], [EntryBy], [EntryDate], [Modifydate], [Amount], [Program], [FeesType]) VALUES (3, N'1010', N'', N'2', N'', CAST(N'2023-08-26T18:19:41.150' AS DateTime), NULL, N'1000', 6, 14)
GO
INSERT [dbo].[tbl_FeesHead] ([Id], [Branch], [Branch_Code], [_Year], [EntryBy], [EntryDate], [Modifydate], [Amount], [Program], [FeesType]) VALUES (2, N'1010', N'', N'2', N'', CAST(N'2023-08-26T14:37:23.023' AS DateTime), NULL, N'50000', 6, 16)
GO
SET IDENTITY_INSERT [dbo].[tbl_FeesHead] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_FeesHistory] ON 
GO
INSERT [dbo].[tbl_FeesHistory] ([Id], [TotalFees], [Fees], [DueFees], [ReffId], [EntryDate]) VALUES (1, CAST(51000.00 AS Numeric(10, 2)), CAST(1000.00 AS Numeric(10, 2)), CAST(50000.00 AS Numeric(10, 2)), 202300005, CAST(N'2023-09-19T22:23:49.290' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_FeesHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_FeesSubmissionModes] ON 
GO
INSERT [dbo].[tbl_FeesSubmissionModes] ([ID], [Mode], [EntryDate]) VALUES (1, N'Cash Payment', CAST(N'2023-01-28T13:42:04.787' AS DateTime))
GO
INSERT [dbo].[tbl_FeesSubmissionModes] ([ID], [Mode], [EntryDate]) VALUES (2, N'Check Payment', CAST(N'2023-01-28T13:42:16.577' AS DateTime))
GO
INSERT [dbo].[tbl_FeesSubmissionModes] ([ID], [Mode], [EntryDate]) VALUES (3, N'UPI', CAST(N'2023-01-28T13:42:26.820' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_FeesSubmissionModes] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Feessubmition] ON 
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [Amount], [FeesSubmitionMode], [EntryDate], [FeesType], [CheckNumber], [TransctionID], [FeesReceiptNo], [StudentId], [ReffId]) VALUES (1, N'5000.00', N'2', CAST(N'2023-08-26T16:17:50.540' AS DateTime), 16, N'sdfsdf', N'sdfsdf', N'072287F9-0B4E-42BA-BE1F-8EB46FEAF7E6', NULL, N'202300001')
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [Amount], [FeesSubmitionMode], [EntryDate], [FeesType], [CheckNumber], [TransctionID], [FeesReceiptNo], [StudentId], [ReffId]) VALUES (2, N'5000.00', N'2', CAST(N'2023-08-26T16:46:51.673' AS DateTime), 16, N'dfgdfg', N'dfgdg', N'9BC793A6-E70A-47CA-88E9-51A3982DD5AC', NULL, N'202300002')
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [Amount], [FeesSubmitionMode], [EntryDate], [FeesType], [CheckNumber], [TransctionID], [FeesReceiptNo], [StudentId], [ReffId]) VALUES (5, N'1000.00', N'2', CAST(N'2023-09-09T12:41:42.970' AS DateTime), 16, N'34567', N'RT45', N'64686E63-C7F0-4CEF-AFCD-63263B55401D', NULL, N'202300003')
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [Amount], [FeesSubmitionMode], [EntryDate], [FeesType], [CheckNumber], [TransctionID], [FeesReceiptNo], [StudentId], [ReffId]) VALUES (6, N'1000.00', N'2', CAST(N'2023-09-09T12:43:19.167' AS DateTime), 16, N'34567', N'3456', N'14A6DD31-3784-42F1-83F1-56D60698799D', NULL, N'202300004')
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [Amount], [FeesSubmitionMode], [EntryDate], [FeesType], [CheckNumber], [TransctionID], [FeesReceiptNo], [StudentId], [ReffId]) VALUES (7, N'1000.00', N'1', CAST(N'2023-09-09T12:47:36.360' AS DateTime), 16, N'345', N'ERT45', N'DA18C64D-F7D6-4339-B008-DEC1091FC05E', NULL, N'202300005')
GO
INSERT [dbo].[tbl_Feessubmition] ([Id], [Amount], [FeesSubmitionMode], [EntryDate], [FeesType], [CheckNumber], [TransctionID], [FeesReceiptNo], [StudentId], [ReffId]) VALUES (8, N'1000.00', N'2', CAST(N'2023-09-19T22:23:49.257' AS DateTime), 16, N'98767', N'GJGHG90', N'CF2F34A5-8DE9-4E1B-A3D5-3FD6282CFB12', 0, N'202300005')
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
INSERT [dbo].[tbl_FeesType] ([Id], [Program], [Branch], [Year], [FeesType], [EntryDate], [ModifyDate]) VALUES (14, 6, 1010, 2, N'Registration Fees', CAST(N'2023-08-26T12:22:09.990' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_FeesType] ([Id], [Program], [Branch], [Year], [FeesType], [EntryDate], [ModifyDate]) VALUES (15, 5, 1010, 2, N'Admission Fees', CAST(N'2023-08-26T14:36:45.530' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_FeesType] ([Id], [Program], [Branch], [Year], [FeesType], [EntryDate], [ModifyDate]) VALUES (16, 6, 1010, 2, N'Admission Fees', CAST(N'2023-08-26T14:37:10.680' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_FeesType] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Grade] ON 
GO
INSERT [dbo].[tbl_Grade] ([Id], [ExamType], [PrecentUpto], [PrecentFrom], [GradePoint], [Discreption], [Entrydate], [GradeName]) VALUES (1, 7, 90, 100, 2, N'testing', CAST(N'2023-04-25T17:15:31.783' AS DateTime), N'A+')
GO
INSERT [dbo].[tbl_Grade] ([Id], [ExamType], [PrecentUpto], [PrecentFrom], [GradePoint], [Discreption], [Entrydate], [GradeName]) VALUES (2, 7, 70, 80, 1, N'test', CAST(N'2023-04-25T17:16:17.257' AS DateTime), N'B+')
GO
INSERT [dbo].[tbl_Grade] ([Id], [ExamType], [PrecentUpto], [PrecentFrom], [GradePoint], [Discreption], [Entrydate], [GradeName]) VALUES (1002, 3, 45, 50, 1, N'gdfgdfgfdgfdg', CAST(N'2023-04-28T17:12:10.040' AS DateTime), N'C+')
GO
INSERT [dbo].[tbl_Grade] ([Id], [ExamType], [PrecentUpto], [PrecentFrom], [GradePoint], [Discreption], [Entrydate], [GradeName]) VALUES (1003, 1, 90, 100, 1, N'Best grade', CAST(N'2023-05-07T21:24:33.547' AS DateTime), N'A+')
GO
INSERT [dbo].[tbl_Grade] ([Id], [ExamType], [PrecentUpto], [PrecentFrom], [GradePoint], [Discreption], [Entrydate], [GradeName]) VALUES (1005, 1, 60, 80, 1, N'Average', CAST(N'2023-05-10T21:45:15.640' AS DateTime), N'B+')
GO
INSERT [dbo].[tbl_Grade] ([Id], [ExamType], [PrecentUpto], [PrecentFrom], [GradePoint], [Discreption], [Entrydate], [GradeName]) VALUES (1006, 1, 50, 60, 1, N'Not bade', CAST(N'2023-05-10T21:46:33.327' AS DateTime), N'C+')
GO
INSERT [dbo].[tbl_Grade] ([Id], [ExamType], [PrecentUpto], [PrecentFrom], [GradePoint], [Discreption], [Entrydate], [GradeName]) VALUES (1007, 1, 0, 50, 0, N'fail', CAST(N'2023-05-10T21:46:56.887' AS DateTime), N'D')
GO
SET IDENTITY_INSERT [dbo].[tbl_Grade] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_login] ON 
GO
INSERT [dbo].[tbl_login] ([Id], [UserId], [UserName], [Password]) VALUES (1, 1, N'admin@gmail.com', N'Hemant@90')
GO
INSERT [dbo].[tbl_login] ([Id], [UserId], [UserName], [Password]) VALUES (3, 2, N'ER2023000000', N'20040715')
GO
INSERT [dbo].[tbl_login] ([Id], [UserId], [UserName], [Password]) VALUES (4, 3, N'ER2023000001', N'20230914')
GO
INSERT [dbo].[tbl_login] ([Id], [UserId], [UserName], [Password]) VALUES (5, 4, N'9044004486', N'8883438')
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
INSERT [dbo].[tbl_Notifications] ([Id], [Title], [Discreption], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [IsStaff]) VALUES (6, N'hhfg', N'', CAST(N'2023-09-16T12:35:13.090' AS DateTime), 1, NULL, NULL, 0)
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
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (14, 5, 1040, CAST(N'2023-04-30T12:42:29.410' AS DateTime), NULL, 1, NULL, 5)
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (1015, 5, 1000, CAST(N'2023-06-05T23:18:53.623' AS DateTime), NULL, 1, NULL, 4)
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (2014, 6, 1000, CAST(N'2023-08-15T21:33:05.580' AS DateTime), NULL, 1, NULL, 6)
GO
INSERT [dbo].[tbl_ProgramBranchMapping] ([Id], [ProgramId], [BranchId], [EntryDate], [Modifydate], [EntryBy], [ModifyBy], [BatchId]) VALUES (3014, 7, 1060, CAST(N'2023-08-17T22:50:07.170' AS DateTime), NULL, 1, NULL, 6)
GO
SET IDENTITY_INSERT [dbo].[tbl_ProgramBranchMapping] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ProjectReport] ON 
GO
INSERT [dbo].[tbl_ProjectReport] ([ProjectId], [StudentName], [Branch], [_Year], [Enrollment], [ProjectTitle], [Techonology], [Entrydate], [Program]) VALUES (1, N'Hemant', N'1010', N'1', N'E202300000', N'Project', N'.Net', N'Jan 20 2023  3:41PM', 5)
GO
SET IDENTITY_INSERT [dbo].[tbl_ProjectReport] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Registration] ON 
GO
INSERT [dbo].[tbl_Registration] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [DOB], [FatherOccupation], [MotherName], [Program], [AdmissionType], [RegistrationNo], [EntryBy]) VALUES (1, N'Hemant', N'Ramlakhan Nag', N'amarnag702@gmail.com', N'6390749256', N'1010', N'Lucknow', N'Male', CAST(N'2023-08-26T11:50:07.737' AS DateTime), N'', N'2004-07-15', N'Farmar', N'Urmila Nag', 6, 1, N'202300000', NULL)
GO
INSERT [dbo].[tbl_Registration] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [DOB], [FatherOccupation], [MotherName], [Program], [AdmissionType], [RegistrationNo], [EntryBy]) VALUES (9, N'HemantRoundpay', N'sdfsdf', N'amarnag702@gmail.com', N'9044004486', N'1010', N'sdfsdf', N'Male', CAST(N'2023-08-26T16:17:50.540' AS DateTime), N'', N'2004-07-15', N'sdfsdfsdf', N'sdf', 6, 1, N'202300001', NULL)
GO
INSERT [dbo].[tbl_Registration] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [DOB], [FatherOccupation], [MotherName], [Program], [AdmissionType], [RegistrationNo], [EntryBy]) VALUES (10, N'Test', N'gfdgf', N'amarnag702@gmail.com', N'8088977769', N'1010', N'dfgdfgdg', N'Male', CAST(N'2023-08-26T16:46:51.673' AS DateTime), N'', N'8596-07-15', N'gdfgdfg', N'gdg', 6, 1, N'202300002', NULL)
GO
INSERT [dbo].[tbl_Registration] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [DOB], [FatherOccupation], [MotherName], [Program], [AdmissionType], [RegistrationNo], [EntryBy]) VALUES (13, N'New Plan', N'ffsd', N'amarnag702@gmail.com', N'8088977768', N'1010', N'adsasdasd', N'Male', CAST(N'2023-09-09T12:41:42.970' AS DateTime), N'', N'2023-09-12', N'dfsdf', N'fsdfsd', 6, 1, N'202300003', NULL)
GO
INSERT [dbo].[tbl_Registration] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [DOB], [FatherOccupation], [MotherName], [Program], [AdmissionType], [RegistrationNo], [EntryBy]) VALUES (14, N'HemantRoundpay', N'ffsd', N'amarnag702@gmail.com', N'6390749254', N'1010', N'adsasdasd', N'Male', CAST(N'2023-09-09T12:43:19.167' AS DateTime), N'', N'2023-09-07', N'dfsdf', N'fsdfsd', 6, 1, N'202300004', NULL)
GO
INSERT [dbo].[tbl_Registration] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [DOB], [FatherOccupation], [MotherName], [Program], [AdmissionType], [RegistrationNo], [EntryBy]) VALUES (15, N'HEMANT NAG', N'dfgdfgd', N'amarnag702@gmail.com', N'09044004423', N'1010', N'dsfsdfsfsfsdfsdfdsfdsfsfdsfsfds', N'Male', CAST(N'2023-09-19T22:23:49.250' AS DateTime), N'', N'2023-09-01', N'dgdsgdg', N'vgdfgdf', 6, 1, N'202300005', 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_Registration] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_RegistrationMaster] ON 
GO
INSERT [dbo].[tbl_RegistrationMaster] ([Id], [Startdate], [Enddate], [Entrydate], [Modifydate], [IsOpen], [Program], [Branch], [AdmissionType]) VALUES (1, N'2023-08-05', N'2023-08-05', CAST(N'2023-08-20T21:18:35.600' AS DateTime), CAST(N'2023-08-20T21:40:49.780' AS DateTime), 1, 5, 1000, 2)
GO
INSERT [dbo].[tbl_RegistrationMaster] ([Id], [Startdate], [Enddate], [Entrydate], [Modifydate], [IsOpen], [Program], [Branch], [AdmissionType]) VALUES (2, N'2023-08-22', N'2023-08-23', CAST(N'2023-08-21T23:27:10.897' AS DateTime), CAST(N'2023-08-21T23:28:00.303' AS DateTime), 1, 6, 1000, 1)
GO
INSERT [dbo].[tbl_RegistrationMaster] ([Id], [Startdate], [Enddate], [Entrydate], [Modifydate], [IsOpen], [Program], [Branch], [AdmissionType]) VALUES (3, N'2023-08-21', N'2023-09-22', CAST(N'2023-08-21T23:28:43.387' AS DateTime), CAST(N'2023-08-21T23:29:38.287' AS DateTime), 1, 6, 1010, 1)
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
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (230, N'cb6c4f72-2626-9a70-73c8-0fbc9114c72d', 1, 1, CAST(N'2023-04-07T10:29:08.760' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (231, N'28097409-ab6a-7327-6557-319d07c705b8', 1, 1, CAST(N'2023-04-07T10:31:48.890' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (232, N'eab1c293-4f82-f73e-de1b-8973b4f1505f', 1, 1, CAST(N'2023-04-07T10:32:42.127' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (233, N'd7ab9c3a-809b-b9c9-eb0c-75ddc4a9330c', 1, 1, CAST(N'2023-04-07T10:33:34.600' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (234, N'e43c27c3-7883-1417-646a-a9739083ad35', 1, 1, CAST(N'2023-04-07T10:35:49.170' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (235, N'5aa120e5-3b68-e474-a897-d4f5be136e87', 1, 1, CAST(N'2023-04-07T10:36:44.450' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (236, N'cd4182f9-544c-fd05-c69c-a6087f8f9f39', 1, 1, CAST(N'2023-04-07T12:52:21.253' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (237, N'4ec9fa87-bf0f-e282-e11f-7df5995d5978', 1, 1, CAST(N'2023-04-07T12:57:08.507' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (238, N'd9e0db01-b266-08c6-b5d4-d6e4a705629b', 1, 1, CAST(N'2023-04-07T13:03:14.420' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (239, N'f839e81b-d176-38f4-44b8-0450583c30ed', 1, 1, CAST(N'2023-04-07T13:07:10.310' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (240, N'31a5bc60-bb9c-13cc-b23f-eae2a5a69f9c', 1, 1, CAST(N'2023-04-07T13:11:11.493' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (241, N'e9a97220-38ee-bf2e-ebad-05039392695a', 1, 1, CAST(N'2023-04-07T13:15:58.553' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (242, N'c942e612-3312-0d80-43b3-bef7ef262027', 1, 1, CAST(N'2023-04-07T13:19:15.770' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (243, N'32c58d98-1ff9-9cfa-9a8a-b86a52030644', 1, 1, CAST(N'2023-04-07T13:20:24.660' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (244, N'b2ad3c5b-fd62-c1cc-deac-4f82122bb0cd', 1, 1, CAST(N'2023-04-07T13:23:11.267' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (245, N'5e9a8889-0a4b-c38f-24ad-72193029af2f', 1, 1, CAST(N'2023-04-07T13:30:24.537' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (246, N'ed3eb30e-5c6d-c15e-59bb-e7ba96f117ce', 1, 1, CAST(N'2023-04-07T13:32:42.170' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (247, N'e51a14ff-e864-3e58-a285-7f72b5aa74ab', 1, 1, CAST(N'2023-04-07T14:40:01.663' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (248, N'bf7d8fc8-6224-d2ef-e32f-0fc6dc4c31c0', 1, 1, CAST(N'2023-04-07T16:19:53.000' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (249, N'3d02e375-e166-5687-5c43-34132a0b1987', 1, 1, CAST(N'2023-04-07T17:06:02.163' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (250, N'c3918667-e6a9-9d20-0dc8-41e8a2ef08d7', 1, 1, CAST(N'2023-04-07T18:16:51.113' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (251, N'3fda0f4b-4dd8-002a-6f4a-1cba4ccd9810', 1, 1, CAST(N'2023-04-07T18:18:43.620' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (252, N'8a8c388d-b832-e551-7d22-5b7c09ac8562', 1, 1, CAST(N'2023-04-07T18:20:45.273' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (253, N'be4819f3-6692-f46f-bfa6-d7214d950e9c', 1, 1, CAST(N'2023-04-07T19:00:08.573' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (254, N'cc2fa9f0-63ad-b3ac-e0ba-4e24d1121377', 1, 1, CAST(N'2023-04-07T19:02:13.910' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (255, N'0bba67e7-6d9b-0cd2-943a-8dcba4f96288', 1, 1, CAST(N'2023-04-08T10:05:37.687' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (256, N'21daa7ec-0001-b820-9ef0-3f43e4d848dc', 1, 1, CAST(N'2023-04-08T10:22:40.890' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (257, N'593cdf23-5516-8861-c8ad-758c33546c38', 1, 1, CAST(N'2023-04-08T10:29:34.007' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (258, N'986bd0bd-db33-adfc-bbf6-df599e59d383', 1, 1, CAST(N'2023-04-08T10:31:06.730' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (259, N'70bbc76c-d129-f406-8c72-56fa70971a55', 1, 1, CAST(N'2023-04-08T10:34:54.180' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (260, N'89c6986b-c36e-9bea-30c7-da90bf823054', 1, 1, CAST(N'2023-04-08T10:38:31.690' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (261, N'6766b883-3843-1863-cb4e-f70c919aee03', 1, 1, CAST(N'2023-04-08T10:44:35.120' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (262, N'b98c884b-fcee-cf5d-bc1c-9edbb773df12', 1, 1, CAST(N'2023-04-08T10:46:23.673' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (263, N'd82b21ed-fa55-f312-1392-f22c1f799abb', 1, 1, CAST(N'2023-04-08T10:49:29.337' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (264, N'9a162e78-d670-3142-4d84-9e50e3e6d64f', 1, 1, CAST(N'2023-04-08T10:51:23.580' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (265, N'6bdcf30e-3e4f-93be-2770-594f57ae4cd0', 1, 1, CAST(N'2023-04-08T11:07:11.620' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (266, N'88f3f8fa-b122-25a5-53bc-378e93cd5cb2', 1, 1, CAST(N'2023-04-08T11:43:26.947' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (267, N'f2025ddd-74a9-caf5-9275-9f97ef3bebab', 1, 1, CAST(N'2023-04-08T11:48:37.753' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (268, N'b22e6e01-fc03-1404-c6b3-3923176f4b6b', 1, 1, CAST(N'2023-04-08T11:50:35.487' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (269, N'f5f6f6d4-6947-c5ed-41d9-9be6814b5f7d', 1, 1, CAST(N'2023-04-08T11:55:24.560' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (270, N'85677b61-1c2b-93ec-7f45-df028d43c9f6', 1, 1, CAST(N'2023-04-08T12:01:23.390' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (271, N'd9499aa1-d810-ec51-bf15-89941b5bac84', 1, 1, CAST(N'2023-04-08T12:07:51.453' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (272, N'b15093fd-522a-8709-bde0-63aa55bff40d', 1, 1, CAST(N'2023-04-08T12:11:11.263' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (273, N'979528c9-57e6-5b18-860d-55e8cad7ba64', 1, 1, CAST(N'2023-04-08T12:17:59.533' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (274, N'df942320-5d69-27a5-86d2-9ee4ce5de68a', 1, 1, CAST(N'2023-04-08T12:20:54.023' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (275, N'435d3999-bf62-e14e-5b89-cf9d2752eff5', 1, 1, CAST(N'2023-04-08T12:24:39.047' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (276, N'be4b3ce1-5f5a-1770-f971-2442af3f0c86', 1, 1, CAST(N'2023-04-08T12:26:14.260' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (277, N'76139266-1d8a-e328-695b-02164073a810', 1, 1, CAST(N'2023-04-08T12:27:58.503' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (278, N'a4a5b5e9-1831-0dcf-ae1f-d5ee8db07fde', 1, 1, CAST(N'2023-04-08T12:31:17.930' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (279, N'bd343116-8898-8a29-d4fb-f3c43ce69994', 1, 1, CAST(N'2023-04-08T12:33:54.430' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (280, N'6881c876-00ea-86b4-ec15-2616eb3b10c2', 1, 1, CAST(N'2023-04-08T12:41:59.427' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (281, N'89ebc287-2d6f-3d55-69cd-4a9e2996d2a1', 1, 1, CAST(N'2023-04-08T12:44:43.647' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (282, N'34f337e5-be4a-1350-5223-93a09ea31f9b', 1, 1, CAST(N'2023-04-08T16:08:00.350' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (283, N'db743857-0956-3b3d-ab5f-ddd183a5ad84', 1, 1, CAST(N'2023-04-08T17:42:01.773' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (284, N'd6351ede-7679-5755-3574-210417fe6fec', 1, 1, CAST(N'2023-04-08T17:53:23.220' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (285, N'd1371445-8562-294e-8606-c53932cb5c19', 1, 1, CAST(N'2023-04-08T17:55:18.143' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (286, N'852b3553-aca9-9b3d-5097-943a67157a0a', 1, 1, CAST(N'2023-04-08T17:57:24.873' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (287, N'a7b75ea9-a0e0-5950-4506-2b2daafa5d93', 1, 1, CAST(N'2023-04-08T17:59:10.783' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (288, N'bdd07581-ada4-fde2-4228-2e6c3b743ec8', 1, 1, CAST(N'2023-04-08T18:00:39.857' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (289, N'7e750182-999b-eb12-d0c0-98882ffe935c', 1, 1, CAST(N'2023-04-08T18:05:10.510' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (290, N'8eaed106-43a9-0abb-724f-c85490083bad', 1, 1, CAST(N'2023-04-08T18:07:00.883' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (291, N'ea10488d-e0ff-7b2a-e5d8-9b9d00f31aba', 1, 1, CAST(N'2023-04-08T18:15:01.607' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (292, N'86a8858b-9c78-18a8-b248-76daa801f200', 1, 1, CAST(N'2023-04-08T18:28:50.727' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (293, N'6c2f61bf-380f-8476-6031-6dfbfeb6b39d', 1, 1, CAST(N'2023-04-08T18:29:54.527' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (294, N'6c2f61bf-380f-8476-6031-6dfbfeb6b39d', 1, 1, CAST(N'2023-04-08T18:30:41.777' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (295, N'35c30777-e69a-bc34-a427-112787fcd5f2', 1, 1, CAST(N'2023-04-08T18:39:07.817' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (296, N'f623df34-2398-8ef7-da12-b6d33fa3a3b2', 1, 1, CAST(N'2023-04-08T18:46:58.600' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (297, N'412441bb-5276-906d-3863-e02941aa14c0', 1, 1, CAST(N'2023-04-10T14:41:59.130' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (298, N'08883734-04c1-cc25-69ff-4b62c948d2fa', 1, 1, CAST(N'2023-04-10T15:01:39.177' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (299, N'4929330b-eac5-4557-f7b2-bfa0ec4b2f3d', 1, 1, CAST(N'2023-04-10T15:05:49.580' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (300, N'04976548-9ec2-d2a3-6b5b-c863bb66eb9b', 1, 1, CAST(N'2023-04-10T15:06:55.097' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (301, N'5b75caf2-da37-a1d2-39a8-b4e76392bf4b', 1, 1, CAST(N'2023-04-10T15:10:59.843' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (302, N'cdbdd9c1-f1d7-d70c-25c5-5e032bf8a4aa', 1, 1, CAST(N'2023-04-10T15:16:51.037' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (303, N'be29f0ec-3024-67c3-933f-8c3d7ef0b587', 1, 1, CAST(N'2023-04-10T15:25:53.003' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (304, N'd5919890-15c9-c093-3cd6-c3b957927334', 1, 1, CAST(N'2023-04-10T15:27:19.950' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (305, N'1312a032-32cf-5a86-6049-c7e32cb543af', 1, 1, CAST(N'2023-04-10T15:28:51.347' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (306, N'84f24def-a044-209b-64cc-9f9ee548e2ca', 1, 1, CAST(N'2023-04-10T15:32:19.267' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (307, N'308e85cc-f59d-dac6-45d5-7ede5a2fbbc0', 1, 1, CAST(N'2023-04-10T15:38:38.647' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (308, N'908271e5-a053-9949-84b9-c30d2eb8d814', 1, 1, CAST(N'2023-04-10T15:40:38.463' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (309, N'1661ca24-7d73-f264-be67-816d50fa3f0a', 1, 1, CAST(N'2023-04-10T15:43:53.853' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (310, N'6f34d08c-1464-e19a-c54e-9999c363893a', 1, 1, CAST(N'2023-04-10T15:48:50.890' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (311, N'1cfda93e-759c-eff9-4981-ad1435382341', 1, 1, CAST(N'2023-04-12T13:47:03.527' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (312, N'fd8fe45a-3c37-ac70-24ff-852709cea406', 1, 1, CAST(N'2023-04-13T10:14:20.917' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (313, N'7ce97c6b-7494-7b70-39bf-bfdf5a50f58b', 1, 1, CAST(N'2023-04-14T10:16:19.750' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (314, N'bb3d66e1-7a08-3caf-587a-010e59542dac', 1, 1, CAST(N'2023-04-14T10:54:29.270' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (315, N'd8ae3b4f-2a61-98d5-55e0-bcdd2ea28ae8', 1, 1, CAST(N'2023-04-14T11:10:48.213' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (316, N'75ad6c60-cbf6-4457-abc5-6bf3a7502bad', 1, 1, CAST(N'2023-04-14T11:15:19.133' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (317, N'2412d419-9b40-8fdd-2308-5072c7686dfa', 1, 1, CAST(N'2023-04-14T11:28:33.297' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (318, N'ddc1e5cb-3cb5-75c1-9dc7-dde4a979341f', 1, 1, CAST(N'2023-04-14T11:29:35.210' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (319, N'43c17fed-ab95-0a83-e845-10b0b38a4a78', 1, 1, CAST(N'2023-04-14T11:40:23.257' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (320, N'8db15b35-07ee-db52-ace8-4d1d164ce312', 1, 1, CAST(N'2023-04-14T11:45:40.367' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (321, N'1fedbc83-b5cb-6177-3404-30815e3835a7', 1, 1, CAST(N'2023-04-14T12:00:54.170' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (322, N'e708bc49-573f-c446-4b69-4933f974c3e8', 1, 1, CAST(N'2023-04-14T12:02:51.300' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (323, N'b9fe4265-9e75-cc6a-1898-8cc463a54fcc', 1, 1, CAST(N'2023-04-14T12:03:43.807' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (324, N'dcc3a896-0417-a63b-a44d-3165197ce0bb', 1, 1, CAST(N'2023-04-14T12:04:36.127' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (325, N'23f7d14d-a066-59fb-f3a5-4b28ac6f8ef2', 1, 1, CAST(N'2023-04-14T12:29:07.837' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (326, N'c8603c0d-f9b3-d623-aca6-9647ebac78c0', 1, 1, CAST(N'2023-04-14T12:31:28.627' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (327, N'6f4637d9-61f9-dc39-86cf-a0c23ace7ebe', 1, 1, CAST(N'2023-04-14T18:07:14.847' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (328, N'b486274a-e114-238f-59c3-d8e18fad2dcc', 1, 1, CAST(N'2023-04-14T18:21:01.300' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (329, N'b8d6a9be-12b4-c359-a2c8-87187e8c55d9', 1, 1, CAST(N'2023-04-14T18:22:52.277' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (330, N'95d82c71-859b-81d5-4573-cf175305a595', 1, 1, CAST(N'2023-04-14T19:07:27.043' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (331, N'132fecde-f4d7-4588-e556-addb8acc1807', 1, 1, CAST(N'2023-04-15T10:15:21.983' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (332, N'7b7184ab-778c-d188-203f-5356769a0aa9', 1, 1, CAST(N'2023-04-15T10:17:09.343' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (333, N'0abf8a5d-f06f-51c5-1721-09744819e66c', 1, 1, CAST(N'2023-04-15T10:18:40.517' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (334, N'86f084cf-e3e7-7126-f497-9e65b398dc64', 1, 1, CAST(N'2023-04-15T10:29:30.500' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (335, N'954124af-603f-06ef-458b-7c8e454d8556', 1, 1, CAST(N'2023-04-15T10:46:00.613' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (336, N'954124af-603f-06ef-458b-7c8e454d8556', 1, 1, CAST(N'2023-04-15T10:46:43.817' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (337, N'954124af-603f-06ef-458b-7c8e454d8556', 1, 1, CAST(N'2023-04-15T10:48:53.950' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (338, N'dc3a588d-70cf-7079-dcd1-e89e4c10db86', 1, 1, CAST(N'2023-04-15T10:57:32.277' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (339, N'e08bb5ba-940c-45e0-2dc9-d9ffd825f28d', 1, 1, CAST(N'2023-04-15T11:18:08.293' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (340, N'66a2296e-98fa-7b2c-3cfb-4efa90d03846', 1, 1, CAST(N'2023-04-15T11:18:57.160' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (341, N'6293044e-ed4e-a1f4-3b61-2051bbdc6fb2', 1, 1, CAST(N'2023-04-15T11:20:05.723' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (342, N'e461df8a-f0bf-0ef1-bded-055cdc1f920a', 1, 1, CAST(N'2023-04-15T11:25:46.120' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (343, N'89886fe1-0a84-3ea4-6ffd-00eca13e066b', 1, 1, CAST(N'2023-04-15T11:36:07.080' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (344, N'c9d6c6de-7d36-09d2-068c-ac90f29c20cf', 1, 1, CAST(N'2023-04-15T11:51:10.000' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (345, N'f79dd346-76db-0354-721e-6419714f188c', 1, 1, CAST(N'2023-04-15T11:54:20.570' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (346, N'4e343a60-0161-b22c-c729-b9578556f026', 1, 1, CAST(N'2023-04-15T11:57:16.947' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (347, N'8cb6036f-6ac3-2349-dbff-9a088bbbb3d9', 1, 1, CAST(N'2023-04-15T13:36:01.817' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (348, N'e379f5f4-7fb2-03e7-a3ed-1f9da0b8f00e', 1, 1, CAST(N'2023-04-15T13:37:02.500' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (349, N'd4c0657f-5d7d-6869-14a5-b2f705b271d1', 1, 1, CAST(N'2023-04-15T13:47:32.807' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (350, N'3f6c3ee0-e5fe-f06d-e543-88f08f4fa43f', 1, 1, CAST(N'2023-04-15T13:49:45.113' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (351, N'83abec81-9a0e-a5b5-c1bc-64c3c3f3d26d', 1, 1, CAST(N'2023-04-15T13:56:55.610' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (352, N'31c0ff86-dcbd-60b7-f706-b8a1419bca3a', 1, 1, CAST(N'2023-04-15T13:57:56.760' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (353, N'207d37d9-1a59-a14d-179f-0fee731e90c2', 1, 1, CAST(N'2023-04-15T13:58:39.650' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (354, N'3c26f806-a939-9874-7759-037c07b74ba7', 1, 1, CAST(N'2023-04-15T14:01:19.593' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (355, N'90c920e9-a750-78fb-5185-d2620d16a77d', 1, 1, CAST(N'2023-04-15T14:03:11.987' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (356, N'f6ac35ea-ae7a-ff0e-782b-9eb1f521df0a', 1, 1, CAST(N'2023-04-15T14:42:00.783' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (357, N'26449150-ea25-cdc8-8c23-d07bce6adfba', 1, 1, CAST(N'2023-04-15T14:47:50.203' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (358, N'6b9025bf-d29f-14bd-6451-13c0a26640f2', 1, 1, CAST(N'2023-04-15T14:50:04.650' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (359, N'3eb699e3-888d-13ef-4078-e58d9dcf3f46', 1, 1, CAST(N'2023-04-15T14:52:51.180' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (360, N'b13e1c9d-2b35-caf7-8639-0249de5e26ba', 1, 1, CAST(N'2023-04-15T14:58:48.997' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (361, N'1b15203f-3c22-03c9-ea59-3d7e74f817d5', 1, 1, CAST(N'2023-04-15T15:00:59.870' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (362, N'490b2e0f-1b71-050d-6b8a-5c355b27ddee', 1, 1, CAST(N'2023-04-15T15:04:22.800' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (363, N'e73d9346-88dd-ffa9-01b4-02cd1b0b587e', 1, 1, CAST(N'2023-04-15T15:08:53.233' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (364, N'25757679-608a-18b8-a581-7ddb96e009cf', 1, 1, CAST(N'2023-04-15T15:12:47.723' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (365, N'944299ce-9f6a-1834-dcdc-91e01a3c89b6', 1, 1, CAST(N'2023-04-15T15:14:17.077' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (366, N'3d2ba286-6e30-5526-a3fa-50d5402a1474', 1, 1, CAST(N'2023-04-15T15:15:31.627' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (367, N'1777ea7c-6414-b022-863a-aabe6dd6509d', 1, 1, CAST(N'2023-04-15T15:28:44.857' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (368, N'a46a9580-b88e-70b6-e209-fce0be49baa6', 1, 1, CAST(N'2023-04-15T15:33:46.087' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (369, N'67ffd5a5-b80e-36e8-c62b-cf449e0046ed', 1, 1, CAST(N'2023-04-15T15:35:45.433' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (370, N'04c7ea69-adbc-875f-76c9-f7b142458289', 1, 1, CAST(N'2023-04-15T15:48:22.083' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (371, N'170c212a-811c-8a3f-de15-405a0f797772', 1, 1, CAST(N'2023-04-15T15:52:50.407' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (372, N'0dbea1d6-6776-4c35-5dfe-d3839126be4a', 1, 1, CAST(N'2023-04-15T15:53:49.080' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (373, N'b5a849f6-27f7-c9e8-2626-42aed13bf028', 1, 1, CAST(N'2023-04-15T15:55:12.733' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (374, N'd9f515f8-c2c5-0809-5bfa-e1c46824725d', 1, 1, CAST(N'2023-04-15T16:00:07.280' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (375, N'30750565-8b4e-6f62-735d-d88e527a8680', 1, 1, CAST(N'2023-04-15T16:01:19.510' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (376, N'69ebc2b6-c775-3e1e-87ac-5ce93053b01a', 1, 1, CAST(N'2023-04-15T16:01:43.773' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (377, N'69ebc2b6-c775-3e1e-87ac-5ce93053b01a', 1, 1, CAST(N'2023-04-15T16:05:05.060' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (378, N'f67f2959-9437-85aa-2a74-400b59d05b00', 1, 1, CAST(N'2023-04-15T16:09:57.677' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (379, N'f60531c8-1c4c-9ca2-40ef-ee08e20327a9', 1, 1, CAST(N'2023-04-15T16:14:13.577' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (380, N'9f43e787-c6fe-c393-aa1e-b765e26903df', 1, 1, CAST(N'2023-04-15T16:15:03.157' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (381, N'0535f972-994f-e606-ab47-5d216de6cf09', 1, 1, CAST(N'2023-04-15T16:16:14.747' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (382, N'1b953bca-5712-c0c6-0584-c301e689e0a2', 1, 1, CAST(N'2023-04-15T16:47:51.580' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (383, N'3941b8e5-c165-349b-ab8f-08225cf6840b', 1, 1, CAST(N'2023-04-15T16:54:38.613' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (384, N'efa2f03a-5b35-f467-ec53-98b46cc57f02', 1, 1, CAST(N'2023-04-15T17:42:19.090' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (385, N'efa2f03a-5b35-f467-ec53-98b46cc57f02', 1, 1, CAST(N'2023-04-15T17:42:46.170' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (386, N'9fa34344-6c3e-c6a7-1ab8-efcf14787f58', 1, 1, CAST(N'2023-04-15T17:46:17.907' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (387, N'2659d6eb-f3b8-bbf2-00fc-b8c59ae0b4e2', 1, 1, CAST(N'2023-04-15T17:47:50.780' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (388, N'ee0a4415-1509-a8a7-6c76-af9acae19a77', 1, 1, CAST(N'2023-04-15T17:55:05.897' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (389, N'4de5d3b2-2ef9-64fc-7740-839f1061f510', 1, 1, CAST(N'2023-04-15T17:57:01.257' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (390, N'011a5b57-fcbc-096c-933d-819e6528f338', 1, 1, CAST(N'2023-04-15T17:59:06.207' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (391, N'56947ab7-f209-f4f4-fb15-f8af53ce6ab7', 1, 1, CAST(N'2023-04-15T18:03:18.580' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (392, N'60ba89be-f7b0-80b5-f208-55761d9cd1f7', 1, 1, CAST(N'2023-04-15T18:04:33.153' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (393, N'24440237-2f70-343b-5cce-bf2a79f74b6f', 1, 1, CAST(N'2023-04-15T18:05:16.703' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (394, N'3b388bd0-a616-b089-3e19-cda63885d8a5', 1, 1, CAST(N'2023-04-15T18:07:28.743' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (395, N'cb510a63-da61-d90c-3879-f74fd287498a', 1, 1, CAST(N'2023-04-15T18:09:01.737' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (396, N'08fbd9aa-31a6-2f61-61da-c9cb6e7e3839', 1, 1, CAST(N'2023-04-15T18:15:59.640' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (397, N'aa3fb58f-c20a-6c54-e9ae-942ab7a4f8df', 1, 1, CAST(N'2023-04-15T18:20:24.900' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (398, N'9448b7c4-e329-fc4f-0d22-52b2f6cbe319', 1, 1, CAST(N'2023-04-15T18:23:20.287' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (399, N'9448b7c4-e329-fc4f-0d22-52b2f6cbe319', 1, 1, CAST(N'2023-04-15T18:23:44.420' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (400, N'9448b7c4-e329-fc4f-0d22-52b2f6cbe319', 1, 1, CAST(N'2023-04-15T18:24:09.320' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (401, N'7311fd4b-f12a-fb0b-43a1-7cfb2dedcc5f', 1, 1, CAST(N'2023-04-15T18:24:58.147' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (402, N'5b8bbfbd-5d0c-5f89-33c0-bd252f3f877d', 1, 1, CAST(N'2023-04-17T12:33:40.380' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (403, N'14e9ab5d-ec64-672d-e88a-f31ebad10db6', 1, 1, CAST(N'2023-04-17T12:39:30.473' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (404, N'1ec352b3-7a4a-aab3-a2b2-bfa50db015a8', 1, 1, CAST(N'2023-04-17T12:40:55.477' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (405, N'80df384f-e3a5-1f6c-26eb-9b60bdc287b4', 1, 1, CAST(N'2023-04-17T12:46:17.443' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (406, N'ccc26a23-4266-a5bf-e623-0a37ef2d78f2', 1, 1, CAST(N'2023-04-17T12:49:44.477' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (407, N'ab660cff-9569-5cca-3ca3-99596efd3b92', 1, 1, CAST(N'2023-04-17T13:59:52.120' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (408, N'2cdcd1c4-cc23-77de-6dd9-4c0b5da901cb', 1, 1, CAST(N'2023-04-17T14:43:54.193' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (409, N'1ffbfd3b-70df-0e8d-eb0c-f9eaad8839a3', 1, 1, CAST(N'2023-04-17T14:54:03.493' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (410, N'e63ce294-c942-8984-0461-38f727c7a9cc', 1, 1, CAST(N'2023-04-17T14:56:25.450' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (411, N'598e75b4-f087-9838-83bf-8d433efe7c91', 1, 1, CAST(N'2023-04-17T15:24:08.030' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (412, N'd24541b2-9fed-3b4c-932f-147de5ac7959', 1, 1, CAST(N'2023-04-17T15:26:20.427' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (413, N'244e16d1-eaec-9164-0b3c-aace733122c4', 1, 1, CAST(N'2023-04-17T15:27:57.953' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (414, N'244e16d1-eaec-9164-0b3c-aace733122c4', 1, 1, CAST(N'2023-04-17T15:28:41.240' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (415, N'244e16d1-eaec-9164-0b3c-aace733122c4', 1, 1, CAST(N'2023-04-17T15:29:07.370' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (416, N'6d7e73ef-1e01-d0a4-c7c8-9c78774b14b8', 1, 1, CAST(N'2023-04-17T17:15:24.853' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (417, N'6d7e73ef-1e01-d0a4-c7c8-9c78774b14b8', 1, 1, CAST(N'2023-04-17T17:15:46.867' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (418, N'39c4106f-d524-0031-349c-b6a3f5565b41', 1, 1, CAST(N'2023-04-17T17:25:38.800' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (419, N'7ea08527-f2d0-e795-2f47-8e2085ef00d0', 1, 1, CAST(N'2023-04-17T17:28:10.983' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (420, N'6bfbee58-7a2a-f19f-ff51-74da14ffc022', 1, 1, CAST(N'2023-04-17T17:31:02.787' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (421, N'fb6d7e6b-2462-158e-35f5-38d95d78234e', 1, 1, CAST(N'2023-04-17T17:33:39.417' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (422, N'01d19592-8294-c539-2f93-535df9f6acb6', 1, 1, CAST(N'2023-04-17T17:35:43.167' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (423, N'9f425250-c408-239b-5c3c-a7a2368d2a87', 1, 1, CAST(N'2023-04-17T17:39:24.960' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (424, N'8e4c100a-92ca-77d7-e313-432b3ba53ea6', 1, 1, CAST(N'2023-04-17T17:56:32.820' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (425, N'89b7de04-fb34-4525-0ef9-5559d114e72a', 1, 1, CAST(N'2023-04-17T17:59:28.970' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (426, N'e71593be-c35d-b272-ec71-959d0941961a', 1, 1, CAST(N'2023-04-17T18:00:51.950' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (427, N'e71593be-c35d-b272-ec71-959d0941961a', 1, 1, CAST(N'2023-04-17T18:03:47.947' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (428, N'29a58817-1a9d-a7b4-14a3-364b8fc768c3', 1, 1, CAST(N'2023-04-17T18:55:53.803' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (429, N'cccff170-c605-a999-cdce-0b3081465684', 1, 1, CAST(N'2023-04-17T18:57:04.800' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (430, N'82f02c56-e64c-a0f2-424d-0a9826da307f', 1, 1, CAST(N'2023-04-17T18:58:02.600' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (431, N'fe1d5222-f9c1-27e1-710d-b0158cf76177', 1, 1, CAST(N'2023-04-17T18:59:46.763' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (432, N'2231ac70-bfc2-6a00-f4b7-d4d0c1e16a0c', 1, 1, CAST(N'2023-04-18T12:04:13.107' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (433, N'd17cecf1-b8de-10a6-8f2d-2f1160ea508e', 1, 1, CAST(N'2023-04-18T13:53:43.237' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (434, N'4cfebf09-725e-e33a-5830-d18394a70741', 1, 1, CAST(N'2023-04-18T14:02:05.073' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (435, N'620d68d9-c79a-7a1b-ee1a-666b2e30f11b', 1, 1, CAST(N'2023-04-18T14:50:18.437' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (436, N'89f004d3-9101-bee7-ea91-0848e9f42598', 1, 1, CAST(N'2023-04-18T16:10:28.967' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (437, N'5837fe67-24f1-621a-4c76-1172de96689e', 1, 1, CAST(N'2023-04-18T16:21:26.983' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (438, N'ea485195-fcac-4c67-5618-ac0b5744e483', 1, 1, CAST(N'2023-04-18T16:24:27.060' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (439, N'8e653565-b6b5-29a2-86c4-3ec3d15cff6d', 1, 1, CAST(N'2023-04-18T16:28:57.597' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (440, N'82eabe6a-7201-cca3-237b-49e62865f17d', 1, 1, CAST(N'2023-04-18T18:12:09.160' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (441, N'63c027df-8c2f-1b81-311a-6293df2405b2', 1, 1, CAST(N'2023-04-18T18:13:06.383' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (442, N'41ebe9e9-19c4-dd9b-6465-b70dbd148a6b', 1, 1, CAST(N'2023-04-19T11:39:16.590' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (443, N'56218612-287a-587b-98b9-300dd09bfdb7', 1, 1, CAST(N'2023-04-19T12:25:16.533' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (444, N'1a184ea4-f8d5-cad4-edd8-ef53ef805226', 1, 1, CAST(N'2023-04-19T12:34:00.243' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (445, N'f1234ac0-9d41-7b67-be96-dd477537a5dd', 1, 1, CAST(N'2023-04-19T14:54:42.497' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (446, N'13a1a385-253e-726f-7e8f-1c40e02ea6f0', 1, 1, CAST(N'2023-04-19T15:07:25.717' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (447, N'5a3b091a-354c-62be-5bce-c5937f76d2f2', 1, 1, CAST(N'2023-04-19T15:21:51.533' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (448, N'5a3b091a-354c-62be-5bce-c5937f76d2f2', 1, 1, CAST(N'2023-04-19T15:23:24.417' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (449, N'5a3b091a-354c-62be-5bce-c5937f76d2f2', 1, 1, CAST(N'2023-04-19T15:23:45.920' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (450, N'2a0177ad-765f-4de1-9544-d9240fb0b4d7', 1, 1, CAST(N'2023-04-19T15:28:53.527' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (451, N'54c8fd79-8932-9bed-d12c-1cacc9706282', 1, 1, CAST(N'2023-04-19T15:30:53.937' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (452, N'47b06a81-00be-6133-df13-b2d435e93d61', 1, 1, CAST(N'2023-04-19T15:36:26.373' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (453, N'47b06a81-00be-6133-df13-b2d435e93d61', 1, 1, CAST(N'2023-04-19T15:36:49.363' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (454, N'de5ebf4e-78e8-c388-1917-3a12c61b62d3', 1, 1, CAST(N'2023-04-19T15:43:56.837' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (455, N'5e35f488-8159-d594-bb94-00d50060ded8', 1, 1, CAST(N'2023-04-19T16:05:33.827' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (456, N'88f7adea-46d2-99de-f068-a64e636f93f5', 1, 1, CAST(N'2023-04-19T16:29:08.927' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (457, N'867be03e-554e-b5ba-cfcb-49e434fc14e2', 1, 1, CAST(N'2023-04-19T16:30:04.670' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (458, N'7de99ff9-3123-2d58-4d7b-c9bc78fce8a8', 1, 1, CAST(N'2023-04-19T16:37:18.937' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (459, N'430753a6-fbde-e4b6-194a-6f814dae1ea4', 1, 1, CAST(N'2023-04-19T16:38:09.477' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (460, N'42edf7d5-803f-c0cf-4603-36ca549ec3fb', 1, 1, CAST(N'2023-04-19T16:41:19.623' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (461, N'7c9ec8b4-0315-3f53-c079-dd3a311569ed', 1, 1, CAST(N'2023-04-19T16:45:03.310' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (462, N'ca4894b7-3d3f-a86f-cd56-971358f13baf', 1, 1, CAST(N'2023-04-19T16:46:44.210' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (463, N'd8e39952-ab57-cf0e-eb30-684df7d47fa6', 1, 1, CAST(N'2023-04-19T16:49:50.423' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (464, N'd85c9530-a351-64f4-2e67-e100dd679c38', 1, 1, CAST(N'2023-04-19T16:50:50.647' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (465, N'359d5686-7244-c0e9-2c2f-285b7f4becb1', 1, 1, CAST(N'2023-04-19T16:53:17.780' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (466, N'91debf03-d728-421c-a2b4-4549e12984b0', 1, 1, CAST(N'2023-04-19T16:59:00.760' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (467, N'a796ed05-e951-9d5d-d579-d0aef5e2b51e', 1, 1, CAST(N'2023-04-19T17:00:21.807' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (468, N'9048e110-873b-1648-5d96-3abbaf9e54b5', 1, 1, CAST(N'2023-04-19T17:04:43.750' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (469, N'736ae9cb-b275-3bf3-322a-3ad88609f489', 1, 1, CAST(N'2023-04-19T17:06:29.523' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (470, N'4db14d2c-92e2-3c62-386d-d02c805ad9ae', 1, 1, CAST(N'2023-04-19T17:07:46.813' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (471, N'3a72652d-e1e6-84e7-a993-9acd59caefab', 1, 1, CAST(N'2023-04-19T17:09:21.320' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (472, N'e9a9b2cb-510d-a0c6-fd87-338083896d66', 1, 1, CAST(N'2023-04-19T17:15:42.007' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (473, N'bed06b0c-0a5a-2d61-11dd-aff8da880bc7', 1, 1, CAST(N'2023-04-19T17:18:01.437' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (474, N'18edb4ff-5dc9-3e1a-e7a3-b5f9ecfe3aa1', 1, 1, CAST(N'2023-04-19T17:39:21.233' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (475, N'dafdd2a8-adfb-5ff7-c1a9-ca7e2b20cccf', 1, 1, CAST(N'2023-04-19T17:53:12.073' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (476, N'19620f55-4787-91c4-a981-abd15728db84', 1, 1, CAST(N'2023-04-19T17:55:28.637' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (477, N'd01a3a94-9afd-84e6-fd07-15a5b1a6e229', 1, 1, CAST(N'2023-04-19T18:09:14.680' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (478, N'd41dc780-9dc4-24ca-0095-5dfa6be3198b', 1, 1, CAST(N'2023-04-19T18:13:11.433' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (479, N'a0b25265-212a-eb87-0fa2-87eefccb5e4b', 1, 1, CAST(N'2023-04-19T18:14:31.037' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (480, N'b69bc99e-7bd7-2b38-9904-8218ae5a0d4e', 1, 1, CAST(N'2023-04-19T18:17:34.787' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (481, N'85fecca7-cbda-58c7-174e-a4326a9c6c40', 1, 1, CAST(N'2023-04-19T18:18:22.353' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (482, N'cc0a8b8d-8ab4-7ed4-f1ea-65f381840fd0', 1, 1, CAST(N'2023-04-19T18:20:37.760' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (483, N'e3610539-1962-fc2d-dcd2-d5f80ffa1068', 1, 1, CAST(N'2023-04-19T18:39:08.047' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (484, N'da926ced-0fe7-2724-a89f-e23f535e1bef', 1, 1, CAST(N'2023-04-19T18:40:14.333' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (485, N'92809602-1638-17ee-27fd-fa5e1451085c', 1, 1, CAST(N'2023-04-19T18:41:30.633' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (486, N'40b1aa6a-7c9b-7be5-249e-a6fe379345fa', 1, 1, CAST(N'2023-04-19T18:45:27.887' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (487, N'be8d9ec8-0dde-4a3e-6d98-c818be9d8ced', 1, 1, CAST(N'2023-04-19T18:47:14.137' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (488, N'd1694f3e-3595-5ccc-ed8c-abbe74d88f58', 1, 1, CAST(N'2023-04-19T18:48:15.223' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (489, N'c4e0677b-968b-8999-eb42-f416ec99c590', 1, 1, CAST(N'2023-04-19T18:53:29.460' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (490, N'a2134d29-ea6c-15fa-39f1-ecdf5140c010', 1, 1, CAST(N'2023-04-19T18:56:40.060' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (491, N'604c0816-d711-6567-582e-f43928744f8e', 1, 1, CAST(N'2023-04-19T18:59:19.307' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (492, N'227438e8-0fb2-0b15-1366-5b5dcf1400a0', 1, 1, CAST(N'2023-04-20T10:17:15.930' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (493, N'2c2a0615-3fa4-0aca-fdb7-3eb270e2bfe0', 1, 1, CAST(N'2023-04-20T10:56:28.490' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (494, N'e136a2da-8379-5ac5-c158-10e511a5008f', 1, 1, CAST(N'2023-04-20T11:01:47.620' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (495, N'4bec51b0-b0a7-6d2b-9dd6-1f925ae2100e', 1, 1, CAST(N'2023-04-20T11:04:20.750' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (496, N'4bec51b0-b0a7-6d2b-9dd6-1f925ae2100e', 1, 1, CAST(N'2023-04-20T11:04:23.840' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (497, N'ee442a32-c6e8-8ba4-9786-643ff5d44d11', 1, 1, CAST(N'2023-04-20T11:06:57.310' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (498, N'8c08b195-f758-fda8-8caa-0dd3d4b35464', 1, 1, CAST(N'2023-04-20T11:09:58.290' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (499, N'003522bf-b063-14ba-bb95-e7edc9a43a0d', 1, 1, CAST(N'2023-04-20T11:18:36.980' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (500, N'bb22927a-5a41-e346-f25e-423a9609b50c', 1, 1, CAST(N'2023-04-20T11:25:16.660' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (501, N'fae85dc9-8920-b49c-29b4-65a4dae3d476', 1, 1, CAST(N'2023-04-20T11:40:12.920' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (502, N'28c77859-7970-bf31-43b1-496fb448f76b', 1, 1, CAST(N'2023-04-20T11:43:57.167' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (503, N'3c9c8660-0c92-b6df-d727-81a14d4b9466', 1, 1, CAST(N'2023-04-20T11:49:36.387' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (504, N'ad6657b2-6023-d1e9-29c2-0c57e98faf98', 1, 1, CAST(N'2023-04-20T12:18:00.507' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (505, N'62df8961-a10b-4d8b-09ec-b23d1fc1a6d1', 1, 1, CAST(N'2023-04-20T12:19:08.207' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (506, N'5fd538e1-4eca-9522-0d9c-b7344ed9e299', 1, 1, CAST(N'2023-04-20T12:28:30.227' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (507, N'87dde95c-1d5a-fb3e-3bd9-20b992484e29', 1, 1, CAST(N'2023-04-20T12:29:57.723' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (508, N'ccce5163-dfbf-43e7-c7fd-cf00ccb7a23b', 1, 1, CAST(N'2023-04-20T12:32:32.157' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (509, N'8fc0d734-3f08-6281-ba0f-a963d05303fc', 1, 1, CAST(N'2023-04-20T12:33:14.400' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (510, N'2e09b6a3-885e-8cff-cc1c-9980cb5c56b1', 1, 1, CAST(N'2023-04-20T12:36:40.680' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (511, N'1bbb2d47-e795-b6d3-13f1-386da931339c', 1, 1, CAST(N'2023-04-20T12:50:34.450' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (512, N'78a45d5f-5493-c9be-7099-0e614c8fb335', 1, 1, CAST(N'2023-04-20T13:13:00.797' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (513, N'ae9866cf-86eb-2d62-8fe7-04faf103f310', 1, 1, CAST(N'2023-04-20T13:18:28.213' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (514, N'011d866c-75b0-cbeb-46e1-6a443b4cc477', 1, 1, CAST(N'2023-04-20T13:23:45.340' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (515, N'503725e6-a39f-113d-c726-3aca167323af', 1, 1, CAST(N'2023-04-20T13:25:47.520' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (516, N'81f2776c-5618-659e-f0b7-0d8e11b08232', 1, 1, CAST(N'2023-04-20T13:28:35.593' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (517, N'87846ac8-eb7a-1660-0400-1eca18bb62e4', 1, 1, CAST(N'2023-04-20T13:30:25.627' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (518, N'b68c789f-4f15-d6a7-f203-8adbe7740f5a', 1, 1, CAST(N'2023-04-20T13:33:14.980' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (519, N'f07ea60d-7fe9-c200-0860-7a82da719e57', 1, 1, CAST(N'2023-04-20T13:35:04.333' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (520, N'77d46e22-4175-46ab-3c89-7c27e1a9cb61', 1, 1, CAST(N'2023-04-20T13:35:59.180' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (521, N'98c9e588-c835-3aa3-4c48-1cc856d7dd5d', 1, 1, CAST(N'2023-04-20T13:38:03.180' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (522, N'53ca705d-3168-74f2-be34-a4ca70b1f118', 1, 1, CAST(N'2023-04-20T13:41:14.480' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (523, N'f7085d33-4599-ad5e-ee5c-408bdb61a397', 1, 1, CAST(N'2023-04-20T13:46:17.010' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (524, N'cdfbe49b-dd9f-af68-ac02-524761905127', 1, 1, CAST(N'2023-04-20T13:48:35.890' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (525, N'0f196fe6-9443-6f94-ae64-24788ee120b1', 1, 1, CAST(N'2023-04-20T13:51:21.207' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (526, N'1f944864-b693-3e2d-8fdb-b83d010a246a', 1, 1, CAST(N'2023-04-20T13:55:49.220' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (527, N'76d445c4-e2ab-904d-d40a-f09df2bb974c', 1, 1, CAST(N'2023-04-20T13:57:19.587' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (528, N'913c6134-e48c-6ee6-c7f2-3b3f7e6a8184', 1, 1, CAST(N'2023-04-20T14:33:29.600' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (529, N'e2ae0802-909b-0489-c0c2-f0c6668eb55b', 1, 1, CAST(N'2023-04-20T14:35:56.000' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (530, N'273fd05a-7e2c-bae0-12df-8a5e843f2cfe', 1, 1, CAST(N'2023-04-20T14:51:46.910' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (531, N'522c9c6b-a4a9-2bb1-52c8-7a0c588b94f3', 1, 1, CAST(N'2023-04-20T15:00:30.343' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (532, N'bcee7d6a-2c45-3d1c-5b50-310d30a1bccb', 1, 1, CAST(N'2023-04-20T15:02:05.310' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (533, N'306d61ff-8894-a9c3-805c-41f73ba505ff', 1, 1, CAST(N'2023-04-20T15:31:15.803' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (534, N'8668e2f1-70c7-94c5-bcf9-00ede0732205', 1, 1, CAST(N'2023-04-20T15:32:40.573' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (535, N'39bdd80c-8f23-8640-332c-a04d4d22ce5e', 1, 1, CAST(N'2023-04-20T15:33:30.880' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (536, N'843ad120-b22b-540d-f692-00e6c864e999', 1, 1, CAST(N'2023-04-20T15:35:39.643' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (537, N'f553f2ee-a610-5722-c73e-309fab51664d', 1, 1, CAST(N'2023-04-20T15:38:02.093' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (538, N'7922543f-762f-c3f7-a0aa-033abff2b9d0', 1, 1, CAST(N'2023-04-20T15:40:45.697' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (539, N'76f89aa2-6b9f-42df-6419-8799ffb1ef43', 1, 1, CAST(N'2023-04-20T15:42:50.017' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (540, N'152a6b0b-11b0-7010-8ca0-048fd32d4a5f', 1, 1, CAST(N'2023-04-20T15:45:21.093' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (541, N'4499bedd-6163-a087-0df5-8a883bd319ad', 1, 1, CAST(N'2023-04-20T15:46:45.377' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (542, N'b2c49d39-be30-9516-65b0-3267781b714d', 1, 1, CAST(N'2023-04-20T16:12:21.857' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (543, N'3c7d384d-58d1-9011-9b9e-d08660cef5af', 1, 1, CAST(N'2023-04-20T16:16:47.477' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (544, N'0370c23d-fbb5-1798-fd45-a7664788a76b', 1, 1, CAST(N'2023-04-20T16:18:30.980' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (545, N'ff924db4-14bc-38b2-9bf0-dcf58f3eff49', 1, 1, CAST(N'2023-04-20T16:20:49.930' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (546, N'f987ad8e-c594-1909-24a0-40d9785117ee', 1, 1, CAST(N'2023-04-20T16:22:39.727' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (547, N'014030c7-77d7-9879-918b-67ca028c83e1', 1, 1, CAST(N'2023-04-20T17:09:21.930' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (548, N'32bd7aec-84d2-1d2c-53b4-78a569b1c231', 1, 1, CAST(N'2023-04-20T17:27:56.250' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (549, N'0c9a88f9-9b77-1626-4bb8-37100ffa1ccf', 1, 1, CAST(N'2023-04-20T17:31:12.620' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (550, N'b5fdc929-ac7b-eab6-e723-84c84e049924', 1, 1, CAST(N'2023-04-20T17:32:47.797' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (551, N'74a7623e-d24c-e3bf-4542-affd53267d03', 1, 1, CAST(N'2023-04-20T17:35:10.603' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (552, N'2c3d4110-0841-96cc-b798-c92138b87ea5', 1, 1, CAST(N'2023-04-21T15:32:10.683' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (553, N'e51e9a37-c628-3d3a-3cf8-95d08bda383e', 1, 1, CAST(N'2023-04-21T15:57:48.830' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (554, N'79071bbd-34e6-bcae-4ebb-2046322fb327', 1, 1, CAST(N'2023-04-21T16:02:36.840' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (555, N'97cfda97-d62b-e10e-be30-f8adefb30311', 1, 1, CAST(N'2023-04-21T16:23:09.590' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (556, N'9b0850ff-8256-0632-f5fb-e1630a686123', 1, 1, CAST(N'2023-04-21T16:42:00.907' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (557, N'd2ac56bb-0de3-527c-db34-6c918e2fbafa', 1, 1, CAST(N'2023-04-21T16:43:32.687' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (558, N'762ee823-6a5c-294c-c45b-c296d75ada73', 1, 1, CAST(N'2023-04-21T18:01:49.817' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (559, N'0e24e08e-fb91-d6ee-df19-086ebe33daa4', 1, 1, CAST(N'2023-04-21T18:08:28.083' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (560, N'3fc439cb-4ec9-0d40-b97c-781eb0740b6e', 1, 1, CAST(N'2023-04-21T18:24:15.987' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (561, N'19e2f0fe-2808-60d6-6c14-cda9137ba533', 1, 1, CAST(N'2023-04-21T18:34:35.100' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (562, N'6bac8f0e-5599-47c0-8245-b7b1539fbb63', 1, 1, CAST(N'2023-04-21T18:36:46.143' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (563, N'cf50b654-795e-2d34-a87b-00bff11e3093', 1, 1, CAST(N'2023-04-24T09:57:02.777' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (564, N'd4528356-5a2f-5828-0fe2-dedbf211619c', 1, 1, CAST(N'2023-04-24T10:04:22.783' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (565, N'67449710-30b1-96d8-3ae3-66b89651dff9', 1, 1, CAST(N'2023-04-24T10:22:18.543' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (566, N'99fe11d0-c377-a0fe-771b-3dbfff28153d', 1, 1, CAST(N'2023-04-24T10:33:44.117' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (567, N'cd3d33c2-5d37-1b46-311b-16620c20a5dc', 1, 1, CAST(N'2023-04-25T10:11:09.030' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (568, N'cd3d33c2-5d37-1b46-311b-16620c20a5dc', 1, 1, CAST(N'2023-04-25T10:11:52.200' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (569, N'cd3d33c2-5d37-1b46-311b-16620c20a5dc', 2, 1, CAST(N'2023-04-25T10:12:10.693' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (570, N'32be37f4-9117-975d-7b14-5851fbeb20fb', 1, 1, CAST(N'2023-04-25T12:15:12.513' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (571, N'f117a94b-7919-1b50-a52c-779b7e048516', 1, 1, CAST(N'2023-04-25T12:18:01.740' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (572, N'ed6111cb-b6ae-01f8-9fb9-5180026ab9e8', 1, 1, CAST(N'2023-04-25T12:38:48.173' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (573, N'fbd869d3-cc28-c1ce-53d6-7b961974e76b', 5, 1, CAST(N'2023-04-25T12:51:03.720' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (574, N'6e7d9276-ffb4-411f-810c-55acf90823f9', 5, 1, CAST(N'2023-04-25T13:17:37.390' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (575, N'e7f229b6-c5a6-77f3-aa82-2caecefd4cfe', 5, 1, CAST(N'2023-04-25T13:18:46.777' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (576, N'86424a36-a401-e8ab-cbfc-f887bb8e9a1d', 5, 1, CAST(N'2023-04-25T13:25:56.890' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (577, N'a0b3a7f2-5061-679b-2e04-6792c7cc87b3', 5, 1, CAST(N'2023-04-25T14:48:58.667' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (578, N'a0b3a7f2-5061-679b-2e04-6792c7cc87b3', 1, 1, CAST(N'2023-04-25T14:49:53.627' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (579, N'36aab2f0-6b2d-b643-9aac-87bb23efe956', 1, 1, CAST(N'2023-04-25T16:51:51.160' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (580, N'ebae1cf9-23e2-5966-d004-2e39cef89dce', 1, 1, CAST(N'2023-04-25T16:57:12.293' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (581, N'd8da915f-5301-4785-6817-d451ef749b6e', 1, 1, CAST(N'2023-04-25T16:58:31.367' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (582, N'ac0c0e41-00e1-5d48-d983-3007b15c3441', 1, 1, CAST(N'2023-04-25T17:14:45.667' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (583, N'd296c8c7-6448-79a6-fc3d-7676336e7d10', 1, 1, CAST(N'2023-04-26T10:15:01.593' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1571, N'4adc7dc3-219b-60a1-96fa-adc2258b2049', 1, 1, CAST(N'2023-04-26T12:54:30.563' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1572, N'bc2a34dd-04ce-309f-45d0-db748d4e2cb4', 1, 1, CAST(N'2023-04-26T13:02:32.437' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1573, N'c5102c31-572d-ddf5-1cb3-dd137cb63d56', 1, 1, CAST(N'2023-04-26T13:04:28.397' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1574, N'63486a15-c12d-f29b-55dc-baba776048e4', 1, 1, CAST(N'2023-04-26T13:29:02.700' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1575, N'ab60201e-5e16-cb89-8021-df176ce7250c', 1, 1, CAST(N'2023-04-26T13:30:30.903' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1576, N'7b7cfe9a-c0d0-5e4d-4aa2-98e8e3dec54a', 1, 1, CAST(N'2023-04-26T13:31:21.613' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1577, N'0324bb39-1823-6615-eeed-f7f098cd5d63', 1, 1, CAST(N'2023-04-26T13:32:26.253' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1578, N'23595b49-69a3-01cb-55e2-cd15f38fcad7', 1, 1, CAST(N'2023-04-26T13:35:43.473' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1579, N'12fbc7c2-99fc-e20c-acc7-ff8d560137be', 1, 1, CAST(N'2023-04-26T13:49:02.760' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1580, N'c4df10e7-b3b0-ce97-b732-683aa0d290a2', 1, 1, CAST(N'2023-04-26T13:56:09.080' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1581, N'a826a19c-a606-1abc-e460-54c777daba15', 1, 1, CAST(N'2023-04-26T13:57:59.443' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1582, N'cc13ab14-32f3-4bb2-2d2b-e00bf7772c14', 1, 1, CAST(N'2023-04-26T13:59:36.117' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1583, N'c3cd089a-1090-11e2-01c0-027890fd65c2', 1, 1, CAST(N'2023-04-26T14:33:13.133' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1584, N'62079ac5-74b0-0b83-7ad3-25043163990b', 1, 1, CAST(N'2023-04-26T14:43:39.750' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1585, N'2f04751b-5ee3-1c42-ce39-522f0ca421c9', 1, 1, CAST(N'2023-04-26T14:53:45.463' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1586, N'e05cfaab-88f7-8abc-eead-362e2b4602dc', 1, 1, CAST(N'2023-04-26T15:08:12.130' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1587, N'9441f36e-13d7-fac7-44ea-b4baf1232e8c', 1, 1, CAST(N'2023-04-26T15:10:25.690' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1588, N'0225d72f-7123-066e-1ca7-045ea763dd9a', 1, 1, CAST(N'2023-04-26T15:18:47.130' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1589, N'0225d72f-7123-066e-1ca7-045ea763dd9a', 1, 1, CAST(N'2023-04-26T15:22:20.460' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1590, N'315617de-fc41-5146-08fb-178a074f32e8', 1, 1, CAST(N'2023-04-26T15:42:12.597' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1591, N'2a8bdf0e-337b-bdfe-c934-8750f5f86531', 1, 1, CAST(N'2023-04-26T15:44:55.507' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1592, N'c8b3ae80-b5c4-3844-9967-345c596468ca', 1, 1, CAST(N'2023-04-26T15:50:03.133' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1593, N'0d85a992-8c18-85e7-8f41-36426e1aada8', 1, 1, CAST(N'2023-04-26T16:00:15.503' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1594, N'6db66f98-b8b3-8296-88cf-6b73754e8d8b', 1, 1, CAST(N'2023-04-26T16:04:21.690' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1595, N'91353dce-246f-ce36-87af-39c10a4e19e4', 1, 1, CAST(N'2023-04-26T16:11:46.770' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1596, N'0adc721b-430d-68db-39ec-7151c3102091', 1, 1, CAST(N'2023-04-26T16:14:16.087' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1597, N'cfb12644-dac6-0483-9aa6-7100e2d99321', 1, 1, CAST(N'2023-04-26T16:15:23.643' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1598, N'b5b94dbc-4a6a-0718-cb4b-e4862575601b', 1, 1, CAST(N'2023-04-26T16:16:20.703' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1599, N'8bf10ab6-c83f-d51c-34b2-c6bbee090d20', 1, 1, CAST(N'2023-04-26T16:17:31.440' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1600, N'8bf10ab6-c83f-d51c-34b2-c6bbee090d20', 1, 1, CAST(N'2023-04-26T16:18:28.620' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1601, N'8bf10ab6-c83f-d51c-34b2-c6bbee090d20', 1, 1, CAST(N'2023-04-26T16:19:45.130' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1602, N'63127973-d6cb-3d31-943e-e5023c2e7cad', 1, 1, CAST(N'2023-04-26T16:25:33.080' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1603, N'edcb517d-3976-c567-d5c2-7bbcd41a1bb5', 1, 1, CAST(N'2023-04-26T16:26:10.950' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1604, N'82a10707-b052-cfe5-be0e-0fd6b855acfd', 1, 1, CAST(N'2023-04-26T16:29:33.307' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1605, N'314b21c5-53f3-c0df-2f81-5f9a60658878', 1, 1, CAST(N'2023-04-26T16:33:49.137' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1606, N'caded9e0-c246-e6d3-120a-26ffc9ef99fe', 1, 1, CAST(N'2023-04-26T16:40:47.840' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1607, N'dcbdd1ad-ffec-7616-4a0f-eb9154e786d9', 1, 1, CAST(N'2023-04-26T16:46:51.023' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1608, N'90e1cfa5-4960-23f4-3827-fe8287ff2401', 1, 1, CAST(N'2023-04-26T16:48:28.263' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1609, N'90e1cfa5-4960-23f4-3827-fe8287ff2401', 1, 1, CAST(N'2023-04-26T16:49:02.917' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1610, N'78552ad2-b548-5ef6-f096-ccf23ff99bc2', 1, 1, CAST(N'2023-04-26T16:56:02.553' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1611, N'3478b75e-f697-7296-669b-861dc30d336b', 1, 1, CAST(N'2023-04-26T17:15:59.273' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1612, N'a3ed3942-3964-fddb-df87-6df373c0dc5e', 1, 1, CAST(N'2023-04-26T17:18:01.720' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1613, N'701a3bdf-b05c-0732-9298-2a7672f8e451', 1, 1, CAST(N'2023-04-26T17:19:40.070' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1614, N'701a3bdf-b05c-0732-9298-2a7672f8e451', 1, 1, CAST(N'2023-04-26T17:19:48.153' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1615, N'701a3bdf-b05c-0732-9298-2a7672f8e451', 1, 1, CAST(N'2023-04-26T17:20:10.370' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1616, N'b64da6c3-f51e-80af-2742-9002a67d9f96', 1, 1, CAST(N'2023-04-26T17:22:36.720' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1617, N'f2501d53-4d3b-ef9e-ea47-05a5cc694572', 1, 1, CAST(N'2023-04-26T17:23:32.557' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1618, N'71bad67f-5dc7-9a89-c3f0-c7f554e1a44b', 1, 1, CAST(N'2023-04-26T17:24:38.110' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1619, N'd1a2607c-3e71-5140-7411-fe60356bfc58', 1, 1, CAST(N'2023-04-26T17:29:49.507' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1620, N'11a3c848-b877-0f77-ce9a-ae141f2d8bd0', 1, 1, CAST(N'2023-04-26T17:35:35.370' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1621, N'a45c33d8-da1d-7220-79fe-38172e4914bd', 1, 1, CAST(N'2023-04-26T17:38:38.470' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1622, N'a45c33d8-da1d-7220-79fe-38172e4914bd', 1, 1, CAST(N'2023-04-26T17:39:27.210' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1623, N'a45c33d8-da1d-7220-79fe-38172e4914bd', 1, 1, CAST(N'2023-04-26T17:39:35.303' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1624, N'04c8ac32-d87c-badc-82f8-d05903f76879', 1, 1, CAST(N'2023-04-26T17:41:53.337' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1625, N'2cebfd29-bb82-fba4-0d93-02f041846d13', 1, 1, CAST(N'2023-04-26T17:42:38.233' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1626, N'e01f0919-2765-6016-25ad-5b593977ab41', 1, 1, CAST(N'2023-04-26T17:46:02.703' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1627, N'e01f0919-2765-6016-25ad-5b593977ab41', 1, 1, CAST(N'2023-04-26T17:46:40.903' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1628, N'37f5ed74-05d2-338d-e6c9-a574df28946b', 1, 1, CAST(N'2023-04-26T18:16:37.017' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1629, N'fcae3d0d-7e72-e460-48c8-17bfcb8585dc', 1, 1, CAST(N'2023-04-26T18:17:34.543' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1630, N'b19b4663-87f3-dc19-af55-3ae784ee85f4', 1, 1, CAST(N'2023-04-26T18:22:44.580' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1631, N'3d717ab6-351f-74df-fb5f-7747c37c6d53', 1, 1, CAST(N'2023-04-26T18:24:52.397' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1632, N'bdb3d12f-e067-d621-9542-6c111fa61589', 1, 1, CAST(N'2023-04-26T18:27:06.783' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1633, N'f7cac494-6fc3-212a-ad42-359fc511d867', 1, 1, CAST(N'2023-04-26T18:30:06.790' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1634, N'b6c7e512-3564-1119-24e1-15f870adaf18', 1, 1, CAST(N'2023-04-26T18:37:19.610' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1635, N'dfa0e10f-5a09-7e72-bb1b-2f19b407218f', 1, 1, CAST(N'2023-04-26T18:45:10.260' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1636, N'0ef58d92-d725-9f3c-5039-a04d40a538a2', 1, 1, CAST(N'2023-04-26T18:47:21.920' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1637, N'24136782-8a0b-bf4c-0fce-3019f79d3a52', 1, 1, CAST(N'2023-04-26T18:48:37.080' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1638, N'777a0d50-131c-0da4-eafc-360bb97c8799', 1, 1, CAST(N'2023-04-26T18:50:47.600' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1639, N'777a0d50-131c-0da4-eafc-360bb97c8799', 1, 1, CAST(N'2023-04-26T18:51:08.030' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1640, N'd9fffd46-2805-efd9-96f8-eeef23c9e603', 1, 1, CAST(N'2023-04-28T10:28:28.543' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1641, N'b454f75a-8ec0-1518-12ff-7239590d043e', 1, 1, CAST(N'2023-04-28T10:29:54.557' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1642, N'3c3ff67d-cf53-7d5f-4d76-ba1ecd905060', 1, 1, CAST(N'2023-04-28T10:31:31.183' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1643, N'1dde1be0-b17f-8345-f37a-300afae41c49', 1, 1, CAST(N'2023-04-28T10:33:01.950' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1644, N'2ddac2d7-a894-69dd-41e0-31ecb0a7f53c', 1, 1, CAST(N'2023-04-28T10:46:27.367' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1645, N'2ddac2d7-a894-69dd-41e0-31ecb0a7f53c', 1, 1, CAST(N'2023-04-28T10:47:10.637' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1646, N'5b4fc92e-bbd1-31b7-4951-68316e70e590', 1, 1, CAST(N'2023-04-28T10:55:33.377' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1647, N'eebfd1f1-e5d5-3d9c-c819-57a6ddff4393', 1, 1, CAST(N'2023-04-28T11:10:23.893' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1648, N'eebfd1f1-e5d5-3d9c-c819-57a6ddff4393', 1, 1, CAST(N'2023-04-28T11:11:14.413' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1649, N'eebfd1f1-e5d5-3d9c-c819-57a6ddff4393', 1, 1, CAST(N'2023-04-28T11:11:54.677' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1650, N'92908e7f-47ce-7747-5267-2e7337f3b443', 1, 1, CAST(N'2023-04-28T11:13:54.560' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1651, N'92908e7f-47ce-7747-5267-2e7337f3b443', 1, 1, CAST(N'2023-04-28T11:15:00.810' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1652, N'ae08ff77-f005-a235-d1cf-e488f9017a5e', 1, 1, CAST(N'2023-04-28T13:29:23.113' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1653, N'50b0429b-6740-4298-22b9-c9243d67e1c7', 1, 1, CAST(N'2023-04-28T13:32:13.550' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1654, N'50b0429b-6740-4298-22b9-c9243d67e1c7', 1, 1, CAST(N'2023-04-28T13:33:10.400' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1655, N'45f445b3-f72e-984f-0495-b99630179669', 1, 1, CAST(N'2023-04-28T13:41:20.420' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1656, N'45f445b3-f72e-984f-0495-b99630179669', 1, 1, CAST(N'2023-04-28T13:42:01.697' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1657, N'26e6faad-0546-03ea-a233-7640d534cdd3', 1, 1, CAST(N'2023-04-28T13:45:30.060' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1658, N'267c40c4-323c-dfc7-9cae-56ef2f77e6b4', 1, 1, CAST(N'2023-04-28T13:49:13.503' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1659, N'e596831b-30e5-c589-61aa-96406f5c94c9', 1, 1, CAST(N'2023-04-28T13:49:58.910' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1660, N'b4f25ade-6dd7-c236-930c-2ddf5357b7e4', 1, 1, CAST(N'2023-04-28T13:51:47.080' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1661, N'b4f25ade-6dd7-c236-930c-2ddf5357b7e4', 1, 1, CAST(N'2023-04-28T13:53:50.743' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1662, N'b4f25ade-6dd7-c236-930c-2ddf5357b7e4', 1, 1, CAST(N'2023-04-28T13:54:50.067' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1663, N'b714279e-188f-6d41-9b33-50a5c548906b', 1, 1, CAST(N'2023-04-28T14:35:20.067' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1664, N'4730688d-80d6-5d3d-157b-4d3dffc2e3c5', 1, 1, CAST(N'2023-04-28T16:17:23.553' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1665, N'f787c050-2017-dcbd-591f-36da441921f1', 1, 1, CAST(N'2023-04-28T16:23:30.180' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1666, N'ffbe3ed1-c87c-0f57-0a34-187739324548', 1, 1, CAST(N'2023-04-28T17:01:13.777' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1667, N'302a7554-0ca7-bf08-a7f4-c8eeaac29374', 1, 1, CAST(N'2023-04-28T17:03:20.713' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1668, N'e94e0bb2-d129-a531-3c99-287646e179a4', 1, 1, CAST(N'2023-04-28T17:06:00.240' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1669, N'42901218-66c2-b0f2-1513-26b0f33cb750', 1, 1, CAST(N'2023-04-28T17:07:39.950' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1670, N'0d15f03a-374d-731a-3475-5e028609de6b', 1, 1, CAST(N'2023-04-28T17:09:38.980' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1671, N'e1356285-1d91-70b6-b59d-2d0de073a223', 1, 1, CAST(N'2023-04-28T17:11:26.813' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1672, N'51d32860-1319-bb8a-ed00-4a445156e263', 1, 1, CAST(N'2023-04-28T17:18:15.660' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1673, N'2f5cb4c5-ce2f-afdd-5c7a-f83737b3a6a9', 1, 1, CAST(N'2023-04-28T17:29:18.790' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1674, N'b8ea1ede-2db3-abca-c9b7-a7978c00a14e', 1, 1, CAST(N'2023-04-28T22:25:56.000' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1675, N'addab7f9-cb75-f617-3656-3b06af3f5a49', 1, 1, CAST(N'2023-04-28T23:17:13.917' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1676, N'addab7f9-cb75-f617-3656-3b06af3f5a49', 1, 1, CAST(N'2023-04-28T23:18:00.157' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (1677, N'd75986fd-2066-d5b7-31cc-839f0a5a9564', 1, 1, CAST(N'2023-04-28T23:20:33.463' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2674, N'5614969b-d6d0-5e4c-329d-d2ff40b3913e', 1, 1, CAST(N'2023-04-30T11:44:46.227' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2675, N'3d4b92bc-86c1-2b7d-2c4c-41da40e8c6b8', 1, 1, CAST(N'2023-04-30T11:58:01.273' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2676, N'3d4b92bc-86c1-2b7d-2c4c-41da40e8c6b8', 1, 1, CAST(N'2023-04-30T12:41:16.450' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2677, N'bc696a41-2b18-372f-3d12-278d244a836d', 1, 1, CAST(N'2023-04-30T19:44:21.513' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2678, N'04e2fbf9-427a-f70f-a4c5-a559c1da9ce5', 1, 1, CAST(N'2023-04-30T19:52:08.717' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2679, N'04e2fbf9-427a-f70f-a4c5-a559c1da9ce5', 1, 1, CAST(N'2023-04-30T19:52:55.360' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2680, N'6e731e89-5186-9cc7-a979-3c65bf45a450', 1, 1, CAST(N'2023-04-30T19:56:43.077' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2681, N'f3cf3b98-d16b-4c64-7377-2a4dec67a275', 1, 1, CAST(N'2023-04-30T19:58:36.393' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2682, N'f3cf3b98-d16b-4c64-7377-2a4dec67a275', 1, 1, CAST(N'2023-04-30T19:58:44.723' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2683, N'5bd441d3-d4eb-80f0-d9a1-92239adf21df', 1, 1, CAST(N'2023-04-30T20:17:56.500' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2684, N'5bd441d3-d4eb-80f0-d9a1-92239adf21df', 1, 1, CAST(N'2023-04-30T20:18:27.077' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2685, N'5bd441d3-d4eb-80f0-d9a1-92239adf21df', 1, 1, CAST(N'2023-04-30T20:19:51.520' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2686, N'5bd441d3-d4eb-80f0-d9a1-92239adf21df', 1, 1, CAST(N'2023-04-30T20:21:07.077' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2687, N'5bd441d3-d4eb-80f0-d9a1-92239adf21df', 1, 1, CAST(N'2023-04-30T20:21:49.870' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2688, N'5bd441d3-d4eb-80f0-d9a1-92239adf21df', 1, 1, CAST(N'2023-04-30T20:22:24.370' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (2689, N'ababd549-d6c9-1d37-f0e0-6f37f971ed6b', 1, 1, CAST(N'2023-04-30T20:25:02.753' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3674, N'9d6f0a07-cda1-41f6-3013-35be89505172', 1, 1, CAST(N'2023-04-30T21:18:18.713' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3675, N'7655f3cf-0d67-972a-91b4-fcf598243ef7', 1, 1, CAST(N'2023-04-30T21:25:31.037' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3676, N'5685f8fb-1590-6a0d-296e-ea3b1532695d', 1, 1, CAST(N'2023-04-30T21:32:13.607' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3677, N'5685f8fb-1590-6a0d-296e-ea3b1532695d', 1, 1, CAST(N'2023-04-30T21:53:35.160' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3678, N'930f4687-a5ce-9f48-88b4-6c135ffe4ccf', 1, 1, CAST(N'2023-04-30T21:54:54.717' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3679, N'8bcfda9a-64ba-438c-44d2-568af8faa2c5', 1, 1, CAST(N'2023-04-30T21:58:38.633' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3680, N'44691bf4-c433-dd17-478a-e508cd933fb7', 1, 1, CAST(N'2023-04-30T22:05:58.077' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3681, N'44691bf4-c433-dd17-478a-e508cd933fb7', 1, 1, CAST(N'2023-04-30T22:07:02.257' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3682, N'44691bf4-c433-dd17-478a-e508cd933fb7', 1, 1, CAST(N'2023-04-30T22:07:58.517' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3683, N'44691bf4-c433-dd17-478a-e508cd933fb7', 1, 1, CAST(N'2023-04-30T22:08:37.157' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3684, N'017d3843-4bc3-c348-ca09-0080cb4053e5', 1, 1, CAST(N'2023-05-01T21:06:35.617' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3685, N'b4cdf705-9b70-35b2-d609-ab843eca6363', 1, 1, CAST(N'2023-05-01T21:30:24.780' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3686, N'b4cdf705-9b70-35b2-d609-ab843eca6363', 1, 1, CAST(N'2023-05-01T21:31:40.540' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3687, N'b4cdf705-9b70-35b2-d609-ab843eca6363', 1, 1, CAST(N'2023-05-01T21:42:31.760' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3688, N'64e4ec93-1c1e-0c53-063c-2bb623dfdb91', 1, 1, CAST(N'2023-05-01T22:02:31.410' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3689, N'ef5e8f9b-cd7d-6e2e-d692-96e6849cca16', 1, 1, CAST(N'2023-05-01T22:46:28.787' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3690, N'ef5e8f9b-cd7d-6e2e-d692-96e6849cca16', 1, 1, CAST(N'2023-05-01T22:47:06.250' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3691, N'c717fe43-1a2a-511a-ea89-98ff3eb7b2f1', 1, 1, CAST(N'2023-05-02T21:28:43.413' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3692, N'c717fe43-1a2a-511a-ea89-98ff3eb7b2f1', 1, 1, CAST(N'2023-05-02T21:30:07.823' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3693, N'4b3a65a8-1d17-154d-5914-d4db7a50aae6', 1, 1, CAST(N'2023-05-02T22:05:30.050' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3694, N'c847ab97-fb80-e477-90d9-a184dbe36118', 1, 1, CAST(N'2023-05-04T11:43:18.463' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3695, N'e331a22b-7ea7-d184-82de-459afa9f6ea6', 1, 1, CAST(N'2023-05-04T11:52:56.917' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3696, N'627b3e62-6ae9-5de1-f58a-7cb70bc82dd3', 1, 1, CAST(N'2023-05-04T14:13:43.073' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3697, N'e00cb1c2-0996-f75e-cceb-59f9f9ae1fc1', 1, 1, CAST(N'2023-05-04T14:20:32.747' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3698, N'72539c48-c1aa-e440-5cd2-30a355944c8a', 1, 1, CAST(N'2023-05-04T17:34:18.150' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3699, N'36495eed-6258-0996-d590-7e96723de392', 1, 1, CAST(N'2023-05-04T17:41:32.720' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3700, N'4f2b4b15-c066-4f40-b147-546f742f933e', 1, 1, CAST(N'2023-05-04T17:45:45.727' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (3701, N'ec48f258-c252-89a1-7fc6-ebdcbb062be1', 1, 1, CAST(N'2023-05-04T17:49:43.670' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (4698, N'90ec3aa8-6045-271c-736b-0763b31b0332', 1, 1, CAST(N'2023-05-06T22:22:29.430' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (4699, N'f379ffa4-a5bf-c896-dac0-2837cf9f5bdf', 1, 1, CAST(N'2023-05-06T22:28:56.180' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (4700, N'7e67993f-6d53-d676-eef9-635dc503c931', 1, 1, CAST(N'2023-05-07T12:16:57.860' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (4701, N'f91cbb18-6186-0106-f3c1-a8eda7302153', 1, 1, CAST(N'2023-05-07T12:27:35.300' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (4702, N'3962f6f3-e1a1-adc6-73d9-710454efc26c', 1, 1, CAST(N'2023-05-07T12:37:50.980' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (4703, N'89374717-d81e-9210-1b59-ba14691c6063', 1, 1, CAST(N'2023-05-07T13:47:14.187' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (4704, N'1b107860-499f-6a83-4af1-5f49e1b5283c', 1, 1, CAST(N'2023-05-07T13:52:13.907' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (4705, N'ae17fe77-4add-9ef2-d723-1954e679f8ef', 1, 1, CAST(N'2023-05-07T16:56:05.943' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5698, N'a5e17bd7-6ce5-30b0-04a7-ecf43789827d', 1, 1, CAST(N'2023-05-07T19:29:41.933' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5699, N'8d51eab8-9b29-44b0-dddc-9f8f0bf33b15', 1, 1, CAST(N'2023-05-07T19:41:39.517' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5700, N'61bfbca3-5484-8e2b-1de4-00d195a50d77', 1, 1, CAST(N'2023-05-07T19:44:48.083' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5701, N'7534b223-c597-db51-ea62-23fab1fd7dae', 1, 1, CAST(N'2023-05-07T19:49:06.113' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5702, N'92e5e52f-d72b-f13d-9d57-dbeba6b022f1', 1, 1, CAST(N'2023-05-07T19:55:10.720' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5703, N'21fa3570-5382-c795-7ad4-b40920ca867c', 1, 1, CAST(N'2023-05-07T20:08:14.250' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5704, N'02b493f6-2242-7e86-1201-907efdac31e2', 1, 1, CAST(N'2023-05-07T20:20:37.950' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5705, N'3d217ae5-58e6-abd0-0433-730ece410c5c', 1, 1, CAST(N'2023-05-07T20:25:59.907' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5706, N'6615f97c-42e3-56a4-9afc-bc7dda348e1f', 1, 1, CAST(N'2023-05-07T20:38:47.253' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5707, N'7312604e-8045-2d9f-1754-22c3def023e5', 1, 1, CAST(N'2023-05-07T20:58:45.317' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5708, N'ba4d1b8e-0bcf-e902-46c3-eb0940bd2c44', 1, 1, CAST(N'2023-05-07T21:03:25.367' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5709, N'03b8ea9d-600d-17c6-4256-1b3cc165d7e9', 1, 1, CAST(N'2023-05-07T21:05:47.807' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5710, N'600a18cd-26f6-0bde-b924-a70492008452', 1, 1, CAST(N'2023-05-07T21:12:43.873' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5711, N'600a18cd-26f6-0bde-b924-a70492008452', 1, 1, CAST(N'2023-05-07T21:26:17.033' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5712, N'600a18cd-26f6-0bde-b924-a70492008452', 1, 1, CAST(N'2023-05-07T21:26:44.727' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5713, N'1594c1c6-229a-b97a-f4ce-1c42f49998f2', 1, 1, CAST(N'2023-05-09T21:39:36.120' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5714, N'1594c1c6-229a-b97a-f4ce-1c42f49998f2', 1, 1, CAST(N'2023-05-09T23:18:59.697' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5715, N'1594c1c6-229a-b97a-f4ce-1c42f49998f2', 1, 1, CAST(N'2023-05-09T23:19:30.113' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5716, N'82c93fb3-859f-565d-82f8-577902d32d43', 1, 1, CAST(N'2023-05-10T20:48:33.447' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5717, N'd229d255-8394-a615-1826-4609d2f55e47', 1, 1, CAST(N'2023-05-10T22:37:57.383' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5718, N'60c7e284-fbf3-959f-b428-dbedc43e8afd', 1, 1, CAST(N'2023-05-10T22:40:41.883' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5719, N'f76aace2-10bd-1876-5a07-1e253d8aeafe', 1, 1, CAST(N'2023-05-10T22:43:45.580' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5720, N'bbae4623-e87a-afbf-ce83-dcc7a287fce4', 1, 1, CAST(N'2023-05-10T22:48:52.850' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5721, N'03b4b687-571a-8b6c-34ae-a24786cbaea8', 1, 1, CAST(N'2023-05-10T22:55:30.377' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5722, N'771cffc0-575b-fc06-51ff-57fee4edada0', 1, 1, CAST(N'2023-05-10T22:58:47.117' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5723, N'2f9899e4-388a-a476-d50c-def88a3dfdce', 1, 1, CAST(N'2023-05-10T23:12:16.923' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5724, N'2f9899e4-388a-a476-d50c-def88a3dfdce', 1, 1, CAST(N'2023-05-10T23:24:24.787' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5725, N'2f9899e4-388a-a476-d50c-def88a3dfdce', 1, 1, CAST(N'2023-05-10T23:24:51.017' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5726, N'26742ada-2d19-9fda-64b7-d3d6487048b6', 1, 1, CAST(N'2023-05-11T21:32:22.750' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5727, N'7046ed6d-3410-2054-6880-ec2eaedf2a3d', 1, 1, CAST(N'2023-05-11T22:34:02.280' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5728, N'862a931d-482f-b1c1-8574-ea9f233f5276', 1, 1, CAST(N'2023-05-11T22:39:13.810' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5729, N'1b1e0f46-598b-a99a-3c47-ba856c336554', 1, 1, CAST(N'2023-05-11T22:50:15.537' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5730, N'67ea0c91-5f5a-0cd0-6981-ceb157e90ad8', 1, 1, CAST(N'2023-05-11T23:02:56.163' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5731, N'ed7e0c1d-4db6-9972-4c75-ee679d26a4f5', 1, 1, CAST(N'2023-05-11T23:12:06.303' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5732, N'7f099f16-6263-8212-224a-e0f656ea63c5', 1, 1, CAST(N'2023-05-13T18:57:56.180' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5733, N'f4e5544d-f26b-18e3-b36e-3a9685178ebd', 1, 1, CAST(N'2023-05-13T19:04:17.890' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5734, N'1ce728d5-e52f-51ba-93b8-f2d06e285128', 1, 1, CAST(N'2023-05-13T19:11:46.800' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5735, N'7675def2-1b4c-9296-b84c-5056fd524ddb', 1, 1, CAST(N'2023-05-13T19:13:39.920' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5736, N'948ceb5f-7a5d-e7b1-354c-81c8d6622b46', 1, 1, CAST(N'2023-05-13T19:16:07.857' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5737, N'6b44dade-0447-5237-327f-059481b540fa', 1, 1, CAST(N'2023-05-13T19:21:43.167' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5738, N'd2262427-0166-1491-dd36-37d61f0e7cdb', 1, 1, CAST(N'2023-05-13T19:30:24.627' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5739, N'646a0b0f-0ebd-74cd-91cf-9030f432227b', 1, 1, CAST(N'2023-05-13T19:33:30.183' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5740, N'd514a29d-5a5e-fb9c-611e-95c274fc6bf0', 1, 1, CAST(N'2023-05-13T19:38:29.547' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5741, N'd7c07d63-610b-67dd-e779-8dd563243d0d', 1, 1, CAST(N'2023-05-13T19:53:46.910' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5742, N'5ae7ff9d-a790-ad74-e378-83b8759928bf', 1, 1, CAST(N'2023-05-13T19:58:20.263' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5743, N'5ae7ff9d-a790-ad74-e378-83b8759928bf', 1, 1, CAST(N'2023-05-13T19:58:21.090' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5744, N'70400aeb-e4c3-2945-0563-7d6d73f6db52', 1, 1, CAST(N'2023-05-13T20:03:43.910' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5745, N'3d951a36-cb58-e7aa-52d2-b4f04892ffbc', 1, 1, CAST(N'2023-05-13T20:06:25.050' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5746, N'529a76f8-7a1e-8b17-bedb-4963bd941b7e', 1, 1, CAST(N'2023-05-13T20:10:55.133' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5747, N'9edc4982-b9ed-9dd7-6896-e858ad46eeff', 1, 1, CAST(N'2023-05-13T20:45:44.113' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5748, N'c934fa2b-1cce-0570-08b9-71fa4f268ac6', 1, 1, CAST(N'2023-05-13T21:31:12.690' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5749, N'd42c8a74-ed9f-07e2-3cae-367f063745d5', 1, 1, CAST(N'2023-05-14T12:59:38.903' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5750, N'01fe3e02-7d0a-9a71-a044-666078a4a650', 1, 1, CAST(N'2023-05-14T13:03:31.107' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5751, N'01fe3e02-7d0a-9a71-a044-666078a4a650', 2, 1, CAST(N'2023-05-14T13:03:52.317' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (5752, N'01fe3e02-7d0a-9a71-a044-666078a4a650', 1, 1, CAST(N'2023-05-14T13:04:26.737' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (6698, N'5c75448b-9148-2baa-5973-85e15f465a68', 1, 1, CAST(N'2023-05-17T21:55:09.157' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (6699, N'6ce1018b-4309-70af-3d7e-06ed08c54204', 1, 1, CAST(N'2023-05-17T22:07:26.373' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (6700, N'f743e870-c602-1cb9-b959-1de3c69f9d81', 1, 1, CAST(N'2023-05-17T22:12:34.567' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (6701, N'51863c05-9153-03ce-5fa3-7fc31600a5db', 1, 1, CAST(N'2023-05-17T22:41:33.883' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (6702, N'806b8e61-76cd-1a47-5c0f-8e4cc577afdc', 1, 1, CAST(N'2023-05-17T22:49:10.550' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (6703, N'a8505393-ff69-83c2-6194-346fd5c0d401', 1, 1, CAST(N'2023-05-17T23:03:10.017' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (6704, N'11a7d447-db48-77d8-da6f-51fa299fdc71', 1, 1, CAST(N'2023-05-17T23:14:52.873' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (6705, N'9a8f906a-30fc-b12b-e8fa-d65d6c93c2a4', 1, 1, CAST(N'2023-05-17T23:28:05.613' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (6706, N'cb2de9ad-57bf-f30f-f9c0-8a1dc7693741', 1, 1, CAST(N'2023-05-17T23:33:30.890' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (6707, N'1ea1af86-0d72-9a37-ceb4-4bbf796608f0', 1, 1, CAST(N'2023-05-17T23:41:20.153' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (6708, N'15d7a8af-8efd-8195-0f5c-88810ba3795d', 1, 1, CAST(N'2023-05-18T22:16:27.267' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (6709, N'dd342741-3f5f-4d27-b3d2-bf2bdec45c05', 1, 1, CAST(N'2023-05-18T23:33:13.577' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (7698, N'5783312b-c7c1-e1ee-4f3c-4b87c82d5e8e', 1, 1, CAST(N'2023-05-21T19:09:23.080' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (7699, N'3eb95aa7-a9c7-b068-2199-151f8a9ac824', 1, 1, CAST(N'2023-05-21T20:13:39.060' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (7700, N'036269c7-d008-c4b2-584a-0992c8698064', 1, 1, CAST(N'2023-05-21T21:08:25.523' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (7701, N'37106cf3-c393-c564-b0b1-4ce493eb8cd9', 1, 1, CAST(N'2023-05-21T21:18:58.903' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (7702, N'8d9cea0e-066c-dc27-b971-c536932ea4d4', 1, 1, CAST(N'2023-05-21T21:41:59.030' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (7703, N'dfaaa215-09ca-6cd9-18e9-34d485d0dcd1', 1, 1, CAST(N'2023-05-21T21:46:51.270' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (8698, N'd9453a67-1285-073c-74d0-18248347b2b1', 1, 1, CAST(N'2023-05-23T22:33:03.790' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (9698, N'0fca4f23-72f1-817b-3563-764bb53eb2cf', 1, 1, CAST(N'2023-06-04T07:40:46.557' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (9699, N'06d2983e-e1fa-43fe-308f-f423825de753', 1, 1, CAST(N'2023-06-04T07:48:50.227' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (9700, N'06d2983e-e1fa-43fe-308f-f423825de753', 2, 1, CAST(N'2023-06-04T07:49:18.783' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (9701, N'f26c40ca-d832-c68d-cb9f-07feedda650f', 2, 1, CAST(N'2023-06-04T07:53:05.883' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (9702, N'f26c40ca-d832-c68d-cb9f-07feedda650f', 1, 1, CAST(N'2023-06-04T07:58:08.977' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (9703, N'5919e626-08a0-c597-b18f-60b0829c9e08', 1, 1, CAST(N'2023-06-04T09:41:33.843' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (9704, N'38024c13-85fe-d4ac-bdc4-c039ec16fe47', 6, 1, CAST(N'2023-06-04T10:13:29.937' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (9705, N'38024c13-85fe-d4ac-bdc4-c039ec16fe47', 6, 1, CAST(N'2023-06-04T10:14:11.320' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10698, N'b2df2476-8816-338a-7d42-08185ae56c8d', 1, 1, CAST(N'2023-06-05T21:47:21.637' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10699, N'f1709e61-1dc9-5c58-ecd2-4316d9d9b1dd', 1, 1, CAST(N'2023-06-05T22:48:48.477' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10700, N'c3ba09a9-3849-1289-dc9b-adacb65134ac', 1, 1, CAST(N'2023-06-05T22:59:28.533' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10701, N'57328163-8d66-1293-02f3-841ebd19d72c', 1, 1, CAST(N'2023-06-05T23:03:48.027' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10702, N'037e04ee-91eb-da6a-3e7e-123d657c3963', 1, 1, CAST(N'2023-06-05T23:11:04.483' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10703, N'037e04ee-91eb-da6a-3e7e-123d657c3963', 1, 1, CAST(N'2023-06-05T23:13:45.467' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10704, N'b1153aed-11ff-d679-a247-9aa03f9dc85e', 1, 1, CAST(N'2023-06-06T22:38:25.210' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10705, N'27fb1a36-48bc-7af7-ebe8-622fe0ee05e0', 1, 1, CAST(N'2023-06-06T22:41:57.380' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10706, N'c2c43bbe-a1b5-9579-8c64-3c3cd44d3e53', 1, 1, CAST(N'2023-06-06T22:47:40.940' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10707, N'829f2728-308b-31bb-ec82-e6db4f829de0', 1, 1, CAST(N'2023-06-06T22:54:19.570' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10708, N'f3f8379b-e1b0-ef7b-47fe-a6ec1b9a19df', 1, 1, CAST(N'2023-06-08T21:52:42.820' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10709, N'f3f8379b-e1b0-ef7b-47fe-a6ec1b9a19df', 7, 1, CAST(N'2023-06-08T22:11:59.423' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10710, N'1fb991a8-7bb7-1f7b-deaa-63d07c5191be', 7, 1, CAST(N'2023-06-08T22:17:26.203' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10711, N'1fb991a8-7bb7-1f7b-deaa-63d07c5191be', 7, 1, CAST(N'2023-06-08T22:18:34.917' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10712, N'1fb991a8-7bb7-1f7b-deaa-63d07c5191be', 7, 1, CAST(N'2023-06-08T22:23:08.713' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10713, N'95e44c04-45d2-9609-4e74-742ecbee2217', 7, 1, CAST(N'2023-06-08T22:32:41.870' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10714, N'95e44c04-45d2-9609-4e74-742ecbee2217', 1, 1, CAST(N'2023-06-08T22:33:26.260' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10715, N'95e44c04-45d2-9609-4e74-742ecbee2217', 7, 1, CAST(N'2023-06-08T22:37:59.533' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10716, N'2c1abf6b-ea2b-839c-78ab-d7a8bc0c5723', 7, 1, CAST(N'2023-06-08T22:51:34.390' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10717, N'f4c01b8e-aa04-5d19-57d1-4a6da00093b4', 7, 1, CAST(N'2023-06-08T22:58:16.313' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10718, N'a6c605fa-975a-1f5d-6a7f-7cdbf51eab6b', 7, 1, CAST(N'2023-06-08T23:05:02.607' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10719, N'4461c523-eec2-2fc4-1336-10df4a9a954c', 7, 1, CAST(N'2023-06-08T23:14:09.523' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10720, N'4461c523-eec2-2fc4-1336-10df4a9a954c', 7, 1, CAST(N'2023-06-08T23:19:40.093' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10721, N'd1187935-c631-7dbd-a2fa-5bd271befca1', 7, 1, CAST(N'2023-06-08T23:24:52.643' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (10722, N'3b3fa402-f0d2-a3a0-84b1-79ec8362bfe8', 7, 1, CAST(N'2023-06-08T23:29:09.303' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (11698, N'7a91a761-e304-b6a1-5abf-0e5840ec3a02', 7, 1, CAST(N'2023-06-13T22:10:12.110' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (11699, N'7a91a761-e304-b6a1-5abf-0e5840ec3a02', 1, 1, CAST(N'2023-06-13T22:19:52.033' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (11700, N'7a91a761-e304-b6a1-5abf-0e5840ec3a02', 1, 1, CAST(N'2023-06-13T22:25:23.263' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (11701, N'c426f887-dfd5-9f3c-8a7d-25ca8c35e319', 1, 1, CAST(N'2023-06-13T22:36:54.060' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (11702, N'220a09aa-fc70-37d1-280a-f5a6837e41b5', 1, 1, CAST(N'2023-06-13T22:53:07.197' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (12698, N'5e3ad5f2-3191-f8b3-7009-c3cd91c15577', 1, 1, CAST(N'2023-07-12T23:02:21.620' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (12699, N'5e3ad5f2-3191-f8b3-7009-c3cd91c15577', 7, 1, CAST(N'2023-07-12T23:03:48.517' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (12700, N'9303f9fc-e34f-c2b7-92c8-b590fff9dfd9', 7, 1, CAST(N'2023-07-12T23:11:27.820' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (12701, N'9303f9fc-e34f-c2b7-92c8-b590fff9dfd9', 1, 1, CAST(N'2023-07-12T23:12:07.503' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (13698, N'2af6dd1a-957e-369b-3b48-5d6fd5c185c1', 1, 1, CAST(N'2023-07-30T00:12:17.953' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (13699, N'2af6dd1a-957e-369b-3b48-5d6fd5c185c1', 7, 1, CAST(N'2023-07-30T00:20:16.013' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (13700, N'2af6dd1a-957e-369b-3b48-5d6fd5c185c1', 7, 1, CAST(N'2023-07-30T00:30:42.217' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (13701, N'2af6dd1a-957e-369b-3b48-5d6fd5c185c1', 1, 1, CAST(N'2023-07-30T00:37:36.367' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14698, N'1f7d587a-4332-82b8-6007-f0f98ebcdeb9', 1, 1, CAST(N'2023-08-15T21:29:02.273' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14699, N'42102bb3-e598-0a35-fe2f-91434059ef47', 1, 1, CAST(N'2023-08-15T21:45:33.367' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14700, N'3e20ee62-a929-d1f9-fbdb-e2eb4810a1f0', 1, 1, CAST(N'2023-08-15T21:49:03.653' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14701, N'3e20ee62-a929-d1f9-fbdb-e2eb4810a1f0', 1, 1, CAST(N'2023-08-15T21:51:59.263' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14702, N'3e20ee62-a929-d1f9-fbdb-e2eb4810a1f0', 1010, 1, CAST(N'2023-08-15T21:52:30.750' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14703, N'8741c864-2762-9bcb-270e-2e14932bd3a7', 1, 1, CAST(N'2023-08-15T21:57:02.517' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14704, N'8741c864-2762-9bcb-270e-2e14932bd3a7', 1, 1, CAST(N'2023-08-15T21:57:53.250' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14705, N'18b31bed-05f7-3de3-cf02-95f3ebaa0059', 1, 1, CAST(N'2023-08-15T22:21:19.647' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14706, N'614d2345-ed9f-1360-32da-2319358c9406', 1, 1, CAST(N'2023-08-15T22:33:04.237' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14707, N'934a8247-c52a-3fa6-abcd-5a5f32ac8723', 1, 1, CAST(N'2023-08-15T22:37:13.850' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14708, N'd21a97cb-8288-744b-b0c6-e45b60843b81', 1, 1, CAST(N'2023-08-15T23:05:57.407' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14709, N'734c09b1-808a-cb68-d784-fff2dc985cad', 1, 1, CAST(N'2023-08-15T23:14:33.920' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14710, N'2b2ccc09-2ac1-3172-439c-82d99b88106b', 1, 1, CAST(N'2023-08-15T23:18:35.760' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14711, N'a4c9cfe0-347e-39bb-23db-913188c851da', 1, 1, CAST(N'2023-08-15T23:32:22.437' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14712, N'0c3693ef-d309-f631-7e3f-70af25a194b3', 1, 1, CAST(N'2023-08-15T23:42:42.317' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14713, N'f648d823-2b58-78d3-88f4-88c596d403f1', 1, 1, CAST(N'2023-08-15T23:49:45.947' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (14714, N'655170e5-55ca-dee6-a670-2d8530b4ddab', 1, 1, CAST(N'2023-08-16T00:20:14.260' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15698, N'c471d53b-63ff-2a7e-35dc-a3912b78c788', 1, 1, CAST(N'2023-08-16T21:58:19.263' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15699, N'b5dec3bb-e0ee-04e9-15a1-76a65078398b', 1, 1, CAST(N'2023-08-16T22:02:07.940' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15700, N'842e4e93-6ca2-a785-8fbe-1271a4741c07', 1, 1, CAST(N'2023-08-16T22:30:48.833' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15701, N'4162e739-e7ec-3b32-f0f8-b05de5df2ca3', 1, 1, CAST(N'2023-08-16T22:37:36.843' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15702, N'05c77b45-c5db-8721-4666-c01743e6c260', 1, 1, CAST(N'2023-08-16T22:44:20.620' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15703, N'6a16d7d8-c4cd-6485-8bd6-f10e89455df6', 1, 1, CAST(N'2023-08-16T22:50:00.063' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15704, N'48521283-bb6d-9c15-20d7-e048819b2f31', 1, 1, CAST(N'2023-08-16T22:54:17.580' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15705, N'e59620ff-ff91-fe24-ac82-fb651cfc721a', 1, 1, CAST(N'2023-08-16T22:57:51.160' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15706, N'ac5c0c76-fc1d-49d9-427d-046dcbe18339', 1, 1, CAST(N'2023-08-16T23:01:28.533' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15707, N'ab525647-6809-4ec3-5976-6af6df5612e2', 1, 1, CAST(N'2023-08-16T23:07:33.710' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15708, N'890d1ebb-f783-1e40-83a6-6b5147790284', 1, 1, CAST(N'2023-08-16T23:21:45.430' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15709, N'6b2d6a19-4633-fe91-9c4e-095ce2e8d650', 1, 1, CAST(N'2023-08-17T22:44:36.700' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15710, N'656275f0-fa10-f5fa-d3c3-7fe9c58c2df4', 1, 1, CAST(N'2023-08-20T20:39:38.677' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15711, N'21580647-bf0b-cdbe-aecb-ed34e1f73c42', 1, 1, CAST(N'2023-08-20T20:52:40.913' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15712, N'2f5be746-0feb-d27f-6f04-89f675a44681', 1, 1, CAST(N'2023-08-20T20:55:53.717' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15713, N'0d2aafc6-9cdd-4e79-0513-31b4f3ad8ffe', 1, 1, CAST(N'2023-08-20T21:02:13.817' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15714, N'46d61c46-ed36-f202-755e-8260123ef3db', 1, 1, CAST(N'2023-08-20T21:06:17.720' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15715, N'4b88b4e8-88c1-15b8-b962-128f4517c4e1', 1, 1, CAST(N'2023-08-20T21:10:07.233' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15716, N'778726ea-02ce-40d9-6019-445908b6d0f0', 1, 1, CAST(N'2023-08-20T21:14:48.397' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15717, N'1dc5a9ab-52f7-85e8-62c3-ad1eb7f0e449', 1, 1, CAST(N'2023-08-20T21:17:39.520' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15718, N'4a4173c2-3802-319c-7cb8-ff890ad1ad58', 1, 1, CAST(N'2023-08-20T21:32:10.900' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15719, N'd537472b-12b8-c088-6459-729a72309198', 1, 1, CAST(N'2023-08-20T21:49:05.393' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15720, N'990f8960-9876-3cd9-9fcb-b5b335789b67', 1, 1, CAST(N'2023-08-20T22:24:33.380' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (15721, N'5e3204f2-290f-4d08-6ac0-53d1b7835071', 1, 1, CAST(N'2023-08-20T22:36:45.397' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16698, N'e3f80ec5-5e98-77b3-fe3b-3058783f314a', 1, 1, CAST(N'2023-08-21T23:20:37.440' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16699, N'e29bdf3d-0906-efdd-0305-a8d165b0985c', 1, 1, CAST(N'2023-08-21T23:25:30.800' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16700, N'5dc8f2f3-f66f-0601-4fc4-6c84bd053442', 1, 1, CAST(N'2023-08-21T23:34:23.403' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16701, N'5d39cc7d-4af9-1a5e-c9f0-d94f73dfb4ce', 1, 1, CAST(N'2023-08-22T22:33:18.640' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16702, N'0b39c9ad-f3b0-3278-15fb-cf393f28df34', 1, 1, CAST(N'2023-08-22T22:42:51.197' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16703, N'ecb811c0-c52b-d6d9-6c5d-dfd0d2b3832d', 1, 1, CAST(N'2023-08-22T22:52:29.927' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16704, N'd5531d87-ac9d-5d24-2888-64110c78a335', 1, 1, CAST(N'2023-08-22T22:59:55.800' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16705, N'322fe458-f8d1-54dc-5b45-d3271686b148', 1, 1, CAST(N'2023-08-22T23:38:44.737' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16706, N'f54d5965-99aa-ff03-8a3c-cd22c3ae36ab', 1, 1, CAST(N'2023-08-22T23:42:03.157' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16707, N'a0f57ce3-e5e5-11f8-20e5-c4ffef84ee69', 1, 1, CAST(N'2023-08-22T23:46:03.323' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16708, N'4014f5a0-2bd2-1ed4-b0c2-1051a5bff85e', 1, 1, CAST(N'2023-08-22T23:51:07.293' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16709, N'4dd105a6-0d01-4811-3d1c-c953240d6ad7', 1, 1, CAST(N'2023-08-22T23:54:54.353' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16710, N'3e5ba15f-998f-838e-4da3-4c862bb8d9cf', 1, 1, CAST(N'2023-08-23T00:05:11.100' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16711, N'44dd2913-e591-838a-bd6a-3598198e8994', 1, 1, CAST(N'2023-08-23T00:08:14.473' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16712, N'a4e741fb-c3d7-f0ee-272b-155362be3f95', 1, 1, CAST(N'2023-08-23T00:15:44.097' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16713, N'2f802da5-d84e-fa76-9201-7f58184c0c1b', 1, 1, CAST(N'2023-08-23T00:19:19.020' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16714, N'a307bcd8-fc46-1efe-f90a-92b48d568c5a', 1, 1, CAST(N'2023-08-23T22:14:57.010' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16715, N'73a15499-1381-4ad4-392c-f2ddf7048ecb', 1, 1, CAST(N'2023-08-23T22:20:38.570' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16716, N'd5b9402d-d38a-e557-4a31-ffe52ce5b424', 1, 1, CAST(N'2023-08-23T22:29:04.540' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16717, N'c629b7b3-1871-9020-24aa-405b1c4e63b5', 1, 1, CAST(N'2023-08-23T22:33:37.120' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16718, N'f615fea6-00cc-daba-403a-2641ad9003db', 1, 1, CAST(N'2023-08-23T22:40:02.807' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16719, N'9132317c-a6df-cef9-6e34-36b21c39645f', 1, 1, CAST(N'2023-08-23T22:47:13.923' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16720, N'cfa5706f-4f8e-ccf9-b0b6-558843267f3c', 1, 1, CAST(N'2023-08-23T22:50:32.743' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16721, N'b1f84c6d-43f2-5b4d-f37f-1e1919722b45', 1, 1, CAST(N'2023-08-23T22:55:06.870' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16722, N'd5b98650-6b54-2825-2264-cf62e3ec5f94', 1, 1, CAST(N'2023-08-23T23:00:15.853' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16723, N'4922e123-05be-3778-7bc7-c6ee012a68de', 1, 1, CAST(N'2023-08-23T23:07:25.263' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16724, N'cc90fbb5-680c-a97c-5ae6-e12c1dd625de', 1, 1, CAST(N'2023-08-23T23:12:53.990' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16725, N'9d0b023c-d32f-db6e-e28e-27033ca7dcb5', 1, 1, CAST(N'2023-08-24T22:23:42.730' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (16726, N'dc76dd34-fec1-6dd0-2f0c-8b04a64acefa', 1, 1, CAST(N'2023-08-25T00:28:37.613' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17726, N'e5364280-e735-1076-2410-a746b4303666', 1, 1, CAST(N'2023-08-25T23:05:59.057' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17727, N'0747a589-7c11-e96c-4159-fdd6c8a8d984', 1, 1, CAST(N'2023-08-26T10:46:30.187' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17728, N'3dea864e-db3a-f2e8-37bc-ffc24ee539dd', 1, 1, CAST(N'2023-08-26T10:56:41.253' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17729, N'36bfb6ad-0202-b1ba-ad48-01981fb4b340', 1, 1, CAST(N'2023-08-26T10:59:21.377' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17730, N'2e471da1-072c-7aa6-e2ad-c66325cb2cbc', 1, 1, CAST(N'2023-08-26T11:20:38.367' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17731, N'c55dea02-5a10-0b12-aa62-8eb1b92adbc0', 1, 1, CAST(N'2023-08-26T11:25:04.037' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17732, N'4f27de81-3990-89ed-f82b-97a2f53f5100', 1, 1, CAST(N'2023-08-26T11:41:57.193' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17733, N'9ea1ccd2-27e6-fdfa-bd38-870e30ff7f2b', 1, 1, CAST(N'2023-08-26T11:44:25.520' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17734, N'dda185fa-7938-13c7-236d-056b51401a39', 1, 1, CAST(N'2023-08-26T13:52:38.070' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17735, N'142d5844-3016-0bae-5418-b9d1fbb710f3', 1, 1, CAST(N'2023-08-26T13:56:28.917' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17736, N'4d6c1f79-d219-a8d0-37d8-e0784f949624', 1, 1, CAST(N'2023-08-26T13:58:24.130' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17737, N'1c097bdd-8e54-de13-fa03-e64007f24b37', 1, 1, CAST(N'2023-08-26T16:08:17.410' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17738, N'314114e9-5c1a-d7aa-aa81-7c943dbade0a', 1, 1, CAST(N'2023-08-26T16:17:15.867' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17740, N'f8368aa3-eb42-e768-447c-1ed2736577d6', 1, 1, CAST(N'2023-08-26T18:02:21.263' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17741, N'830a5472-67a1-c2fd-441f-54cb047fcb30', 1, 1, CAST(N'2023-08-26T18:06:58.880' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17742, N'ea60d261-b5e1-5566-47ea-749fce476c9e', 1, 1, CAST(N'2023-08-26T18:10:11.867' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17743, N'240b7148-0d49-da0f-6875-aefa869bb5b8', 1, 1, CAST(N'2023-08-26T18:14:30.613' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17744, N'5c47aac5-0234-4cb6-c1d0-d50d9900f56a', 1, 1, CAST(N'2023-08-26T18:18:22.057' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17745, N'48e653ac-6570-96e3-477f-6c8277bee509', 1, 1, CAST(N'2023-08-26T18:21:11.737' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17746, N'b5f3d7b0-03df-b37f-52f1-5cd144c89b72', 1, 1, CAST(N'2023-08-26T18:23:55.393' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17747, N'8590959a-48c6-053c-f38c-d0ea4a337102', 1, 1, CAST(N'2023-08-26T18:34:01.893' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17748, N'dbae1e2b-a827-9285-cab8-12791fda19f3', 1, 1, CAST(N'2023-09-09T10:52:49.127' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17749, N'dbae1e2b-a827-9285-cab8-12791fda19f3', 1, 1, CAST(N'2023-09-09T11:10:19.040' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17750, N'd39b13cd-85e1-106a-0dce-5300b4112f6a', 1, 1, CAST(N'2023-09-09T11:42:59.147' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17751, N'524b7f01-505c-dd47-aafb-42a55ab1ad01', 1, 1, CAST(N'2023-09-09T11:49:11.043' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17752, N'524b7f01-505c-dd47-aafb-42a55ab1ad01', 1, 1, CAST(N'2023-09-09T12:19:59.680' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17753, N'524b7f01-505c-dd47-aafb-42a55ab1ad01', 1, 1, CAST(N'2023-09-09T12:20:24.180' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17754, N'2f9e5818-a308-b0c3-c876-f6a868b30cf2', 1, 1, CAST(N'2023-09-09T12:34:50.397' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17755, N'09c3f880-e59a-3a61-ad0b-86bea42e6aa1', 1, 1, CAST(N'2023-09-09T13:15:50.170' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17760, N'df9f90bf-1799-a3c3-beea-01e6233d9710', 1, 1, CAST(N'2023-09-09T14:50:03.847' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17761, N'8d6ef0f2-8cef-bcaa-90a0-1b56496d7518', 1, 1, CAST(N'2023-09-09T14:54:07.160' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17762, N'69a7a74d-d87a-c2fd-fa9f-fcd30b666d95', 1, 1, CAST(N'2023-09-09T14:58:56.830' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17763, N'fddfca69-b281-b0ac-1c61-a0cd1724c158', 1, 1, CAST(N'2023-09-09T15:02:08.417' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17764, N'2d7a9cd2-8772-7cbe-6040-0b8b1d7b992e', 1, 1, CAST(N'2023-09-09T15:05:18.363' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17765, N'09eb17ac-1b2f-1cd7-65c7-3ab8fa22ed9b', 1, 1, CAST(N'2023-09-09T15:43:45.423' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17766, N'00b4bab6-8e28-2679-dd12-4966133cb930', 1, 1, CAST(N'2023-09-09T15:45:39.333' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17767, N'c123a832-a5c1-a5b0-5931-37c1566282ce', 1, 1, CAST(N'2023-09-09T15:46:56.743' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17768, N'64d6c68c-f1b9-6a38-6b53-a351f09e800d', 1, 1, CAST(N'2023-09-09T15:47:50.440' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17769, N'fe99f3a8-d1ee-84a3-3120-3a0eefea515b', 1, 1, CAST(N'2023-09-09T15:53:05.497' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17770, N'21941992-ee4f-9053-8a81-1777dc9a34f4', 1, 1, CAST(N'2023-09-09T15:55:11.373' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17771, N'15fb19a5-84f5-e9c0-4c69-53e93ae1ee89', 1, 1, CAST(N'2023-09-09T15:57:30.160' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17772, N'7cab6a64-af28-a835-5b17-7ac087639ef2', 1, 1, CAST(N'2023-09-09T16:48:05.950' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17773, N'7cab6a64-af28-a835-5b17-7ac087639ef2', 1, 1, CAST(N'2023-09-09T16:54:10.050' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17774, N'97b90529-06a5-f377-285a-b060b5ae09bf', 1, 1, CAST(N'2023-09-09T17:29:47.637' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17775, N'cc8ab723-00fd-3f8d-71f0-37cf5876bbf9', 1, 1, CAST(N'2023-09-09T17:33:38.050' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17776, N'62e882f4-d5bc-9a34-e99a-1429047e6fe1', 1, 1, CAST(N'2023-09-09T17:37:45.233' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17777, N'ed25b480-ac76-b66b-6791-c33b4144d4df', 1, 1, CAST(N'2023-09-09T17:39:32.233' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17778, N'f40c5117-db88-c887-e43a-cf86c7b26ca0', 1, 1, CAST(N'2023-09-09T17:42:12.910' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17779, N'5a61736f-b8b8-685f-875e-0b37e90d6635', 1, 1, CAST(N'2023-09-09T17:43:00.457' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17780, N'd72575fd-6c23-5934-c0ac-38312a37538e', 1, 1, CAST(N'2023-09-09T17:45:20.457' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17781, N'e7fec7d0-6316-b989-c3f0-88f1c5e5b3c6', 1, 1, CAST(N'2023-09-09T17:47:49.383' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17782, N'4abb0dda-4b57-cab0-a5e2-6fa66fead377', 1, 1, CAST(N'2023-09-09T18:01:16.433' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17783, N'32368ef7-d6e2-cc18-d4b7-ca08925f22c9', 1, 1, CAST(N'2023-09-09T18:39:52.397' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17784, N'6efab48b-27f0-1016-8c5a-fa081f5422cc', 1, 1, CAST(N'2023-09-09T18:53:02.400' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17785, N'68553763-8c67-7378-ae26-26f7ce81b87d', 1, 1, CAST(N'2023-09-09T19:00:38.720' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17786, N'8f6b3106-3f01-7134-0aad-c9c178125d31', 1, 1, CAST(N'2023-09-09T19:08:15.753' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17787, N'f3acabf3-c297-6aa2-339c-5af96a9abb40', 1, 1, CAST(N'2023-09-09T19:09:41.457' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17788, N'f3acabf3-c297-6aa2-339c-5af96a9abb40', 1, 1, CAST(N'2023-09-09T19:10:14.220' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17789, N'6b4f8bb0-7fda-a5ab-168e-2a994036987a', 1, 1, CAST(N'2023-09-16T10:54:24.293' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17790, N'6b4f8bb0-7fda-a5ab-168e-2a994036987a', 1, 1, CAST(N'2023-09-16T11:06:58.207' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17791, N'6d4fd341-f6a0-718c-0d4b-44713c17ced1', 1, 1, CAST(N'2023-09-16T11:53:14.313' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17792, N'b542b8f6-9731-5f0f-5b86-fed493874bf6', 1, 1, CAST(N'2023-09-16T11:57:42.853' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17793, N'b79cc2c8-3036-2076-7994-9ace58ea578a', 1, 1, CAST(N'2023-09-16T12:01:29.910' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17794, N'a634a412-8a4e-90e2-8678-fa78c3ae84aa', 1, 1, CAST(N'2023-09-16T12:11:54.097' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17795, N'49554599-363b-ea84-4d4f-1da966d8eb3d', 1, 1, CAST(N'2023-09-16T12:13:23.640' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17796, N'44a74308-0e1f-dbe1-4d11-da6cd96139ad', 1, 1, CAST(N'2023-09-16T12:15:27.487' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17797, N'b219420a-6e89-5b36-d218-c62f22f94387', 1, 1, CAST(N'2023-09-16T12:24:42.653' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17798, N'43958401-d013-7f57-a39f-92176839b098', 1, 1, CAST(N'2023-09-16T12:31:20.940' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17799, N'7cc18797-7632-0f56-1b5c-a0544fe94923', 1, 1, CAST(N'2023-09-16T12:40:43.910' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17800, N'4c67cdb5-2c58-4c9f-8c49-73eaa90c548b', 1, 1, CAST(N'2023-09-16T12:43:04.353' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17801, N'ff922002-1aa5-bdf1-643b-87e82689668c', 1, 1, CAST(N'2023-09-16T12:45:05.753' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17802, N'40a769c2-1691-af83-6e21-404b00e5e480', 1, 1, CAST(N'2023-09-16T12:46:47.400' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17803, N'40a769c2-1691-af83-6e21-404b00e5e480', 1, 1, CAST(N'2023-09-16T12:51:57.240' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17804, N'40a769c2-1691-af83-6e21-404b00e5e480', 1, 1, CAST(N'2023-09-16T12:52:21.880' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17805, N'7cacf226-0a01-d29c-2d1b-6379cd1c3adc', 1, 1, CAST(N'2023-09-16T12:59:44.953' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17806, N'e916b070-2a08-7375-bbe1-323418fb3591', 1, 1, CAST(N'2023-09-16T13:07:49.393' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17739, N'57411cb8-450d-cf6a-d777-c39615b62c4c', 1, 1, CAST(N'2023-08-26T16:45:36.250' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17756, N'7c12e714-00cf-5ff0-7f27-fb2d480b40e2', 1, 1, CAST(N'2023-09-09T13:27:27.067' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17807, N'a2906ab4-0a20-9c97-255f-8f899fdfad67', 1, 1, CAST(N'2023-09-16T13:13:01.600' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17808, N'a2906ab4-0a20-9c97-255f-8f899fdfad67', 1, 1, CAST(N'2023-09-16T13:18:38.497' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17809, N'dbf7a704-2eb2-93e8-4273-dd7c16086159', 1, 1, CAST(N'2023-09-16T13:21:22.037' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17810, N'bfd4f683-98ea-6d38-79b7-aabf96381dd1', 1, 1, CAST(N'2023-09-16T13:23:09.890' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17812, N'bfd4f683-98ea-6d38-79b7-aabf96381dd1', 1, 1, CAST(N'2023-09-16T13:26:25.060' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17813, N'f761f704-b192-fbd8-269f-30cfb0058cb6', 1, 1, CAST(N'2023-09-16T13:43:55.453' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17814, N'705f5184-9691-7cb5-3538-4d90aa4d0afd', 1, 1, CAST(N'2023-09-16T13:54:52.963' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17815, N'32c706e8-1ddc-3812-157e-6a02a9e621a5', 1, 1, CAST(N'2023-09-16T14:00:17.260' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17828, N'6278539d-f5e5-49ef-ac19-9da40955adf7', 1, 1, CAST(N'2023-09-16T16:12:54.230' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17833, N'beb19a0f-dc56-d647-d468-bc38f97e95f0', 1, 1, CAST(N'2023-09-16T17:13:16.590' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17834, N'c962c34b-d016-e745-de84-42e5d089f75d', 1, 1, CAST(N'2023-09-16T17:14:18.893' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17835, N'9f2946c3-98d0-1cb0-32b6-978ef6b63c4c', 1, 1, CAST(N'2023-09-16T17:14:56.740' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17836, N'c994fc85-62f3-e0ae-efb4-d2a8f33a96bb', 1, 1, CAST(N'2023-09-16T17:17:17.080' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17837, N'58895137-b019-513c-6c52-9d250638ff47', 1, 1, CAST(N'2023-09-16T17:27:28.163' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17838, N'da23704d-f5c2-7f68-fd2d-1ca03a289f0a', 1, 1, CAST(N'2023-09-16T17:29:01.060' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17839, N'ef9e1f9d-f669-1e73-7285-a8bbedce700d', 1, 1, CAST(N'2023-09-16T17:37:37.307' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17840, N'962863a4-ed4d-3b46-c26a-aef73f2c276d', 1, 1, CAST(N'2023-09-16T17:40:49.757' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17757, N'644dd664-2e0e-f6b7-3b8e-c9ede6860acd', 1, 1, CAST(N'2023-09-09T13:37:37.170' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17758, N'5eda7bee-295f-769d-e11c-88d954deea30', 1, 1, CAST(N'2023-09-09T13:53:36.260' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17759, N'06401f10-1653-c7da-e462-086e2731df85', 1, 1, CAST(N'2023-09-09T13:56:08.053' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17811, N'bfd4f683-98ea-6d38-79b7-aabf96381dd1', 1, 1, CAST(N'2023-09-16T13:25:26.400' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17829, N'f9d6fed1-c945-7059-5ce0-288482de4bce', 1, 1, CAST(N'2023-09-16T16:43:47.310' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17830, N'd4c52764-1a41-9dc8-20ef-c641c4b34bed', 1, 1, CAST(N'2023-09-16T17:01:09.313' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17831, N'ec97302c-4bd1-6b01-cf18-6e9fe0ef6b8e', 1, 1, CAST(N'2023-09-16T17:02:52.087' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17832, N'93ab9c11-3acc-d5ed-c8ad-c02d48df10ea', 1, 1, CAST(N'2023-09-16T17:03:49.677' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17841, N'4d5ee1de-b5e4-fc22-a35a-855a300c4531', 1, 1, CAST(N'2023-09-16T17:48:53.007' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17842, N'dc6b4c52-01cd-a0b6-fdb1-680cedda8efb', 1, 1, CAST(N'2023-09-16T18:00:52.427' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17843, N'2d0bbf41-9d3d-0eba-336f-1ae3d6753a8a', 1, 1, CAST(N'2023-09-16T18:04:31.730' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17844, N'035f88da-62ba-77a1-c74f-057b31393fb1', 1, 1, CAST(N'2023-09-16T18:11:06.820' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17845, N'b2252807-ba10-5010-e993-7721975a49f2', 1, 1, CAST(N'2023-09-16T18:12:03.680' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17846, N'dc6b99d6-f9e3-02ea-55b3-c2dc900fc4aa', 1, 1, CAST(N'2023-09-16T18:14:20.740' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17847, N'c1311180-2c95-754f-8439-ec201c67b274', 1, 1, CAST(N'2023-09-16T18:23:13.610' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17848, N'913c5457-59ec-2627-edd5-eced694d3687', 1, 1, CAST(N'2023-09-16T18:24:39.070' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17849, N'913c5457-59ec-2627-edd5-eced694d3687', 2, 1, CAST(N'2023-09-16T18:27:09.583' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17816, N'91632dec-da6a-1a89-979e-f5019e2a71e8', 1, 1, CAST(N'2023-09-16T14:52:49.757' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17817, N'38cb51ef-0028-0bba-64e8-e538a71831c4', 1, 1, CAST(N'2023-09-16T14:55:17.553' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17818, N'6965d30d-acc7-9e33-994d-e8654997e245', 1, 1, CAST(N'2023-09-16T15:00:27.693' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17819, N'd0805987-cf65-da14-50eb-fd58dd4ef437', 1, 1, CAST(N'2023-09-16T15:02:34.377' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17820, N'ba588187-08a8-c314-4d5f-579717aef31a', 1, 1, CAST(N'2023-09-16T15:03:37.610' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17821, N'087fcbd8-77ba-ea1d-2104-9f814d83e5de', 1, 1, CAST(N'2023-09-16T15:04:28.460' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17822, N'1fa15932-66f1-b5c5-7fe2-61ec93ae569a', 1, 1, CAST(N'2023-09-16T15:05:17.383' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17823, N'd23a479f-00f9-dd30-4ed2-c6560a604df0', 1, 1, CAST(N'2023-09-16T15:09:29.110' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17824, N'b0ed7f78-146a-5b8f-f4ea-140d4ed0eeec', 1, 1, CAST(N'2023-09-16T15:10:40.317' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17825, N'e7aedd7d-7481-ae86-f74c-46495864dcb8', 1, 1, CAST(N'2023-09-16T15:13:56.793' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17826, N'e9575dca-bdaf-9035-4f7f-99383dd01672', 1, 1, CAST(N'2023-09-16T15:16:13.137' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17827, N'125db05f-ea80-b303-f5cc-ca084151bbb2', 1, 1, CAST(N'2023-09-16T15:33:47.307' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17851, N'e54d76f8-44b9-543b-96a4-db60dc514710', 1, 1, CAST(N'2023-09-17T13:25:21.667' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17855, N'd102db51-da63-89f0-8a79-ef6446c93945', 1, 1, CAST(N'2023-09-17T13:55:42.460' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17856, N'407d9898-7c8b-5713-399c-226bbc6576fe', 1, 1, CAST(N'2023-09-17T14:00:38.253' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17858, N'c8eb305d-778c-31ea-6db0-e8788660bb0e', 1, 1, CAST(N'2023-09-17T14:12:29.313' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17859, N'c8eb305d-778c-31ea-6db0-e8788660bb0e', 4, 1, CAST(N'2023-09-17T14:13:19.500' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17860, N'129465f2-101b-ccc7-95b0-9a4d7caaf058', 4, 1, CAST(N'2023-09-17T14:16:54.123' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17867, N'2337c044-1e67-7521-6818-ca1d48a89ec9', 4, 1, CAST(N'2023-09-17T14:49:30.890' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17868, N'5a931130-0ca6-5f1c-fbf3-d34ad027ca63', 1, 1, CAST(N'2023-09-17T14:49:43.997' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18858, N'f030798a-d68a-9a17-11b7-bfb3c9b0d1fa', 4, 1, CAST(N'2023-09-17T20:24:14.683' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18859, N'7ce6891c-87e1-ecce-081d-92dd5d5b5efc', 1, 1, CAST(N'2023-09-17T20:24:20.030' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18861, N'2278b7b2-3452-f413-670a-b7a43f77d2aa', 1, 1, CAST(N'2023-09-17T20:33:46.503' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18864, N'31a8a61e-26ab-d949-146b-6581e1004aba', 4, 1, CAST(N'2023-09-17T20:54:57.717' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18865, N'e504456a-8324-8bf6-15a7-0a2caee06eb3', 4, 1, CAST(N'2023-09-17T21:09:03.267' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18866, N'793d6ef6-fef4-d8d8-807c-76906ca0e6b6', 1, 1, CAST(N'2023-09-17T21:09:32.140' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18867, N'e85df52d-6189-97fa-c1a9-924fb5160535', 1, 1, CAST(N'2023-09-17T21:49:35.183' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18868, N'76df1faa-c814-dd21-d7ef-b9b2d9288152', 4, 1, CAST(N'2023-09-17T21:49:38.230' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18872, N'1a1f84c0-d304-e988-ede8-371686fe501e', 4, 1, CAST(N'2023-09-17T22:04:54.580' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18873, N'e3618eec-0e7f-dd70-1f1e-623369a7c108', 4, 1, CAST(N'2023-09-17T22:37:52.960' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18874, N'7359ba53-2c6f-f76c-3f11-0feb0db558ee', 1, 1, CAST(N'2023-09-17T22:38:09.010' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18876, N'68ac4a99-0d18-8e82-7726-24a3f6c28c18', 1, 1, CAST(N'2023-09-18T22:18:59.620' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18877, N'3f79578d-b69b-6595-8d3d-34bb3d1eb004', 1, 1, CAST(N'2023-09-18T22:21:07.600' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18878, N'3f79578d-b69b-6595-8d3d-34bb3d1eb004', 4, 1, CAST(N'2023-09-18T22:21:47.903' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18879, N'7c95ead0-93a9-9177-c2b6-359ff5c58db7', 4, 1, CAST(N'2023-09-18T22:52:16.080' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18880, N'2c7b791d-3c40-16b8-3b1b-0085301fef24', 1, 1, CAST(N'2023-09-18T22:52:28.103' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18881, N'0e37d2eb-ac5e-96ff-e8ab-da9a878eee01', 1, 1, CAST(N'2023-09-19T21:32:51.440' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18882, N'f5c53133-d025-187a-77f2-75a7ee2e7c59', 4, 1, CAST(N'2023-09-19T21:32:51.447' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18884, N'c5dd4d8a-d89c-8ef0-0920-86f22f9ddd76', 4, 1, CAST(N'2023-09-19T21:46:53.563' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18883, N'21f2b13a-6eba-a05e-b631-c9bc6d34a4b4', 1, 1, CAST(N'2023-09-19T21:46:53.557' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18885, N'21f2b13a-6eba-a05e-b631-c9bc6d34a4b4', 3, 1, CAST(N'2023-09-19T22:37:51.553' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18886, N'87537304-dc10-6ecc-22d6-c939542b9bfd', 4, 1, CAST(N'2023-09-19T22:46:23.087' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18887, N'884308cf-89fd-4064-6984-146ab7565132', 3, 1, CAST(N'2023-09-19T22:46:50.940' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18888, N'6053acf7-0926-d749-cce4-54d00b86cf3c', 4, 1, CAST(N'2023-09-19T22:50:42.330' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18889, N'588fd7d9-c09d-a1cf-81dc-f1bb61557e78', 3, 1, CAST(N'2023-09-19T22:51:18.240' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18890, N'3326cc27-e9e5-642d-b81e-ae4fb1eb23d1', 4, 1, CAST(N'2023-09-19T22:55:54.707' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18891, N'46b1f374-2810-260a-07e6-3da51d29fc2e', 3, 1, CAST(N'2023-09-19T22:57:26.363' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17850, N'47a7eb26-b235-16d8-7f25-e763768e4bde', 1, 1, CAST(N'2023-09-17T13:17:20.663' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17852, N'9c73733c-3dc4-698f-1e28-cd23c0cc2d91', 1, 1, CAST(N'2023-09-17T13:45:21.783' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17853, N'3a912a7c-2580-2b35-736d-7c62ce3d8390', 1, 1, CAST(N'2023-09-17T13:46:58.957' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18863, N'eaf63ddb-7257-5280-b758-de3e64d000fa', 1, 1, CAST(N'2023-09-17T20:54:55.487' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18875, N'49d0aae4-ca06-3f1a-95e1-860d69ee14ef', 1, 1, CAST(N'2023-09-17T22:57:37.347' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17854, N'9cfa4b96-60f5-a081-2001-6a9881fb4c95', 1, 1, CAST(N'2023-09-17T13:51:12.133' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17857, N'407d9898-7c8b-5713-399c-226bbc6576fe', 4, 1, CAST(N'2023-09-17T14:07:38.143' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17861, N'bce89fbb-51a3-9a93-c72b-b99212ec7eb7', 4, 1, CAST(N'2023-09-17T14:22:26.503' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17862, N'308678cb-5bab-977f-2e8e-6008de4cf210', 1, 1, CAST(N'2023-09-17T14:23:12.630' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17863, N'5257b29c-00c9-1643-fe18-7e76df6a592a', 4, 1, CAST(N'2023-09-17T14:29:11.203' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17865, N'adf8b433-a25a-0ec7-2bfc-693f0ffb1819', 4, 1, CAST(N'2023-09-17T14:43:24.623' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17866, N'75c2734c-8688-b4ac-3915-80593795c14c', 1, 1, CAST(N'2023-09-17T14:43:49.293' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18860, N'8e092d77-9d72-564e-114d-39ed68c0d259', 4, 1, CAST(N'2023-09-17T20:33:42.710' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18862, N'31a8a61e-26ab-d949-146b-6581e1004aba', 1, 1, CAST(N'2023-09-17T20:54:55.097' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (17864, N'7dee6462-492b-1ba5-c40f-1f43ce776a6c', 1, 1, CAST(N'2023-09-17T14:29:34.480' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18871, N'84b00c7e-8ee6-90ab-7605-a55225b930d1', 1, 1, CAST(N'2023-09-17T22:04:54.580' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18869, N'b1edcc80-8f2d-085a-36b7-a5523c60aaf0', 4, 1, CAST(N'2023-09-17T21:57:33.827' AS DateTime))
GO
INSERT [dbo].[tbl_session] ([SessionId], [Sessionkey], [LoginID], [RequestMode], [EntryDate]) VALUES (18870, N'eb35ea64-8ab8-f9a7-83dc-b66073731544', 1, 1, CAST(N'2023-09-17T21:57:53.300' AS DateTime))
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
INSERT [dbo].[tbl_student] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [Entrolment_No], [DOB], [FatherOccupation], [MotherName], [Program]) VALUES (5, N'Anshul', N'father', N'ansul@gmail.com', N'6379897654', N'1020', N'Dhurahra', N'Male', CAST(N'2023-05-10T23:23:29.647' AS DateTime), N'A', N'20230004', N'2023-05-04', N'farmar', N'mother', 6)
GO
INSERT [dbo].[tbl_student] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Entrydate], [Group_Name], [Entrolment_No], [DOB], [FatherOccupation], [MotherName], [Program]) VALUES (1005, N'HEMANT NAG', N'czxczxczxc', N'ghnv@gmail.com', N'8767897687', N'1010', N'hjghjgfjgjhgjhg', N'Male', CAST(N'2023-07-30T00:43:12.467' AS DateTime), N'A', N'20230005', N'2023-07-01', N'zzcxvcx', N'xczxc', 6)
GO
SET IDENTITY_INSERT [dbo].[tbl_student] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Student_Admission] ON 
GO
INSERT [dbo].[tbl_Student_Admission] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Admissiondate], [DOB], [Fess_Status], [_Year], [Program], [MotherName], [FatherOccupation], [Religion], [AdmissionNo], [AdmissionType], [FatherMo], [MotherMo], [MotherOccupation], [Photo], [FatherAadharCard], [IncomeCertificate], [AadharCard], [MotherAadharCard], [CastCertificate], [Nationalitycertificate], [TransferCertificate], [RegistrationNo], [Batch]) VALUES (1, N'HemantRoundpay', N'sdfsdf', N'amarnag702@gmail.com', N'9044004486', N'1010', N'sdfsdf', N'Male', CAST(N'2023-08-26T16:19:29.710' AS DateTime), N'2004-07-15', N'3', N'2', 6, N'sdf', N'sdfsdfsdf', N'hindu', N'ER2023000000', 1, N'9685748596', N'8596857485', N'adsad', N'', N'', N'', N'', N'', N'', N'', N'', N'202300001', NULL)
GO
INSERT [dbo].[tbl_Student_Admission] ([Id], [Name], [Fname], [Email], [Mobile], [Branch], [Address], [Gender], [Admissiondate], [DOB], [Fess_Status], [_Year], [Program], [MotherName], [FatherOccupation], [Religion], [AdmissionNo], [AdmissionType], [FatherMo], [MotherMo], [MotherOccupation], [Photo], [FatherAadharCard], [IncomeCertificate], [AadharCard], [MotherAadharCard], [CastCertificate], [Nationalitycertificate], [TransferCertificate], [RegistrationNo], [Batch]) VALUES (2, N'HemantRoundpay', N'ffsd', N'amarnag702@gmail.com', N'8088977723', N'1010', N'adsasdasd', N'Male', CAST(N'2023-09-09T13:57:09.667' AS DateTime), N'2023-09-14', N'3', N'2', 6, N'fsdfsd', N'dfsdf', N'hindu', N'ER2023000001', 1, N'8767890890', N'8767890890', N'asdasdasd', N'https://localhost:44376/Admission/document/09092023015709.jpeg', N'https://localhost:44376/Admission/document/09092023015709.jpg', N'https://localhost:44376/Admission/document/09092023015709.jpeg', N'https://localhost:44376/Admission/document/09092023015709.jpg', N'https://localhost:44376/Admission/document/09092023015709.jpg', N'https://localhost:44376/Admission/document/09092023015709.jpg', N'https://localhost:44376/Admission/document/09092023015709.jpg', N'https://localhost:44376/Admission/document/09092023015709.jpeg', N'202300005', 7)
GO
SET IDENTITY_INSERT [dbo].[tbl_Student_Admission] OFF
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 0, 1, 0, 0, N'gdfg', CAST(N'2023-04-08T18:05:52.553' AS DateTime), 1, NULL, NULL, N'2023-04-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 0, 0, 1, 0, N'hfghjgh', CAST(N'2023-04-08T18:05:52.560' AS DateTime), 1, NULL, NULL, N'2023-04-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 1, 0, 0, 0, N'jhjkkhjk', CAST(N'2023-04-08T18:05:52.560' AS DateTime), 1, NULL, NULL, N'2023-04-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 1, 0, 0, 0, N'hjkhjj', CAST(N'2023-04-08T18:05:52.563' AS DateTime), 1, NULL, NULL, N'2023-04-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 0, 1, 0, 0, N'werewr', CAST(N'2023-04-08T18:05:52.563' AS DateTime), 1, NULL, NULL, N'2023-04-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 0, 0, 0, 1, N'sdfsdf', CAST(N'2023-04-08T18:05:52.563' AS DateTime), 1, NULL, NULL, N'2023-04-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 0, 1, 0, 0, N'', CAST(N'2023-04-08T18:11:04.907' AS DateTime), 1, NULL, NULL, N'04/08/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 0, 1, 0, 0, N'', CAST(N'2023-04-08T18:11:04.907' AS DateTime), 1, NULL, NULL, N'04/08/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 0, 1, 0, 0, N'', CAST(N'2023-04-08T18:11:04.907' AS DateTime), 1, NULL, NULL, N'04/08/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 0, 1, 0, 0, N'', CAST(N'2023-04-08T18:11:04.910' AS DateTime), 1, NULL, NULL, N'04/08/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 0, 1, 0, 0, N'', CAST(N'2023-04-08T18:11:04.910' AS DateTime), 1, NULL, NULL, N'04/08/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 0, 1, 0, 0, N'', CAST(N'2023-04-08T18:11:04.910' AS DateTime), 1, NULL, NULL, N'04/08/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 1, 0, 0, 0, N'', CAST(N'2023-04-08T18:13:05.273' AS DateTime), 1, NULL, NULL, N'04/07/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 0, 0, 0, 1, N'', CAST(N'2023-04-08T18:13:05.277' AS DateTime), 1, NULL, NULL, N'04/07/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 0, 0, 1, 0, N'', CAST(N'2023-04-08T18:13:05.277' AS DateTime), 1, NULL, NULL, N'04/07/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 1, 0, 0, 0, N'', CAST(N'2023-04-08T18:13:05.277' AS DateTime), 1, NULL, NULL, N'04/07/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 0, 0, 1, 0, N'', CAST(N'2023-04-08T18:13:05.280' AS DateTime), 1, NULL, NULL, N'04/07/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 1, 0, 0, 0, N'', CAST(N'2023-04-08T18:13:05.280' AS DateTime), 1, NULL, NULL, N'04/07/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 1, 0, 0, 0, N'', CAST(N'2023-04-10T14:43:06.140' AS DateTime), 1, NULL, NULL, N'2023-04-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 0, 0, 1, 0, N'dfgdfg', CAST(N'2023-04-10T14:43:06.140' AS DateTime), 1, NULL, NULL, N'2023-04-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 0, 0, 0, 1, N'dfgfdg', CAST(N'2023-04-10T14:43:06.140' AS DateTime), 1, NULL, NULL, N'2023-04-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 0, 0, 1, 0, N'dfgfdg', CAST(N'2023-04-10T14:43:06.140' AS DateTime), 1, NULL, NULL, N'2023-04-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 1, 0, 0, 0, N'', CAST(N'2023-04-10T14:43:06.143' AS DateTime), 1, NULL, NULL, N'2023-04-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 1, 0, 0, 0, N'', CAST(N'2023-04-10T14:43:06.143' AS DateTime), 1, NULL, NULL, N'2023-04-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 0, 1, 0, 0, N'dgfgdg', CAST(N'2023-04-15T10:17:49.927' AS DateTime), 1, NULL, NULL, N'2023-04-15', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 1, 0, 0, 0, N'dfgdfg', CAST(N'2023-04-15T10:17:49.930' AS DateTime), 1, NULL, NULL, N'2023-04-15', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 0, 0, 0, 1, N'dgdfg', CAST(N'2023-04-15T10:17:49.930' AS DateTime), 1, NULL, NULL, N'2023-04-15', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 0, 0, 1, 0, N'fdgdfg', CAST(N'2023-04-15T10:17:49.930' AS DateTime), 1, NULL, NULL, N'2023-04-15', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 0, 0, 0, 1, N'fdgdfg', CAST(N'2023-04-15T10:17:49.933' AS DateTime), 1, NULL, NULL, N'2023-04-15', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 1, 0, 0, 0, N'fdgdfg', CAST(N'2023-04-15T10:17:49.933' AS DateTime), 1, NULL, NULL, N'2023-04-15', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 0, 1, 0, 0, N'', CAST(N'2023-04-20T12:09:29.023' AS DateTime), 1, NULL, NULL, N'2023-04-20', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 0, 1, 0, 0, N'', CAST(N'2023-04-20T12:09:29.027' AS DateTime), 1, NULL, NULL, N'2023-04-20', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 0, 1, 0, 0, N'', CAST(N'2023-04-20T12:09:29.027' AS DateTime), 1, NULL, NULL, N'2023-04-20', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 0, 1, 0, 0, N'', CAST(N'2023-04-20T12:09:29.030' AS DateTime), 1, NULL, NULL, N'2023-04-20', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 0, 1, 0, 0, N'', CAST(N'2023-04-20T12:09:29.030' AS DateTime), 1, NULL, NULL, N'2023-04-20', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 0, 1, 0, 0, N'', CAST(N'2023-04-20T12:09:29.030' AS DateTime), 1, NULL, NULL, N'2023-04-20', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 0, 1, 0, 0, N'', CAST(N'2023-05-10T20:53:32.593' AS DateTime), 1, NULL, NULL, N'2023-05-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 0, 1, 0, 0, N'', CAST(N'2023-05-10T20:53:32.613' AS DateTime), 1, NULL, NULL, N'2023-05-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 0, 1, 0, 0, N'', CAST(N'2023-05-10T20:53:32.617' AS DateTime), 1, NULL, NULL, N'2023-05-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 0, 1, 0, 0, N'', CAST(N'2023-05-10T20:53:32.617' AS DateTime), 1, NULL, NULL, N'2023-05-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 0, 1, 0, 0, N'', CAST(N'2023-05-10T20:53:32.623' AS DateTime), 1, NULL, NULL, N'2023-05-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 0, 1, 0, 0, N'', CAST(N'2023-05-10T20:53:32.627' AS DateTime), 1, NULL, NULL, N'2023-05-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 1, 0, 0, 0, N'', CAST(N'2023-06-05T22:52:15.387' AS DateTime), 1, NULL, NULL, N'2023-06-05', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 1, 0, 0, 0, N'', CAST(N'2023-06-05T22:52:15.413' AS DateTime), 1, NULL, NULL, N'2023-06-05', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 1, 0, 0, 0, N'', CAST(N'2023-06-05T22:52:15.483' AS DateTime), 1, NULL, NULL, N'2023-06-05', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 1, 0, 0, 0, N'', CAST(N'2023-06-05T22:52:15.487' AS DateTime), 1, NULL, NULL, N'2023-06-05', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 1, 0, 0, 0, N'', CAST(N'2023-06-05T22:52:15.490' AS DateTime), 1, NULL, NULL, N'2023-06-05', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 1, 0, 0, 0, N'', CAST(N'2023-06-05T22:52:15.493' AS DateTime), 1, NULL, NULL, N'2023-06-05', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300007', 1, 0, 0, 0, N'', CAST(N'2023-06-05T22:52:15.493' AS DateTime), 1, NULL, NULL, N'2023-06-05', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 0, 0, 1, 0, N'', CAST(N'2023-06-08T23:34:34.513' AS DateTime), 7, NULL, NULL, N'2023-06-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 1, 0, 0, 0, N'', CAST(N'2023-06-08T23:34:34.530' AS DateTime), 7, NULL, NULL, N'2023-06-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 0, 0, 1, 0, N'', CAST(N'2023-06-08T23:34:34.533' AS DateTime), 7, NULL, NULL, N'2023-06-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 0, 1, 0, 0, N'', CAST(N'2023-06-08T23:34:34.537' AS DateTime), 7, NULL, NULL, N'2023-06-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 1, 0, 0, 0, N'', CAST(N'2023-06-08T23:34:34.540' AS DateTime), 7, NULL, NULL, N'2023-06-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 0, 1, 0, 0, N'', CAST(N'2023-06-08T23:34:34.547' AS DateTime), 7, NULL, NULL, N'2023-06-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300007', 1, 0, 0, 0, N'', CAST(N'2023-06-08T23:34:34.550' AS DateTime), 7, NULL, NULL, N'2023-06-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 0, 1, 0, 0, N'', CAST(N'2023-06-13T22:18:41.793' AS DateTime), 7, NULL, NULL, N'2023-06-13', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 0, 1, 0, 0, N'', CAST(N'2023-06-13T22:18:41.803' AS DateTime), 7, NULL, NULL, N'2023-06-13', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 0, 1, 0, 0, N'', CAST(N'2023-06-13T22:18:41.807' AS DateTime), 7, NULL, NULL, N'2023-06-13', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 0, 1, 0, 0, N'', CAST(N'2023-06-13T22:18:41.807' AS DateTime), 7, NULL, NULL, N'2023-06-13', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 0, 1, 0, 0, N'', CAST(N'2023-06-13T22:18:41.810' AS DateTime), 7, NULL, NULL, N'2023-06-13', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 0, 1, 0, 0, N'', CAST(N'2023-06-13T22:18:41.810' AS DateTime), 7, NULL, NULL, N'2023-06-13', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300007', 0, 1, 0, 0, N'', CAST(N'2023-06-13T22:18:41.813' AS DateTime), 7, NULL, NULL, N'2023-06-13', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300001', 0, 0, 0, 1, N'', CAST(N'2023-07-30T00:28:52.867' AS DateTime), 7, NULL, NULL, N'2023-07-30', 6, 1020, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 0, 1, 0, 0, N'gdfg', CAST(N'2023-04-08T18:05:52.553' AS DateTime), 1, NULL, NULL, N'2023-04-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 0, 0, 1, 0, N'hfghjgh', CAST(N'2023-04-08T18:05:52.560' AS DateTime), 1, NULL, NULL, N'2023-04-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 1, 0, 0, 0, N'jhjkkhjk', CAST(N'2023-04-08T18:05:52.560' AS DateTime), 1, NULL, NULL, N'2023-04-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 1, 0, 0, 0, N'hjkhjj', CAST(N'2023-04-08T18:05:52.563' AS DateTime), 1, NULL, NULL, N'2023-04-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 0, 1, 0, 0, N'werewr', CAST(N'2023-04-08T18:05:52.563' AS DateTime), 1, NULL, NULL, N'2023-04-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 0, 0, 0, 1, N'sdfsdf', CAST(N'2023-04-08T18:05:52.563' AS DateTime), 1, NULL, NULL, N'2023-04-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 0, 1, 0, 0, N'', CAST(N'2023-04-08T18:11:04.907' AS DateTime), 1, NULL, NULL, N'04/08/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 0, 1, 0, 0, N'', CAST(N'2023-04-08T18:11:04.907' AS DateTime), 1, NULL, NULL, N'04/08/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 0, 1, 0, 0, N'', CAST(N'2023-04-08T18:11:04.907' AS DateTime), 1, NULL, NULL, N'04/08/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 0, 1, 0, 0, N'', CAST(N'2023-04-08T18:11:04.910' AS DateTime), 1, NULL, NULL, N'04/08/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 0, 1, 0, 0, N'', CAST(N'2023-04-08T18:11:04.910' AS DateTime), 1, NULL, NULL, N'04/08/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 0, 1, 0, 0, N'', CAST(N'2023-04-08T18:11:04.910' AS DateTime), 1, NULL, NULL, N'04/08/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 1, 0, 0, 0, N'', CAST(N'2023-04-08T18:13:05.273' AS DateTime), 1, NULL, NULL, N'04/07/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 0, 0, 0, 1, N'', CAST(N'2023-04-08T18:13:05.277' AS DateTime), 1, NULL, NULL, N'04/07/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 0, 0, 1, 0, N'', CAST(N'2023-04-08T18:13:05.277' AS DateTime), 1, NULL, NULL, N'04/07/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 1, 0, 0, 0, N'', CAST(N'2023-04-08T18:13:05.277' AS DateTime), 1, NULL, NULL, N'04/07/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 0, 0, 1, 0, N'', CAST(N'2023-04-08T18:13:05.280' AS DateTime), 1, NULL, NULL, N'04/07/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 1, 0, 0, 0, N'', CAST(N'2023-04-08T18:13:05.280' AS DateTime), 1, NULL, NULL, N'04/07/2023', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 1, 0, 0, 0, N'', CAST(N'2023-04-10T14:43:06.140' AS DateTime), 1, NULL, NULL, N'2023-04-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 0, 0, 1, 0, N'dfgdfg', CAST(N'2023-04-10T14:43:06.140' AS DateTime), 1, NULL, NULL, N'2023-04-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 0, 0, 0, 1, N'dfgfdg', CAST(N'2023-04-10T14:43:06.140' AS DateTime), 1, NULL, NULL, N'2023-04-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 0, 0, 1, 0, N'dfgfdg', CAST(N'2023-04-10T14:43:06.140' AS DateTime), 1, NULL, NULL, N'2023-04-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 1, 0, 0, 0, N'', CAST(N'2023-04-10T14:43:06.143' AS DateTime), 1, NULL, NULL, N'2023-04-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 1, 0, 0, 0, N'', CAST(N'2023-04-10T14:43:06.143' AS DateTime), 1, NULL, NULL, N'2023-04-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 0, 1, 0, 0, N'dgfgdg', CAST(N'2023-04-15T10:17:49.927' AS DateTime), 1, NULL, NULL, N'2023-04-15', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 1, 0, 0, 0, N'dfgdfg', CAST(N'2023-04-15T10:17:49.930' AS DateTime), 1, NULL, NULL, N'2023-04-15', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 0, 0, 0, 1, N'dgdfg', CAST(N'2023-04-15T10:17:49.930' AS DateTime), 1, NULL, NULL, N'2023-04-15', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 0, 0, 1, 0, N'fdgdfg', CAST(N'2023-04-15T10:17:49.930' AS DateTime), 1, NULL, NULL, N'2023-04-15', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 0, 0, 0, 1, N'fdgdfg', CAST(N'2023-04-15T10:17:49.933' AS DateTime), 1, NULL, NULL, N'2023-04-15', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 1, 0, 0, 0, N'fdgdfg', CAST(N'2023-04-15T10:17:49.933' AS DateTime), 1, NULL, NULL, N'2023-04-15', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 0, 1, 0, 0, N'', CAST(N'2023-04-20T12:09:29.023' AS DateTime), 1, NULL, NULL, N'2023-04-20', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 0, 1, 0, 0, N'', CAST(N'2023-04-20T12:09:29.027' AS DateTime), 1, NULL, NULL, N'2023-04-20', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 0, 1, 0, 0, N'', CAST(N'2023-04-20T12:09:29.027' AS DateTime), 1, NULL, NULL, N'2023-04-20', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 0, 1, 0, 0, N'', CAST(N'2023-04-20T12:09:29.030' AS DateTime), 1, NULL, NULL, N'2023-04-20', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 0, 1, 0, 0, N'', CAST(N'2023-04-20T12:09:29.030' AS DateTime), 1, NULL, NULL, N'2023-04-20', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 0, 1, 0, 0, N'', CAST(N'2023-04-20T12:09:29.030' AS DateTime), 1, NULL, NULL, N'2023-04-20', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 0, 1, 0, 0, N'', CAST(N'2023-05-10T20:53:32.593' AS DateTime), 1, NULL, NULL, N'2023-05-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 0, 1, 0, 0, N'', CAST(N'2023-05-10T20:53:32.613' AS DateTime), 1, NULL, NULL, N'2023-05-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 0, 1, 0, 0, N'', CAST(N'2023-05-10T20:53:32.617' AS DateTime), 1, NULL, NULL, N'2023-05-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 0, 1, 0, 0, N'', CAST(N'2023-05-10T20:53:32.617' AS DateTime), 1, NULL, NULL, N'2023-05-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 0, 1, 0, 0, N'', CAST(N'2023-05-10T20:53:32.623' AS DateTime), 1, NULL, NULL, N'2023-05-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 0, 1, 0, 0, N'', CAST(N'2023-05-10T20:53:32.627' AS DateTime), 1, NULL, NULL, N'2023-05-10', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 1, 0, 0, 0, N'', CAST(N'2023-06-05T22:52:15.387' AS DateTime), 1, NULL, NULL, N'2023-06-05', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 1, 0, 0, 0, N'', CAST(N'2023-06-05T22:52:15.413' AS DateTime), 1, NULL, NULL, N'2023-06-05', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 1, 0, 0, 0, N'', CAST(N'2023-06-05T22:52:15.483' AS DateTime), 1, NULL, NULL, N'2023-06-05', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 1, 0, 0, 0, N'', CAST(N'2023-06-05T22:52:15.487' AS DateTime), 1, NULL, NULL, N'2023-06-05', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 1, 0, 0, 0, N'', CAST(N'2023-06-05T22:52:15.490' AS DateTime), 1, NULL, NULL, N'2023-06-05', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 1, 0, 0, 0, N'', CAST(N'2023-06-05T22:52:15.493' AS DateTime), 1, NULL, NULL, N'2023-06-05', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300007', 1, 0, 0, 0, N'', CAST(N'2023-06-05T22:52:15.493' AS DateTime), 1, NULL, NULL, N'2023-06-05', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 0, 0, 1, 0, N'', CAST(N'2023-06-08T23:34:34.513' AS DateTime), 7, NULL, NULL, N'2023-06-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 1, 0, 0, 0, N'', CAST(N'2023-06-08T23:34:34.530' AS DateTime), 7, NULL, NULL, N'2023-06-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 0, 0, 1, 0, N'', CAST(N'2023-06-08T23:34:34.533' AS DateTime), 7, NULL, NULL, N'2023-06-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 0, 1, 0, 0, N'', CAST(N'2023-06-08T23:34:34.537' AS DateTime), 7, NULL, NULL, N'2023-06-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 1, 0, 0, 0, N'', CAST(N'2023-06-08T23:34:34.540' AS DateTime), 7, NULL, NULL, N'2023-06-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 0, 1, 0, 0, N'', CAST(N'2023-06-08T23:34:34.547' AS DateTime), 7, NULL, NULL, N'2023-06-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300007', 1, 0, 0, 0, N'', CAST(N'2023-06-08T23:34:34.550' AS DateTime), 7, NULL, NULL, N'2023-06-08', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300000', 0, 1, 0, 0, N'', CAST(N'2023-06-13T22:18:41.793' AS DateTime), 7, NULL, NULL, N'2023-06-13', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300002', 0, 1, 0, 0, N'', CAST(N'2023-06-13T22:18:41.803' AS DateTime), 7, NULL, NULL, N'2023-06-13', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300003', 0, 1, 0, 0, N'', CAST(N'2023-06-13T22:18:41.807' AS DateTime), 7, NULL, NULL, N'2023-06-13', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300004', 0, 1, 0, 0, N'', CAST(N'2023-06-13T22:18:41.807' AS DateTime), 7, NULL, NULL, N'2023-06-13', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300005', 0, 1, 0, 0, N'', CAST(N'2023-06-13T22:18:41.810' AS DateTime), 7, NULL, NULL, N'2023-06-13', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300006', 0, 1, 0, 0, N'', CAST(N'2023-06-13T22:18:41.810' AS DateTime), 7, NULL, NULL, N'2023-06-13', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300007', 0, 1, 0, 0, N'', CAST(N'2023-06-13T22:18:41.813' AS DateTime), 7, NULL, NULL, N'2023-06-13', 5, 1010, 1)
GO
INSERT [dbo].[tbl_StudentAttandance] ([EnrollmentNo], [IsPresent], [IsAbsent], [IsLate], [IsHalfDay], [Note], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [AttandanceDate], [Program], [Branch], [Year]) VALUES (N'E202300001', 0, 0, 0, 1, N'', CAST(N'2023-07-30T00:28:52.867' AS DateTime), 7, NULL, NULL, N'2023-07-30', 6, 1020, 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_Studentfine] ON 
GO
INSERT [dbo].[tbl_Studentfine] ([Id], [EnrollmentNumber], [FineAmount], [FineResion], [EntryDate], [ModifyDate], [FineStatus]) VALUES (1, N'E202300002', N'12', N'dsasa', CAST(N'2023-03-27T17:00:08.137' AS DateTime), NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_Studentfine] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_StudentMarks] ON 
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (1, 5, 1010, 1, N'E202300000', 4, 0, 1, N'eqw', CAST(N'2023-05-18T23:10:58.950' AS DateTime), 1, 0, 1)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (2, 5, 1010, 1, N'E202300002', 4, 0, 3, N'dsa', CAST(N'2023-05-18T23:10:58.953' AS DateTime), 1, 0, 1)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (3, 5, 1010, 1, N'E202300003', 4, 0, 4, N'dsa', CAST(N'2023-05-18T23:10:58.957' AS DateTime), 1, 0, 1)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (4, 5, 1010, 1, N'E202300004', 4, 0, 5, N'dsa', CAST(N'2023-05-18T23:10:58.960' AS DateTime), 1, 0, 1)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (5, 5, 1010, 1, N'E202300005', 4, 0, 3, N'eqw', CAST(N'2023-05-18T23:10:58.960' AS DateTime), 1, 0, 1)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (6, 5, 1010, 1, N'E202300006', 4, 0, 3, N'eqw', CAST(N'2023-05-18T23:10:58.963' AS DateTime), 1, 0, 1)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (7, 5, 1010, 1, N'E202300000', 4, 0, 1, N'', CAST(N'2023-05-18T23:10:58.963' AS DateTime), 1, 1, 0)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (8, 5, 1010, 1, N'E202300002', 4, 0, 3, N'', CAST(N'2023-05-18T23:10:58.967' AS DateTime), 1, 1, 0)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (9, 5, 1010, 1, N'E202300003', 4, 0, 4, N'', CAST(N'2023-05-18T23:10:58.967' AS DateTime), 1, 1, 0)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (10, 5, 1010, 1, N'E202300004', 4, 0, 5, N'', CAST(N'2023-05-18T23:10:58.970' AS DateTime), 1, 1, 0)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (11, 5, 1010, 1, N'E202300005', 4, 0, 3, N'', CAST(N'2023-05-18T23:10:58.973' AS DateTime), 1, 1, 0)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (12, 5, 1010, 1, N'E202300006', 4, 0, 3, N'', CAST(N'2023-05-18T23:10:58.973' AS DateTime), 1, 1, 0)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (1002, 5, 1010, 1, N'E202300000', 1, 0, 0, N'', CAST(N'2023-06-13T22:15:23.607' AS DateTime), 1002, 0, 1)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (1003, 5, 1010, 1, N'E202300002', 1, 0, 0, N'', CAST(N'2023-06-13T22:15:23.637' AS DateTime), 1002, 0, 1)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (1004, 5, 1010, 1, N'E202300003', 1, 0, 0, N'', CAST(N'2023-06-13T22:15:23.637' AS DateTime), 1002, 0, 1)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (1005, 5, 1010, 1, N'E202300004', 1, 0, 0, N'', CAST(N'2023-06-13T22:15:23.640' AS DateTime), 1002, 0, 1)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (1006, 5, 1010, 1, N'E202300005', 1, 0, 0, N'', CAST(N'2023-06-13T22:15:23.640' AS DateTime), 1002, 0, 1)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (1007, 5, 1010, 1, N'E202300006', 1, 0, 0, N'', CAST(N'2023-06-13T22:15:23.643' AS DateTime), 1002, 0, 1)
GO
INSERT [dbo].[tbl_StudentMarks] ([Id], [Program], [Branch], [Year], [EnrollmentNo], [SubjectId], [IsAttendance], [Marks], [Note], [EntryOn], [ExamID], [IsPrectical], [IsWritten]) VALUES (1008, 5, 1010, 1, N'E202300007', 1, 0, 0, N'', CAST(N'2023-06-13T22:15:23.643' AS DateTime), 1002, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_StudentMarks] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_SubjectMaster] ON 
GO
INSERT [dbo].[tbl_SubjectMaster] ([Id], [_Year], [SubjectName], [SubjectCode], [SubjectType], [TheoryMarks], [PracticalMarks], [EntryDate], [Modifydate], [BranchId], [Program], [PassingMarks], [IsPrectical], [Iswritten], [PrecticalPassingMarks]) VALUES (1, N'2', N'Applied Mathemetics-2', N'AM-1', N'optional', N'52', N'23', CAST(N'2023-03-13T15:59:05.877' AS DateTime), CAST(N'2023-03-27T12:52:06.580' AS DateTime), 1010, 5, 17, 0, 1, 9)
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
INSERT [dbo].[tbl_SubjectMaster] ([Id], [_Year], [SubjectName], [SubjectCode], [SubjectType], [TheoryMarks], [PracticalMarks], [EntryDate], [Modifydate], [BranchId], [Program], [PassingMarks], [IsPrectical], [Iswritten], [PrecticalPassingMarks]) VALUES (10, N'1', N'Applied Math-1', N'AP1', N'Conpalsary', N'50', N'', CAST(N'2023-06-08T22:35:26.737' AS DateTime), NULL, 1010, 5, 17, 0, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[tbl_SubjectMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Syllabus] ON 
GO
INSERT [dbo].[tbl_Syllabus] ([ID], [BranchID], [SubjectID], [_Year], [_Path], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [Program]) VALUES (2, 1010, 1, 1, N'\Syllabus\1\reward-coin.png', CAST(N'2023-01-31T14:43:18.367' AS DateTime), 1, CAST(N'2023-01-31T14:43:51.373' AS DateTime), 1, 6)
GO
INSERT [dbo].[tbl_Syllabus] ([ID], [BranchID], [SubjectID], [_Year], [_Path], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [Program]) VALUES (3, 1020, 2, 1, N'\Syllabus\1\color.png', CAST(N'2023-02-18T16:44:54.420' AS DateTime), 1, NULL, NULL, 6)
GO
INSERT [dbo].[tbl_Syllabus] ([ID], [BranchID], [SubjectID], [_Year], [_Path], [EntryDate], [EntryBy], [ModifyDate], [ModifyBy], [Program]) VALUES (4, 1040, 6, 1, N'\Syllabus\7\6323.jpg', CAST(N'2023-04-10T15:39:34.943' AS DateTime), 1, NULL, NULL, 7)
GO
SET IDENTITY_INSERT [dbo].[tbl_Syllabus] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Teacher] ON 
GO
INSERT [dbo].[tbl_Teacher] ([TeacherId], [Name], [Fname], [Email], [Mobile], [DOB], [Address], [salary], [EntryDate], [ModifyDate], [HighSchoolMarks], [HighSchool_P], [HighSchool_B], [InterMarks], [Inter_P], [Inter_B], [UGTitle], [UGMarks], [UG_Collage], [PGTitle], [PGMarks], [PG_Collage], [PreviousCollage], [Subjects], [Experiance], [UserId]) VALUES (7, N'Hemant', N'Ramlakhan', N'amarnag702@gmail.com', N'6390749256', N'2004-07-01', N'Dhaurahra', N'70000', CAST(N'2023-06-05T23:16:31.510' AS DateTime), CAST(N'2023-07-12T23:14:50.753' AS DateTime), CAST(456.00 AS Numeric(10, 2)), CAST(90.00 AS Numeric(10, 2)), N'up', CAST(345.00 AS Numeric(10, 2)), 78, N'up', N'B.A', CAST(234.00 AS Numeric(10, 2)), N'60', N'M.A', CAST(345.00 AS Numeric(10, 2)), N'67', N'DRT', N'Math,Computer', 8, NULL)
GO
INSERT [dbo].[tbl_Teacher] ([TeacherId], [Name], [Fname], [Email], [Mobile], [DOB], [Address], [salary], [EntryDate], [ModifyDate], [HighSchoolMarks], [HighSchool_P], [HighSchool_B], [InterMarks], [Inter_P], [Inter_B], [UGTitle], [UGMarks], [UG_Collage], [PGTitle], [PGMarks], [PG_Collage], [PreviousCollage], [Subjects], [Experiance], [UserId]) VALUES (8, N'HEMANT NAG 2', N'fghhjgjh', N'amarnag702@gmail.com', N'9044004486', N'2023-09-06', N'jgvhvjvh', N'9000', CAST(N'2023-09-17T14:05:20.607' AS DateTime), NULL, CAST(9090.00 AS Numeric(10, 2)), CAST(9090.00 AS Numeric(10, 2)), N'up board', CAST(8989.00 AS Numeric(10, 2)), 8989, N'up board', N'B.A', CAST(90.00 AS Numeric(10, 2)), N'ghv', N'M.A', CAST(90.00 AS Numeric(10, 2)), N'gvhgv', N'iubihbb', N'hbhj,uvguvgu', 7, 4)
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
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (10, 7, 1040, 1, 6, 2, N'19:16', N'20:16', N'L-2', CAST(N'2023-04-08T18:16:36.417' AS DateTime), NULL, N'Monday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (11, 7, 1040, 1, 6, 1, N'18:21', N'18:22', N'L-2', CAST(N'2023-04-08T18:17:26.320' AS DateTime), NULL, N'Tuesday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (12, 7, 1040, 1, 6, 3, N'22:17', N'00:23', N'L-2', CAST(N'2023-04-08T18:17:47.567' AS DateTime), NULL, N'Wednesday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (13, 7, 1040, 1, 6, 1, N'22:18', N'18:22', N'L-2', CAST(N'2023-04-08T18:18:10.120' AS DateTime), NULL, N'Thursday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (14, 7, 1040, 1, 6, 2, N'22:18', N'21:18', N'L-2', CAST(N'2023-04-08T18:18:30.327' AS DateTime), NULL, N'Friday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (15, 7, 1040, 1, 6, 3, N'22:18', N'18:21', N'L-2', CAST(N'2023-04-08T18:18:51.413' AS DateTime), NULL, N'Suterday')
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
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (10, 7, 1040, 1, 6, 2, N'19:16', N'20:16', N'L-2', CAST(N'2023-04-08T18:16:36.417' AS DateTime), NULL, N'Monday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (11, 7, 1040, 1, 6, 1, N'18:21', N'18:22', N'L-2', CAST(N'2023-04-08T18:17:26.320' AS DateTime), NULL, N'Tuesday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (12, 7, 1040, 1, 6, 3, N'22:17', N'00:23', N'L-2', CAST(N'2023-04-08T18:17:47.567' AS DateTime), NULL, N'Wednesday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (13, 7, 1040, 1, 6, 1, N'22:18', N'18:22', N'L-2', CAST(N'2023-04-08T18:18:10.120' AS DateTime), NULL, N'Thursday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (14, 7, 1040, 1, 6, 2, N'22:18', N'21:18', N'L-2', CAST(N'2023-04-08T18:18:30.327' AS DateTime), NULL, N'Friday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (15, 7, 1040, 1, 6, 3, N'22:18', N'18:21', N'L-2', CAST(N'2023-04-08T18:18:51.413' AS DateTime), NULL, N'Suterday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (16, 6, 1010, 1, 8, 7, N'17:04', N'15:06', N'90', CAST(N'2023-09-16T13:00:24.890' AS DateTime), CAST(N'2023-09-16T13:00:47.250' AS DateTime), N'Thursday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (17, 6, 1010, 1, 8, 7, N'13:06', N'13:03', N'90', CAST(N'2023-09-16T13:00:47.253' AS DateTime), NULL, N'Thursday')
GO
INSERT [dbo].[tbl_TimeTable] ([ID], [Program], [Branch], [Year], [Subject], [Teacher], [TimeFrom], [TimeTo], [RoomNo], [EntryDate], [ModifyDate], [Day]) VALUES (18, 6, 1010, 1, 9, 7, N'15:13', N'13:18', N'90', CAST(N'2023-09-16T13:13:25.147' AS DateTime), NULL, N'Friday')
GO
SET IDENTITY_INSERT [dbo].[tbl_TimeTable] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Users] ON 
GO
INSERT [dbo].[tbl_Users] ([Id], [Name], [Fname], [Email], [Mobile], [Address], [Gender], [DOB], [MotherName], [Religion], [RoleId], [IsActive], [ReffId]) VALUES (1, N'Admin', N'RamLakhan Nag', N'amarnag702@gmail.com', N'6390749256', N'Lucknow', N'M', N'15/07/2004', N'Urmila Nag', N'HINDU', 1, 1, NULL)
GO
INSERT [dbo].[tbl_Users] ([Id], [Name], [Fname], [Email], [Mobile], [Address], [Gender], [DOB], [MotherName], [Religion], [RoleId], [IsActive], [ReffId]) VALUES (2, N'Hemant', N'sdfsdf', N'amarnag702@gmail.com', N'9044004486', N'sdfsdf', N'Male', N'2004-07-15', N'sdf', N'hindu', 3, 1, N'ER2023000000')
GO
INSERT [dbo].[tbl_Users] ([Id], [Name], [Fname], [Email], [Mobile], [Address], [Gender], [DOB], [MotherName], [Religion], [RoleId], [IsActive], [ReffId]) VALUES (3, N'Rohit', N'ffsd', N'amarnag702@gmail.com', N'8088977723', N'adsasdasd', N'Male', N'2023-09-14', N'fsdfsd', N'hindu', 3, 1, N'ER2023000001')
GO
INSERT [dbo].[tbl_Users] ([Id], [Name], [Fname], [Email], [Mobile], [Address], [Gender], [DOB], [MotherName], [Religion], [RoleId], [IsActive], [ReffId]) VALUES (4, N'Gyan Chandra', N'fghhjgjh', N'amarnag702@gmail.com', N'9044004486', N'jgvhvjvh', N'', N'2023-09-06', N'', N'', 2, 1, N'0')
GO
SET IDENTITY_INSERT [dbo].[tbl_Users] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_VideoLectures] ON 
GO
INSERT [dbo].[tbl_VideoLectures] ([Id], [BranchId], [SubjectId], [Year], [EntryBy], [EntryDate], [ModifyBy], [ModifyDate], [VideoUrl], [Program]) VALUES (3, 1020, 2, 1, 1, CAST(N'2023-02-18T13:25:41.013' AS DateTime), 1, CAST(N'2023-03-27T17:04:54.140' AS DateTime), N'https://www.youtube.com/watch?v=jdPkQcfCuYg', 6)
GO
SET IDENTITY_INSERT [dbo].[tbl_VideoLectures] OFF
GO
