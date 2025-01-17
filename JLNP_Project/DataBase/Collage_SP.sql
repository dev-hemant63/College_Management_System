USE [DB_CollageERP]
GO
/****** Object:  StoredProcedure [dbo].[ProcSaveProgramBranchMapping]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[ProcSaveProgramBranchMapping]
GO
/****** Object:  StoredProcedure [dbo].[ProcSaveAndUpdateFeesType]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[ProcSaveAndUpdateFeesType]
GO
/****** Object:  StoredProcedure [dbo].[ProcGetVideoUrl]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[ProcGetVideoUrl]
GO
/****** Object:  StoredProcedure [dbo].[ProcGetStudentresult]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[ProcGetStudentresult]
GO
/****** Object:  StoredProcedure [dbo].[ProcGetStudentAssignment]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[ProcGetStudentAssignment]
GO
/****** Object:  StoredProcedure [dbo].[ProcGetFeesType]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[ProcGetFeesType] 
GO
/****** Object:  StoredProcedure [dbo].[ProcFeesReport]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[ProcFeesReport]
GO
/****** Object:  StoredProcedure [dbo].[ProcAddAndUpdateVideoUrl]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[ProcAddAndUpdateVideoUrl]
GO
/****** Object:  StoredProcedure [dbo].[ProcAddAndUpdateProgram]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[ProcAddAndUpdateProgram]
GO
/****** Object:  StoredProcedure [dbo].[Proc_UpadteSyllabus]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_UpadteSyllabus]
GO
/****** Object:  StoredProcedure [dbo].[Proc_TransactionHistory]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_TransactionHistory]
GO
/****** Object:  StoredProcedure [dbo].[Proc_TimeTableReport]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_TimeTableReport]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Teacher_Crud]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_Teacher_Crud]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Teacher]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_Teacher]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Syllabus]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_Syllabus]
GO
/****** Object:  StoredProcedure [dbo].[Proc_SubjectMaster]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_SubjectMaster]
GO
/****** Object:  StoredProcedure [dbo].[Proc_studentSyllabus]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_studentSyllabus]
GO
/****** Object:  StoredProcedure [dbo].[Proc_StudentResult]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_StudentResult]
GO
/****** Object:  StoredProcedure [dbo].[Proc_StudentRegistration]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_StudentRegistration]
GO
/****** Object:  StoredProcedure [dbo].[Proc_StudentNotification]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_StudentNotification]
GO
/****** Object:  StoredProcedure [dbo].[Proc_StudentmarksEntry]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_StudentmarksEntry]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Studentmarks]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_Studentmarks]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Studentfine]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_Studentfine]
GO
/****** Object:  StoredProcedure [dbo].[Proc_StudentAttandance]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_StudentAttandance]
GO
/****** Object:  StoredProcedure [dbo].[Proc_SaveTimeTable]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_SaveTimeTable]
GO
/****** Object:  StoredProcedure [dbo].[Proc_projectReport]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_projectReport]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Notification]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_Notification]
GO
/****** Object:  StoredProcedure [dbo].[Proc_MarkAttendance]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_MarkAttendance]
GO
/****** Object:  StoredProcedure [dbo].[proc_login_V1]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[proc_login_V1]
GO
/****** Object:  StoredProcedure [dbo].[proc_login]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[proc_login]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetVideoTransaction]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_GetVideoTransaction]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetUsers]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_GetUsers]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetUserForChat]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_GetUserForChat]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetTeacher]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_GetTeacher]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetSyllabusByID]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_GetSyllabusByID]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetStudentInfo]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_GetStudentInfo]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetstudentForAttendance]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_GetstudentForAttendance]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetStudentdetails]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_GetStudentdetails]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetRegistrationFees]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_GetRegistrationFees]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetRegistration]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_GetRegistration]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetDetailsforResult]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_GetDetailsforResult]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetDetailsByRes]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_GetDetailsByRes]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetConversation]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_GetConversation]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetAttendanceByDate]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_GetAttendanceByDate]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetAmount]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_GetAmount]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetAdmissionDetails]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_GetAdmissionDetails]
GO
/****** Object:  StoredProcedure [dbo].[Proc_forgetPassword]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_forgetPassword]
GO
/****** Object:  StoredProcedure [dbo].[proc_Feessubmition]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[proc_Feessubmition]
GO
/****** Object:  StoredProcedure [dbo].[Proc_FeesStructure]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_FeesStructure]
GO
/****** Object:  StoredProcedure [dbo].[Proc_FeesReceipt]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_FeesReceipt]
GO
/****** Object:  StoredProcedure [dbo].[Proc_FeesHead]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_FeesHead]
GO
/****** Object:  StoredProcedure [dbo].[Proc_EnterStudentMarks]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_EnterStudentMarks]
GO
/****** Object:  StoredProcedure [dbo].[Proc_DashboardSummay]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_DashboardSummay]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Conversation]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_Conversation]
GO
/****** Object:  StoredProcedure [dbo].[Proc_ChangePassword]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_ChangePassword]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Branch_Crud]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_Branch_Crud]
GO
/****** Object:  StoredProcedure [dbo].[proc_Branch]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[proc_Branch]
GO
/****** Object:  StoredProcedure [dbo].[Proc_BindTeacher]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_BindTeacher]
GO
/****** Object:  StoredProcedure [dbo].[Proc_BindSubject]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_BindSubject]
GO
/****** Object:  StoredProcedure [dbo].[Proc_BindAmount]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_BindAmount]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Bind_Subjects]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_Bind_Subjects]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Bind_Subject]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_Bind_Subject]
GO
/****** Object:  StoredProcedure [dbo].[Proc_BatchMaster]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_BatchMaster]
GO
/****** Object:  StoredProcedure [dbo].[Proc_AssignSubject]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_AssignSubject]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Assignment]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[Proc_Assignment]
GO
/****** Object:  StoredProcedure [dbo].[proc_Admission]    Script Date: 17-10-2023 16:30:34 ******/
DROP PROCEDURE [dbo].[proc_Admission]
GO
/****** Object:  StoredProcedure [dbo].[proc_Admission]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[proc_Admission](              
@Name varchar(100)=null,                  
@Fname varchar(100)=null,                  
@Email varchar(50)=null,                  
@Mobile varchar(20)=null,                  
@Branch varchar(50)=null,              
@Year int = 0,
@Address varchar(50)=null,                  
@Gender varchar(50)=null,                  
@Group_Name varchar(50)=null,                  
@RegistrationNo varchar(50) = null,   
@DOB varchar(50)=null,      
@FromDate varchar(50)=null,      
@ToDate varchar(50)=null,      
@MotherName varchar(50)=null,    
@FatherOccupation varchar(50)=null,    
@Program int=0,    
@Religion varchar(50)=null,
@AdmissionType int,
@FatherMo varchar(12),
@MotherMo varchar(12),
@MotherOccupation varchar(240),
@Photo varchar(240),
@FatherAadharCard varchar(240),
@IncomeCertificate varchar(240),
@AadharCard varchar(240),
@MotherAadharCard varchar(240),
@CastCertificate varchar(240),
@Nationalitycertificate varchar(240),
@TransferCertificate varchar(240),
@Batch int = 0
)                  
as                  
begin
	declare @AdmissionNo varchar(150),@RegisteredProgram int,@RegisteredBranch int,@RegisteredAdmissionType int
                           
	if not EXISTS(select 1 from tbl_registration where RegistrationNo = @RegistrationNo)                  
	begin                  
		select -1 statuscode,'Invalid Registration Number..' Msg                  
		return;                  
	end
	if EXISTS(select * from tbl_Student_Admission where RegistrationNo =@RegistrationNo)                  
	begin                  
		select -1 statuscode,'Your Admission Already Done!' Msg                  
		return;                  
	end
	select @RegisteredProgram = Program,@RegisteredBranch = Branch,@RegisteredAdmissionType = AdmissionType from tbl_Registration Where RegistrationNo = @RegistrationNo
	if(@RegisteredProgram <> @Program)                  
	begin                  
		select -1 statuscode,'Please select valid program!' Msg                  
		return;                  
	end
	if(@RegisteredBranch <> @Branch)                  
	begin                  
		select -1 statuscode,'Please select valid branch!' Msg                  
		return;                  
	end
	if(@RegisteredAdmissionType <> @AdmissionType)                  
	begin                  
		select -1 statuscode,'Please select valid admission type!' Msg                  
		return;                  
	end
	-- valiadte admission
	declare @Start date,@End date,@IsOpen bit
	select @Start = CAST(Startdate as date),@End = CAST(Enddate as date),@IsOpen = Isnull(IsOpen,1) from tbl_AdmissionMaster where Program = @Program and Branch = @Branch and AdmissionType = @AdmissionType
	if(@IsOpen = 0)
	begin
		select -1 statuscode,'Admission will be closed at Date : '+CAST(@End as varchar) Msg                  
		return;
	end
	If(CAST(GETDATE() as date) > @End)
	begin
		select -1 statuscode,'Admission will be closed at Date : '+CAST(@End as varchar) Msg                  
		return;
	end
	If(CAST(GETDATE() as date) < @Start)
	begin
		select -1 statuscode,'Admission will be open at Date : '+CAST(@End as varchar) Msg                  
		return;
	end
	BEGIN TRY
	BEGIN TRAN
	select top(1) @AdmissionNo = AdmissionNo from tbl_Student_Admission order by Id desc
	if(Isnull(@AdmissionNo,'')='')          
	begin          
		set @AdmissionNo = ('ER'+CONVERT(varchar,Year(getdate()))+'000000')
	end          
	else          
	begin    
		declare @Enroll int
		set @Enroll = REPLACE(@AdmissionNo,'ER','');
		set @AdmissionNo = ('ER'+Convert(varchar,(CAST(@Enroll as int)+1)))         
	end
	insert into tbl_Student_Admission([Name],Fname,Email,Mobile,Branch,[Address],Gender,DOB,AdmissionNo,Admissiondate,_Year,
	Fess_Status,Program,MotherName,FatherOccupation,Religion,AdmissionType,FatherMo,MotherMo,MotherOccupation,Photo,FatherAadharCard,
	IncomeCertificate,AadharCard,MotherAadharCard,CastCertificate,Nationalitycertificate,TransferCertificate,RegistrationNo,batch)              
	values(@Name,@Fname,@Email,@Mobile,@Branch,@Address,@Gender,@DOB,@AdmissionNo,GETDATE(),@Year,'3',@Program,@MotherName,
	@FatherOccupation,@Religion,@AdmissionType,@FatherMo,@MotherMo,@MotherOccupation,@Photo,@FatherAadharCard,@IncomeCertificate,@AadharCard,
	@MotherAadharCard,@CastCertificate,@Nationalitycertificate,@TransferCertificate,@RegistrationNo,@Batch)

	-- create user
	declare @UserId int
	insert into tbl_Users([Name],Fname,Email,Mobile,[Address],Gender,DOB,MotherName,Religion,RoleId,IsActive,ReffId)
	values(@Name,@Fname,@Email,@Mobile,@Address,@Gender,@DOB,@MotherName,@Religion,3,1,@AdmissionNo)
	select @UserId = SCOPE_IDENTITY();

	insert into tbl_login(UserId,UserName,[Password]) values(@UserId,@AdmissionNo,REPLACE(@DOB,'-',''))
	select 1 statuscode,'Admission Successfully done.' Msg 
	COMMIT TRAN
	END TRY
	BEGIN CATCH
	ROLLBACK TRAN
		insert into Log_DBError(ErrorMessage,ErrorProcedure,Entrydate) values(ERROR_MESSAGE(),ERROR_PROCEDURE(),GETDATE());
		select -1 statuscode,'Something went wrong try again letter!' Msg 
	END CATCH          
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_Assignment]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_Assignment]          
@Id int=0,          
@Program int=0,  
@BranchId int=0,  
@Year int=0,          
@SubjectId int=0,          
@Assignment varchar(100)='',          
@Action varchar(100)='',
@Paths varchar(100)=''
AS          
Begin          
if(@Action = 'Add' and @Id = 0)          
begin   
 if(@Program = 0)    
 begin    
  select -1 statuscode,'Please Select Program!' Msg     
  return    
 end   
 if(@BranchId = 0)    
 begin    
  select -1 statuscode,'Please Select Branch!' Msg     
  return    
 end     
 if(@Year = 0)    
 begin    
  select -1 statuscode,'Please Select Year!' Msg     
  return    
 end    
 if(@SubjectId = 0)    
 begin    
  select -1 statuscode,'Please Select Subject!' Msg     
  return    
 end    
 if(@Assignment = '')    
 begin    
  select -1 statuscode,'Please Enter Assignment!' Msg     
  return    
 end    
 insert into tbl_Assignment(BranchId,Year,SubjectId,Assignment,EntryDate,Program,Paths) values(@BranchId,@Year,@SubjectId,@Assignment,GETDATE(),@Program,@Paths)  
 select 1 statuscode,'Assignment Save Successfully..' Msg          
end          
if(@Action = 'Get' and @Id = 0)          
begin          
select tb.Branch_Name,ta.Id,          
(case ta.Year           
when 1 then 'First Year'          
when 2 then 'Seccond Year'          
when 3 then 'Third Year'      
when 4 then 'Final Year'  
end ) Year,          
tas.SubjectName,ta.Assignment,CONVERT(varchar,ta.EntryDate,106) EntryDate,tp.Program from tbl_Assignment ta          
inner join tbl_Branch tb on ta.BranchId = tb.BranchId  
inner join tbl_Program tp on ta.Program = tp.Id  
inner join tbl_SubjectMaster tas on ta.SubjectId = tas.Id order by ta.Id desc    
end          
if(@Action = 'Get' and @Id <> 0)          
begin          
select ta.Id, tb.Branch_Name,          
ta.SubjectId,        
ta.BranchId,        
ta.Year,(case ta.Year           
when 1 then 'First Year'          
when 2 then 'Seccond Year'          
when 3 then 'Third Year'          
end ) _Year,          
tas.SubjectName,ta.Assignment,CONVERT(varchar,ta.EntryDate,106) EntryDate,ta.Program from tbl_Assignment ta          
inner join tbl_Branch tb on ta.BranchId = tb.BranchId          
inner join tbl_SubjectMaster tas on ta.SubjectId = tas.Id where ta.Id = @Id          
end          
if(@Action = 'Add' and @Id <> 0)          
begin   
if(@Paths = '')
begin
update tbl_Assignment set BranchId = @BranchId,Year = @Year, SubjectId = @SubjectId,Assignment = @Assignment,Modifydate = GETDATE(),Program =@Program where Id = @Id          
select 1 statuscode,'Assignment Update Successfully..' Msg 
end
else
begin
update tbl_Assignment set BranchId = @BranchId,Year = @Year, SubjectId = @SubjectId,Assignment = @Assignment,Modifydate = GETDATE(),Program =@Program,Paths=@Paths where Id = @Id          
select 1 statuscode,'Assignment Update Successfully..' Msg 
end
end         
if(@Action = 'Delete' and @Id <> 0)          
begin          
delete from tbl_Assignment where id = @Id      
select 1 statuscode,'Assignment Delete Successfully..' Msg          
end      
end       
GO
/****** Object:  StoredProcedure [dbo].[Proc_AssignSubject]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
--select * from tbl_program          
          
CREATE proc [dbo].[Proc_AssignSubject]          
@Id int=0,          
@BranchId int = 0,  
@ProgramId int = 0,  
@Year int = 0,    
@SubjectId int=0,    
@TeacherId int=0,          
@Action varchar(20)          
AS          
BEGIN          
if(@Action = 'Add' and @Id = 0)          
begin   
	if exists(select 1 from tbl_AssignSubject where TeacherId = @TeacherId and ProgramId = @ProgramId and BranchId = @BranchId and Year = @Year and SubjectId = @SubjectId)  
		begin  
			select -1 statuscode,'Already assign subject!' Msg   
			return  
		end 
		if not Exists(select 1 from tbl_ProgramBranchMapping where ProgramId = @ProgramId and BranchId = @BranchId)
			begin
				select -1 statuscode,'Invalid branch selection' Msg   
				return
			end
		if not Exists(select 1 from tbl_SubjectMaster where Program = @ProgramId and BranchId = @BranchId and _Year = @Year)
		begin
			select -1 statuscode,'Invalid subject selection!' Msg 
			return
		end
	if Exists(select 1 from tbl_AssignSubject where ProgramId = @ProgramId and BranchId = @BranchId and Year = @Year and SubjectId = @SubjectId)
		begin
			select @Id=Id from tbl_AssignSubject where ProgramId = @ProgramId and BranchId = @BranchId and Year = @Year and SubjectId = @SubjectId
			Update tbl_AssignSubject set TeacherId = @TeacherId where Id = @Id
			select 1 statuscode,'Subject Assign Successfully' Msg
			return
		end
	else
		begin
			insert into tbl_AssignSubject(BranchId,Year,SubjectId,TeacherId,Entrydate,ProgramId)   
			values(@BranchId,@Year,@SubjectId,@TeacherId,GETDATE(),@ProgramId)

			select 1 statuscode,'Subject Assign Successfully' Msg
			return
		end
select -1 statuscode,'Something went wrong try after sometime..' Msg
return 
end          
if(@Action = 'Get')      
begin          
	select tba.Id,tp.Program, tb.Branch_Name,ts.SubjectName,tt.Name,          
	(case tba.Year when 1 then 'First Year' when 2 then 'Second Year' when 3 then 'Final Year' end) as Year,          
	CONVERT(varchar,tba.Entrydate,13) as Entrydate from tbl_AssignSubject tba          
	inner join tbl_Branch tb on tba.BranchId = tb.BranchId          
	inner join tbl_SubjectMaster ts on tba.SubjectId = ts.Id          
	inner join tbl_Teacher tt on tba.TeacherId = tt.TeacherId   
	inner join tbl_program tp on tba.ProgramId = tp.Id  
end          
if(@Action = 'GetById')          
begin          
select * from tbl_AssignSubject where Id = @Id  
end          
if(@Action = 'Add' and @Id <> 0)          
begin 
	if not Exists(select 1 from tbl_SubjectMaster where Program = @ProgramId and BranchId = @BranchId and _Year = @Year)
		begin
			select -1 statuscode,'Invalid subject selection!' Msg 
			return
		end
	if Exists(select 1 from tbl_ProgramBranchMapping where ProgramId = @ProgramId and BranchId = @BranchId)
		begin
			update tbl_AssignSubject set BranchId = @BranchId,Year=@Year,SubjectId=@SubjectId,TeacherId=@TeacherId,ModifyDate=GETDATE(),  
			ProgramId=@ProgramId  
			where id = @Id 
			select 1 statuscode,'Record Edit Successfully!' Msg 
			return
		end
	else
		begin
			select -1 statuscode,'Invalid branch selection!' Msg 
			return
		end
	select -1 statuscode,'Something went wrong try after sometime!' Msg 
	return
end      
if(@Action = 'Delete')    
begin    
delete from tbl_AssignSubject where Id = @Id    
select 1 statuscode,'Record Delete Successfully' Msg     
end    
END    
GO
/****** Object:  StoredProcedure [dbo].[Proc_BatchMaster]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_BatchMaster]
@Id int = 0,
@FromYear varchar(100),
@ToYear varchar(100)
AS
BEGIN
	if(@Id = 0)
		begin
			if Exists(select 1 from tbl_BatchMaster where FromYear = @FromYear and ToYear = @ToYear)
			begin
				select -1 Statuscode ,'Batch aleardy exists!' Msg
				return
			end
			insert into  tbl_BatchMaster(FromYear,ToYear,EntryDate) values(@FromYear,@ToYear,GETDATE())
			select 1 Statuscode ,'Batch Saved Successfully!' Msg
			return
		end
	if(@Id <> 0)
		begin
			Update tbl_BatchMaster set FromYear = @FromYear , ToYear=@ToYear, ModifyDate = GETDATE() where Id = @Id
			select 1 Statuscode ,'Batch Updated Successfully!' Msg
		end
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Bind_Subject]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    
    
    
CREATE proc [dbo].[Proc_Bind_Subject]    
@BranchId int,   
@Program int,
@Year varchar(100)
AS    
BEGIN    
select Id,SubjectName from tbl_subjectmaster where BranchId = @BranchId and _Year = @Year and Program = @Program   
END  
GO
/****** Object:  StoredProcedure [dbo].[Proc_Bind_Subjects]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_Bind_Subjects]
@Action varchar(50)
AS
BEGIN
if(@Action = 'Get')
begin
select Id,SubjectName from tbl_subjectmaster
end
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_BindAmount]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_BindAmount]    
@Branch int = 0,    
@Year int = 0,  
@Program int = 0,  
@FeesType int = 0,
@Enrollment varchar(100)=''
as    
BEGIN 
	select SUM(CAST(amount as int)) amount  from tbl_FeesHead where Branch = @Branch And _Year = @Year and Program = @Program
END    
GO
/****** Object:  StoredProcedure [dbo].[Proc_BindSubject]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Select * from tbl_subjectmaster    
-- exec Proc_BindSubject 'Get',1010    
CREATE proc [dbo].[Proc_BindSubject]     
@BranchId int = 0    
AS    
BEGIN 
select Id,SubjectName from tbl_subjectmaster    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_BindTeacher]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_BindTeacher]
@Id int = 0
AS
BEGIN
if(@Id = 0)
begin
select TeacherId,Name from tbl_Teacher
end
END
GO
/****** Object:  StoredProcedure [dbo].[proc_Branch]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_Branch]
@BranchId int =null,      
@BranchName varchar(50) = null,      
@BranchCode varchar(50) = null,   
@TotalSheets int = 0,   
@IsCounseling bit = 0,
@TotalLateralSheet int = 0,
@Action Varchar(50)      
as      
begin      
	if(@Action = 'Add')      
	begin 
		if exists(select 1 from tbl_Branch where Branch_Name = @BranchName)
		begin
			select -1 statuscode,'Branch already exists' Msg     
			return
		end
		insert into tbl_Branch(Branch_Name,Branch_Code,EntryDate,TotalSheet,IsCounseling,AvailableSheet,TotalLateralSheet,AvailabeLateralSheet)
		values(@BranchName,@BranchCode,GETDATE(),@TotalSheets,0,@TotalSheets,@TotalLateralSheet,@TotalLateralSheet)      
		select 1 statuscode,'Branch Add successfully' Msg      
	end      
	if(@Action = 'Get')      
	begin      
		select * from tbl_Branch order by BranchId desc
	end    
	if(@Action = 'GetById')      
	begin      
		select * from tbl_Branch where  BranchId = @BranchId    
	end   
	if(@Action = 'Update')      
	begin      
		update tbl_Branch set Branch_Name=@BranchName,Branch_Code=@BranchCode,ModifyDate=GETDATE(),TotalSheet = @TotalSheets
		,IsCounseling = @IsCounseling where  BranchId = @BranchId  
		select 1 statuscode,'Branch Update successfully' Msg   
	end
	if(@Action = 'Delete')      
	begin      
		delete from tbl_Branch where BranchId = @BranchId
		select 1 statuscode,'Branch Delete successfully' Msg   
	end
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_Branch_Crud]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_Branch_Crud]  
@BranchId int = null ,  
@Branch_Name varchar(100)=null,  
@Branch_Code varchar(100)=null,  
@Action varchar(100)  
as  
begin  
if(@Action = 'Insert')  
begin  
Insert into tbl_Branch(Branch_Name,Branch_Code,EntryDate) values(@Branch_Name,@Branch_Code,GETDATE())  
select 1 StatusCode,'Branch Add Sucssesfull!' Msg  
end  
if(@Action = 'GetData')  
begin  
select BranchId,Branch_Name,Branch_Code,EntryDate from tbl_Branch  
end  
if(@Action = 'GetDataById')  
begin  
select BranchId,Branch_Name,Branch_Code from tbl_Branch where BranchId = @BranchId  
end  
if(@Action = 'Edidrecord')  
begin  
 update tbl_Branch set Branch_Name = @Branch_Name,Branch_Code=@Branch_Code,ModifyDate=GETDATE()
select 1 StatusCode,'Branch Edit Sucssesfull!' Msg  
end  
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_ChangePassword]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_ChangePassword]
@OldPassword nvarchar(150)='',
@Password nvarchar(150)='',
@UserId int=0
As
BEgin
	if(@OldPassword = '')
		begin
			select -1 Statuscode,'Invalid Old Password!' Msg
			return
		end
	if(@Password = '')
		begin
			select -1 Statuscode,'Invalid New Password!' Msg
			return
		end
	if(@UserId = 0)
		begin
			select -1 Statuscode,'Invalid UserId!' Msg
			return
		end
	if Exists(Select 1 from tbl_login where _UId = @UserId and Password = @OldPassword)
		begin
			declare @UserEmail nvarchar(150)
			Update tbl_login set Password = @Password where _UId = @UserId
			select @UserEmail = Email from tbl_Student_Admission where Id = @UserId
			select 1 Statuscode,'Password Changed Successfully!' Msg,@UserId as UserId,@UserEmail Email
			return
		end
	else
		begin
			select -1 Statuscode,'Invalid Password!' Msg
		end
	
	select -1 Statuscode,'Something Went Wromg!' Msg
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_Conversation]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Proc_Conversation 1
CREATE proc [dbo].[Proc_Conversation]
@SenderId int,
@ReciverId int,
@Message nvarchar(max)
AS
BEGIN
	declare @RoleId int = 0
	select @RoleId = RoleId from tbl_Users where Id = @SenderId
	if(@SenderId = @ReciverId)
	begin
		select -1 statuscode,'You can not send message to yourself!' Msg,0 Id
		return
	end
	if(@RoleId <> 1)
	begin
		if(@SenderId = 0)
		begin
			select -1 statuscode,'Invailed SenderId' Msg,0 Id
			return
		end
	end
	if not exists(select 1 from tbl_Users where Id = @SenderId)
	begin
		select -1 statuscode,'Sender not found!' Msg,0 Id
		return
	end
	if not exists(select 1 from tbl_Users where Id = @SenderId and IsActive = 1)
	begin
		select -1 statuscode,'Sender inactive please contact to admin!' Msg,0 Id
		return
	end
	if(@RoleId <> 1)
	begin
		if(@ReciverId = 0)
		begin
			select -1 statuscode,'Invailed ReciverId' Msg,0 Id
			return
		end
	end
	if not exists(select 1 from tbl_Users where Id = @SenderId)
	begin
		select -1 statuscode,'Reciver not found!' Msg,0 Id
		return
	end
	if not exists(select 1 from tbl_Users where Id = @SenderId and IsActive = 1)
	begin
		select -1 statuscode,'Reciver inactive please contact to admin!' Msg,0 Id
		return
	end
	if(@Message = '')
	begin
		select -1 statuscode,'Please write something to send!' Msg,0 Id
		return
	end
	insert into tbl_Conversation(SenderId,ReciverId,[Message],EntryOn)
			values(@SenderId,@ReciverId,@Message,GETDATE())
	select 1 statuscode,'Success!' Msg,SCOPE_IDENTITY() Id
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_DashboardSummay]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_DashboardSummay]
AS        
Begin        
declare @Teacher_Count varchar(50),@Admission_Count varchar(50),@Branch_Count varchar(50),@Registration_Count varchar(50),
@Program int,@TotalStudent int,@TotalTeacher int
  select @Teacher_Count = COUNT(TeacherId) from tbl_teacher(nolock)     
  select @Admission_Count = COUNT(Id) from tbl_Student_Admission(nolock) where CAST(Admissiondate as date) = CAST(GETDATE() as date)  
  select @TotalStudent = COUNT(Id) from tbl_Student_Admission(nolock) 
  select @Branch_Count = COUNT(BranchId) from tbl_branch(nolock) 
  select @Registration_Count = COUNT(Id) from tbl_student(nolock) 
  select @TotalTeacher = COUNT(TeacherId) from tbl_Teacher(nolock)
    
  select @Teacher_Count Teacher_Count,@Admission_Count Admission_Count,@Branch_Count Branch_Count,@Registration_Count Registration_Count    
End 
GO
/****** Object:  StoredProcedure [dbo].[Proc_EnterStudentMarks]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_EnterStudentMarks]
@Program int,
@Branch int,
@Year int,
@EnrollmentNo varchar(20),
@SubjectId int,
@IsAttendance bit,
@Marks bit,
@Note varchar(240),
@ExamId int
AS
BEGIN
	declare @Marks2 int
	if Not Exists(Select 1 from tbl_SubjectMaster where Program = @Program and BranchId = @Branch and _Year = @Year and Id = @SubjectId)
		begin
			Select -1 Statuscode,'Invalid Subject!' Msg
			return
		end
	if Not Exists(Select 1 from tbl_Student_Admission where Program = @Program and Branch = @Branch and _Year = @Year and EntrollmentNo = @EnrollmentNo)
		begin
			Select -1 Statuscode,'Student Not found!' Msg
			return
		end
	Insert into tbl_studentmarks(Program,Branch,Year,EnrollmentNo,SubjectId,IsAttendance,Marks,Note,EntryOn)
	values(@Program,@Branch,@Year,@EnrollmentNo,@SubjectId,@IsAttendance,@Marks,@Note,GETDATE())
	Select 1 Statuscode,'Marks entered successfully' Msg
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_FeesHead]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 --select * from tbl_branch        
CREATE proc [dbo].[Proc_FeesHead]         
@Id int = 0,          
@Branch varchar(100)='',          
@Branch_Code varchar(100)='',          
@Amount varchar(100)='',          
@Year varchar(100)='',        
@EntryBy varchar(100)='' ,  
@Program int =0 ,  
@FeesType varchar(100)='' ,  
@Action varchar(100)        
as          
BEGIN           
if(@Action = 'Add')          
Begin          
if exists(select 1 from tbl_FeesHead where program = @Program and Branch = @Branch and _Year =@Year and FeesType = @FeesType )  
begin  
select -1 statuscode, 'Fees already defined..!' msg  
return  
end  
insert into tbl_FeesHead(Branch,Branch_Code,_Year,EntryBy,EntryDate,Amount,program,FeesType)   
values(@Branch,@Branch_Code,@Year,@EntryBy,GETDATE(),@Amount,@Program,@FeesType)          
select 1 statuscode, 'Fees define successfully' msg          
end          
if(@Action = 'Get')          
Begin          
select tf.Id,tp.Program,tb.Branch_Name,tf._Year ,tft.FeesType,tf.Amount,CONVERT(varchar,tf.EntryDate,106) EntryDate from tbl_FeesHead tf   
inner join tbl_Branch tb on tf.Branch = tb.BranchId  
inner join tbl_Program tp on tf.Program = tp.Id  
inner join tbl_FeesType tft on tf.FeesType = tft.Id  
end       
if(@Action = 'GetById')          
Begin          
select * from tbl_Feeshead where Id = @Id      
end       
if(@Action = 'Edit')          
Begin          
update tbl_Feeshead set Branch = @Branch,Branch_Code = @Branch_Code,_Year=@Year,Amount=@Amount,Program = @Program,FeesType = FeesType,Modifydate = GETDATE() where Id = @Id      
select 1 statuscode, 'Fees Edit successfully' msg    
end      
if(@Action = 'Delete')          
Begin          
delete from tbl_Feeshead where Id = @Id      
select 1 statuscode, 'Fees Delete successfully' msg          
end      
END 
GO
/****** Object:  StoredProcedure [dbo].[Proc_FeesReceipt]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Proc_FeesReceipt 'E202300001'    
    
CREATE proc [dbo].[Proc_FeesReceipt]    
@EnrollmentNo varchar(100)    
AS    
BEgin    
 declare @Program int,@Branch int,@Year int    
      select Top(1) tsa.Name,tf.Enrollment,tsa.Email,tp.Program,tb.Branch_Name,tl.TotalFees,tsa._Year,tl.TotalSubmitedFees,tsa.Mobile,tl.Totalduefees,mode.Mode,tf.FeesReceiptNo,CONVERT(varchar,tl.EntryDate,106) EntryDate from tbl_Feessubmition tf      
   inner join tbl_StudentLedger tl on tf.Enrollment = tl.EnrollmentNo      
   inner join tbl_Student_Admission tsa on tf.Enrollment = tsa.EntrollmentNo      
   inner join tbl_Program tp on tsa.Program = tp.Id      
   inner join tbl_FeesSubmissionModes mode on tf.FeesSubmitionMode = mode.ID      
   inner join tbl_Branch tb on tsa.Branch = tb.BranchId  where tl.EnrollmentNo = @EnrollmentNo and tf.Id = (select Max(Id) from tbl_Feessubmition) group by tsa.Name,tf.Enrollment,tsa.Email,tp.Program,tb.Branch_Name,tl.TotalFees,tl.TotalSubmitedFees,tsa._Year,tsa.Mobile,tl.Totalduefees,mode.Mode,tl.EntryDate,tf.FeesReceiptNo     
     
   select  @Program = Program, @Branch =Branch, @Year = _Year from tbl_Student_Admission where EntrollmentNo = @EnrollmentNo    
    
   select tf.FeesType,tfh.Amount from tbl_FeesType tf    
   inner join tbl_FeesHead tfh on tf.Id =tfh.FeesType where tf.Branch = @Branch and tf.Program = @Program and tf.Year = @Year group by tf.FeesType,tfh.Amount    
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_FeesStructure]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Execute Proc_FeesStructure    
    
CREATE Proc [dbo].[Proc_FeesStructure]    
AS    
BEGIN    
DECLARE @columns NVARCHAR(MAX) = '',@sql NVARCHAR(MAX) = '';    
SELECT     
    @columns += QUOTENAME(FeesType) + ','    
FROM     
    tbl_FeesType    
group BY     
    FeesType;    
SET @columns = LEFT(@columns, LEN(@columns) - 1);  
set @sql = 'SELECT * INTO #Temp FROM   
(    
select tp.Program,tb.Branch_Name Branch,tf._Year Year ,tft.FeesType,tf.Amount,CONVERT(varchar,tf.EntryDate,106) EntryDate from tbl_FeesHead tf       
inner join tbl_Branch tb on tf.Branch = tb.BranchId      
inner join tbl_Program tp on tf.Program = tp.Id      
inner join tbl_FeesType tft on tf.FeesType = tft.Id  
) t     
PIVOT(    
    MAX(Amount)    
    FOR FeesType IN ('+@columns+')    
) AS pivot_table;     
select * from #Temp     
'    
    
execute sp_executesql @sql    
END
GO
/****** Object:  StoredProcedure [dbo].[proc_Feessubmition]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec proc_Feessubmition 0,'E202300000','Hemant','Ramlakhan nag',1010,6,4,1,1,'24000','',0    
CREATE proc [dbo].[proc_Feessubmition]          
@Id int =0,     
@EnrolmentNo varchar(100)='',    
@StudentName varchar(100)='',          
@FatherName varchar(100)='',          
@Branch int,     
@Program int,      
@FeesType int,     
@Mode int,     
@Year int,          
@Amount varchar(100)='',
@TotalAmount decimal(18,2),
@CheckNumber varchar(100)='',    
@TransctionID int = 0    
AS          
Begin  
	declare @IsUpdate int=0,@StudentFees numeric(18,2),@StudentTotalFees numeric(18,2),@TotalBranchFees numeric(18,2),@TotalFees numeric (18,2),@Status int=0,@IsCheck bit=0
		if not Exists(select 1 from tbl_Student_Admission where EntrollmentNo = @EnrolmentNo )    
				begin    
						select -1 Statuscode,'Invalid Student!' Msg    
						return    
				end   
		 if not exists(select 1 from tbl_Student_Admission where Program = @Program and Branch = @Branch and _Year = @Year and EntrollmentNo = @EnrolmentNo )    
				begin    
					select -1 Statuscode,'Invalid Student!' Msg    
					return    
				end 
			select @StudentFees = TotalSubmitedFees, @StudentTotalFees =TotalFees from tbl_StudentLedger where EnrollmentNo = @EnrolmentNo
	if(@StudentTotalFees = @StudentFees)
		begin
			select -1 Statuscode,'Fees already submited!' Msg
			return
		end
	if Exists(select 1 from tbl_Feessubmition where Enrollment = @EnrolmentNo)
		begin
			set @IsCheck = 1	
		end
	select @TotalBranchFees = SUM(CAST(tf.Amount as numeric(18, 2))) from tbl_FeesHead tf where tf.Program = @Program and tf.Branch = @Branch and tf._Year = @Year
	if Exists(select 1 from tbl_StudentLedger where EnrollmentNo = @EnrolmentNo)
		begin
			select Top(1) @TotalAmount = Totalduefees from tbl_StudentLedger where EnrollmentNo = @EnrolmentNo order by ID desc
			select @StudentTotalFees = Totalduefees from tbl_StudentLedger where EnrollmentNo = @EnrolmentNo
			if(@Amount > @StudentTotalFees)
				begin
					select -1 Statuscode,'Wrong amount entered!' Msg
					return
				end
		end
	else
		begin
			if(@Amount > @TotalBranchFees)
				begin
					select -1 Statuscode,'Wrong amount entered!' Msg
					return
				end
		end
  select @Status = ISnull(Fess_Status,0) from tbl_Student_Admission where EntrollmentNo = @EnrolmentNo  
  if(@Status = 2)  
  begin  
 select -1 Statuscode,'Fees Already Submited!' Msg    
 return    
  end  
 if(@EnrolmentNo = '')    
  begin    
   select -1 Statuscode,'Invalid Enrollment Number!' Msg    
   return    
  end       
 if(@Amount = '')    
  begin    
   select -1 Statuscode,'Invalid Amount!' Msg    
   return    
  end   
	declare @IsSuccess int = 0,@SlipeNo varchar(100)=0,@ReceiptNo varchar(100) ='000000000000'  
			if exists(select FeesReceiptNo from tbl_Feessubmition)    
				 begin     
					 select Top(1) @SlipeNo = ISNULL(FeesReceiptNo,0) from tbl_Feessubmition    
					set @ReceiptNo = (CAST(@SlipeNo as numeric) + 1)    
				end    
				else    
						begin    
							set @SlipeNo = (CAST(Year(GETDATE()) as varchar) + '00000000')    
							set @ReceiptNo = @SlipeNo    
						print @ReceiptNo    
				end
  if(@Mode = 1)    
   begin    
   print '1' 
		
		if(@IsCheck = 0)
			begin
				insert into tbl_FeessubmitionSummry(EnrollmentNo,ReceiptNo,Mode,TotalbranchFees,TotalFees,SubmitedFees,DueFees,Entrydate)
				values(@EnrolmentNo,@ReceiptNo,@Mode,@TotalBranchFees,(@TotalBranchFees-@Amount),@Amount,(@TotalBranchFees-@Amount),GETDATE())
			end
		else
			begin
				declare @TotalStudentFees numeric(10,2),@TotalStudentSubmitedFees numeric(10,2)
				select @TotalStudentFees = TotalFees,@TotalStudentSubmitedFees =SubmitedFees from tbl_FeessubmitionSummry where EnrollmentNo = @EnrolmentNo
				Update tbl_FeessubmitionSummry set TotalFees = (@TotalStudentFees-@Amount),SubmitedFees = (@TotalStudentSubmitedFees + @Amount),DueFees=(@TotalStudentFees-@Amount) where EnrollmentNo = @EnrolmentNo
			end

		insert into tbl_Feessubmition(Program,Branch,_Year,FeesType,Amount,StudentName,FatherName,FeesSubmitionMode,Enrollment,EntryDate,FeesReceiptNo)    
    values(@Program,@Branch,@Year,0,@Amount,@StudentName,@FatherName,@Mode,@EnrolmentNo,GETDATE(),@ReceiptNo)

		 insert into tbl_StudentLedger(EnrollmentNo,TotalFees,TotalSubmitedFees,Totalduefees,EntryDate,Mode)
		 values(@EnrolmentNo,@TotalAmount,@Amount,(@TotalAmount-@Amount),GETDATE(),@Mode)

		 select @StudentFees = TotalSubmitedFees, @StudentTotalFees =TotalFees from tbl_StudentLedger where EnrollmentNo = @EnrolmentNo
		 if(@StudentTotalFees = @StudentFees)
		begin
			set @IsUpdate = 1
		end
    set @IsSuccess = 1    
   end    
  if(@Mode = 2)    
   begin    
   print '2'    
   if(@IsCheck = 0)
			begin
				insert into tbl_FeessubmitionSummry(EnrollmentNo,ReceiptNo,Mode,TotalbranchFees,TotalFees,SubmitedFees,DueFees,Entrydate)
				values(@EnrolmentNo,@ReceiptNo,@Mode,@TotalBranchFees,(@TotalBranchFees-@Amount),@Amount,(@TotalBranchFees-@Amount),GETDATE())
			end
		else
			begin
				select @TotalStudentFees = TotalFees,@TotalStudentSubmitedFees =SubmitedFees from tbl_FeessubmitionSummry where EnrollmentNo = @EnrolmentNo
				Update tbl_FeessubmitionSummry set TotalFees = (@TotalStudentFees-@Amount),SubmitedFees = (@TotalStudentSubmitedFees + @Amount),DueFees=(@TotalStudentFees-@Amount) where EnrollmentNo = @EnrolmentNo
			end

    insert into tbl_Feessubmition(Program,Branch,_Year,FeesType,Amount,StudentName,FatherName,FeesSubmitionMode,Enrollment,EntryDate,CheckNumber,FeesReceiptNo)    
    values(@Program,@Branch,@Year,0,@Amount,@StudentName,@FatherName,@Mode,@EnrolmentNo,GETDATE(),@CheckNumber,@ReceiptNo)
	
    insert into tbl_StudentLedger(EnrollmentNo,TotalFees,TotalSubmitedFees,Totalduefees,EntryDate,Mode)
		 values(@EnrolmentNo,@TotalAmount,@Amount,(@TotalAmount-@Amount),GETDATE(),@Mode)

    select @StudentFees = TotalSubmitedFees, @StudentTotalFees =TotalFees from tbl_StudentLedger where EnrollmentNo = @EnrolmentNo
		 if(@StudentTotalFees = @StudentFees)
		begin
			set @IsUpdate = 1
		end
    set @IsSuccess = 1    
   end    
  if(@Mode = 3)    
   begin    
   print '3'  
   if(@IsCheck = 0)
			begin
				insert into tbl_FeessubmitionSummry(EnrollmentNo,ReceiptNo,Mode,TotalbranchFees,TotalFees,SubmitedFees,DueFees,Entrydate)
				values(@EnrolmentNo,@ReceiptNo,@Mode,@TotalBranchFees,(@TotalBranchFees-@Amount),@Amount,(@TotalBranchFees-@Amount),GETDATE())
			end
		else
			begin
				select @TotalStudentFees = TotalFees,@TotalStudentSubmitedFees =SubmitedFees from tbl_FeessubmitionSummry where EnrollmentNo = @EnrolmentNo
				Update tbl_FeessubmitionSummry set TotalFees = (@TotalStudentFees-@Amount),SubmitedFees = (@TotalStudentSubmitedFees + @Amount),DueFees=(@TotalStudentFees-@Amount) where EnrollmentNo = @EnrolmentNo
			end

    insert into tbl_Feessubmition(Program,Branch,_Year,FeesType,Amount,StudentName,FatherName,FeesSubmitionMode,Enrollment,EntryDate,TransctionID,FeesReceiptNo)    
    values(@Program,@Branch,@Year,0,@Amount,@StudentName,@FatherName,@Mode,@EnrolmentNo,GETDATE(),@TransctionID,@ReceiptNo)    
    
	insert into tbl_StudentLedger(EnrollmentNo,TotalFees,TotalSubmitedFees,Totalduefees,EntryDate,Mode)
		 values(@EnrolmentNo,@TotalAmount,@Amount,(@TotalAmount-@Amount),GETDATE(),@Mode)

    select @StudentFees = TotalSubmitedFees, @StudentTotalFees =TotalFees from tbl_StudentLedger where EnrollmentNo = @EnrolmentNo
		 if(@StudentTotalFees = @StudentFees)
		begin
			set @IsUpdate = 1
		end 
    set @IsSuccess = 1    
   end 
   if(@IsUpdate = 1)
	begin
		Update tbl_Student_Admission set Fess_Status = 2 where EntrollmentNo = @EnrolmentNo
	end
  if(@IsSuccess = 1)    
  begin    
   select 1 Statuscode,'Fees Submited Successfully!' Msg,@ReceiptNo ReceiptNo  
   return  
  end   
 if(@IsSuccess = 0)    
 begin   
  select -1 Statuscode,'(RollBack)Something Went Wrong!'+Cast(ERROR_MESSAGE() as varchar)+' Line '+CAST(ERROR_LINE() as varchar) Msg    
  return    
 end    
 select -1 Statuscode,'Something Went Wrong!' Msg    
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_forgetPassword]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_forgetPassword]
@Enrollment varchar(100)='',
@Mobile varchar(20)=''
AS
BEGIN
 if(@Enrollment ='' and @Mobile = '')
	begin
		select -1 Statuscode,'Invaild Enrollment number!' Msg
		return
	end
	if not Exists(select 1 from tbl_Student_Admission where EntrollmentNo = @Enrollment)
		begin
				select -1 Statuscode,'Enrollment not found!' Msg
				return
		end
	if(@Mobile = '')
		begin
			 select 1 Statuscode,'Password sent your registred email!' Msg,tsa.Email,tl.Password from tbl_Student_Admission tsa
			 inner join tbl_login tl on tsa.EntrollmentNo = tl.UserId
			 where tsa.EntrollmentNo = @Enrollment
		end
	else
		begin
			select Top(1) 1 Statuscode,'Success' Msg,tsa.Email,tl.Password from tbl_Student_Admission tsa
			 inner join tbl_login tl on tsa.id = tl._UId
		end
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetAdmissionDetails]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Proc_GetAdmissionDetails '','',''
CREATE Proc [dbo].[Proc_GetAdmissionDetails]
@FromDate varchar(50) = '',
@ToDate varchar(50) = '',
@AdmissionNo varchar(30) = ''
AS
BEGIN
	select	tsa.Id,tsa.Name,tsa.Fname,tsa.Email,tsa.Mobile,tb.Branch_Name,tsa._Year,tsa.Address,tsa.Gender,tsa.Admissiondate,1				Group_Name,tsa.DOB,tsa.AdmissionNo,tsa.Fess_Status,tsa.MotherName, tsa.FatherOccupation,tsa.Religion,tp.Program,tsa.Photo,tsa.FatherAadharCard,tsa.MotherAadharCard,tsa.IncomeCertificate,tsa.AadharCard,tsa.CastCertificate,tsa.Nationalitycertificate,tsa.TransferCertificate,CAST(bm.FromYear as varchar) + ' - ' + CAST(bm.ToYear as varchar) Batch
	from	tbl_Student_Admission tsa  
			inner join tbl_Program tp on tsa.Program = tp.Id
			inner join tbl_BatchMaster bm on bm.Id = tsa.Batch
			inner join tbl_Branch tb on CONVERT(int,tsa.Branch) = tb.BranchId WHERE convert(date,tsa.Admissiondate) >= (Case Isnull(@FromDate,'') when '' then convert(date,tsa.Admissiondate) else @FromDate end) and convert(date,tsa.Admissiondate) <= (Case Isnull(@ToDate,'') when '' then convert(date,tsa.Admissiondate) else @FromDate end) and tsa.AdmissionNo = (Case Isnull(@AdmissionNo,'') when '' then tsa.AdmissionNo else @AdmissionNo end)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetAmount]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_GetAmount]
@ProgramId int=0,
@Branch int=0,
@Year int=0,
@Enrollrmnt varchar(100)=''
AS
BEGIN
	if(@Year <> 0 and @ProgramId <> 0 and @Branch <> 0)
		begin
			declare @TotalFees numeric(18,2) 
			
				if exists(select 1 from tbl_FeessubmitionSummry where EnrollmentNo = @Enrollrmnt)
				begin
					select @TotalFees = DueFees from tbl_FeessubmitionSummry where EnrollmentNo = @Enrollrmnt
				end
				else
				begin
					select @TotalFees = SUM(CAST(tf.Amount as numeric(18, 2))) from tbl_FeesHead tf where tf.Program = @ProgramId and tf.Branch = @Branch and tf._Year = @Year 
				end
			
			select @TotalFees TotalFees, tft.FeesType,tf.Amount from tbl_FeesHead tf inner join tbl_FeesType tft on tf.FeesType = tft.id where tf.Program = @ProgramId and tf.Branch = @Branch and tf._Year = @Year group by tft.FeesType,tf.Amount
		end
	else
	begin
		select Id,FeesType from tbl_FeesType
	end
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetAttendanceByDate]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_GetAttendanceByDate]
@Branch int,
@Program int,
@Year int,
@Date varchar(50)
AS
Begin
	select t1.*,t2.Name from tbl_StudentAttandance t1 
	inner join tbl_Student_Admission t2 on t1.EnrollmentNo = t2.EntrollmentNo
	where t1.Branch = @Branch and t1.Program = @Program and t1.Year = @Year and t1.AttandanceDate = @Date
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetConversation]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Proc_GetConversation 4,1
CREATE proc [dbo].[Proc_GetConversation]
@Loginid int,
@Userid int
AS
Begin
	if(@Userid = 0)
	begin
		select top(10) c.Id,dbo.GetUserName(SenderId) SenderName,dbo.GetUserName(ReciverId) ReciverName,'https://allupi.com/Images/Profile/1.jpg' Pic,SenderId,ReciverId,[Message],IIF(@Loginid = SenderId,1,0) IsSend,IIF(@Loginid = ReciverId,1,0) IsReceive,dbo.CustomDate(EntryOn) EntryOn from tbl_Conversation c 
		left join tbl_Users u on u.Id = c.ReciverId and u.Id = c.SenderId
		Where SenderId = @Loginid or ReciverId = @Loginid
	end
	if(@Userid <> 0)
	begin
		select top(10) c.Id,dbo.GetUserName(SenderId) SenderName,dbo.GetUserName(ReciverId) ReciverName,'https://allupi.com/Images/Profile/1.jpg' Pic,SenderId,ReciverId,[Message],IIF(@Loginid = SenderId,1,0) IsSend,IIF(@Loginid = ReciverId,1,0) IsReceive,dbo.CustomDate(EntryOn) EntryOn from tbl_Conversation c 
		left join tbl_Users u on u.Id = c.ReciverId and u.Id = c.SenderId
		Where SenderId = @Userid and ReciverId = @Loginid

		union

		select top(10) c.Id,dbo.GetUserName(SenderId) SenderName,dbo.GetUserName(ReciverId) ReciverName,'https://allupi.com/Images/Profile/1.jpg' Pic,SenderId,ReciverId,[Message],IIF(@Loginid = SenderId,1,0) IsSend,IIF(@Loginid = ReciverId,1,0) IsReceive,dbo.CustomDate(EntryOn) EntryOn from tbl_Conversation c 
		left join tbl_Users u on u.Id = c.ReciverId and u.Id = c.SenderId
		Where SenderId = @Loginid and ReciverId = @Userid 
	end
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetDetailsByRes]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_GetDetailsByRes]    
@ResNo varchar(50)    
AS    
Begin    
select * from tbl_Registration where RegistrationNo = @ResNo
End  
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetDetailsforResult]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_GetDetailsforResult]
@ExamId int,
@Program int,
@Branch int,
@Year int
AS
BEGIN
	--if Not exists(select 1 from tbl_Exam where Id = @ExamId)
	--	begin
	--		select 1 Statuscode,'Invaid examid' Msg
	--		return
	--	end
	Select Id,SubjectName from tbl_SubjectMaster where Id in(select SubjectId from tbl_ExamDetail where ExamID = @ExamId)
	Select t1.Id,t1.EnrollemntNo,t1.ExamID,t1.Year,t3.Program,t4.Branch_Name as Branch,t2.SubjectId from tbl_AssignExam t1
	INNER JOIN tbl_Program t3 on t1.Program = t3.Id
	INNER JOIN tbl_Branch t4 on t1.Branch = t4.BranchId
	INNER JOIN tbl_ExamDetail t2 on t1.ExamID = t2.ExamID

	Where t1.ExamID =  @ExamId and t1.Program = @Program and t1.Branch = @Branch and Year = @Year
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetRegistration]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[Proc_GetRegistration]
@loginId int = 0,
@FromDate varchar(50)='',
@ToDate varchar(50) ='',
@RegistrationNo varchar(50) = ''
As
begin
	if(@loginId = 1)
	begin
		select mat.DisplayName AdmissionType,ts.Id,ts.Name,ts.Fname,ts.Email,ts.Mobile,ts.Address,ts.Gender,tb.Branch_Name as Branch,ts.Group_Name,ts.RegistrationNo,ts.DOB,ts.Entrydate,ts.FatherOccupation,ts.MotherName,tp.Program from tbl_Registration ts
		inner join tbl_branch tb on ts.Branch = tb.BranchId
		inner join Master_AddmissionType mat on ts.AdmissionType = mat.ID
		inner join tbl_Program tp on ts.Program = tp.Id where ts.RegistrationNo = IIF(@RegistrationNo = '',ts.RegistrationNo,@RegistrationNo) and Cast(ts.Entrydate as date) >= (Case Isnull(@FromDate,'') when '' then ts.Entrydate else CAST(@FromDate as date) end) and CAST(ts.Entrydate as date) <= (Case ISNULL(@ToDate,'') when '' then CAST(ts.Entrydate as date) else @ToDate end)
	end
	else
	begin
		select mat.DisplayName AdmissionType,ts.Id,ts.Name,ts.Fname,ts.Email,ts.Mobile,ts.Address,ts.Gender,tb.Branch_Name as Branch,ts.Group_Name,ts.RegistrationNo,ts.DOB,ts.Entrydate,ts.FatherOccupation,ts.MotherName,tp.Program from tbl_Registration ts
		inner join tbl_branch tb on ts.Branch = tb.BranchId
		inner join Master_AddmissionType mat on ts.AdmissionType = mat.ID
		inner join tbl_Program tp on ts.Program = tp.Id where ts.RegistrationNo = IIF(@RegistrationNo = '',ts.RegistrationNo,@RegistrationNo) and Cast(ts.Entrydate as date) >= (Case Isnull(@FromDate,'') when '' then ts.Entrydate else CAST(@FromDate as date) end) and CAST(ts.Entrydate as date) <= (Case ISNULL(@ToDate,'') when '' then CAST(ts.Entrydate as date) else @ToDate end)
	end
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetRegistrationFees]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_GetRegistrationFees]
@Program int,
@Branch int,
@AdmissionType int
AS
BEGIN
	declare @RegistartionFees numeric(18,2) = 0,@FeesType int = 0,@Year int = 0
	set @Year = case @AdmissionType when 1 then 2 else 1 end
	select @FeesType = ISNULL(Id,0) from tbl_FeesType Where FeesType like '%Registration%' and Program = @Program and Branch = @Branch and [Year] = @Year
	select @RegistartionFees = Isnull(Amount,0) from tbl_FeesHead where Program = @Program and Branch = @Branch and FeesType = @FeesType and [_Year] = @Year
	select @RegistartionFees RegistartionFees
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetStudentdetails]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_GetStudentdetails]      
@UserID int =0      
AS      
Begin      
 if(@UserID = 0)      
  begin      
   select -1 Statuscode,'Invalid User!' Msg      
   return      
  end      
 select 1 as Statuscode,'Success' Msg, tsa.Name,tsa.Fname,tsa.Email,tsa.Mobile,tb.Branch_Name,tsa.Gender,Convert(varchar,tsa.Admissiondate,106) Admissiondate,tsa.DOB,tsa.EntrollmentNo,tsa._Year,tsa.Address      
 from tbl_Student_Admission tsa       
 inner join tbl_Branch tb on tsa.Branch = tb.BranchId where tsa.id = @UserID      
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetstudentForAttendance]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Proc_GetstudentForAttendance 1010,5,1,'',1002
CREATE proc [dbo].[Proc_GetstudentForAttendance]        
@Branch int,        
@Program int,        
@Year int,        
@Date varchar(50)='',  
@examId int= 0   
AS        
BEGIN        
if(@Date > GETDATE())  
  begin      
   select -1 Statuscode, 'Invalid Date!' Msg        
   return      
  end     
  if(@Date = '')    
 begin   
 if Exists(select 1 from tbl_AssignExam where ExamID = @examId)  
  begin  
   select 1 Statuscode,'Success' Msg,t1.EntrollmentNo,t1.Name,ISNULL(t2.IsAssign,0) IsAssign,ISNULL(t2.ExamID,0) ExamID from tbl_Student_Admission t1  
   left join tbl_AssignExam t2 on t1.EntrollmentNo = t2.EnrollemntNo
   where t1.Program = @Program and t1.Branch = @Branch and t1._Year = @Year and (t2.ExamID = @examId or ISNULL(t2.ExamID,0) = 0)  
  end  
 else  
  begin  
   select 1 Statuscode,'Success' Msg,t1.EntrollmentNo,t1.Name,0 IsAssign,ISNULL(t2.ExamID,0) ExamID from tbl_Student_Admission t1  
   left join tbl_AssignExam t2 on t1.EntrollmentNo = t2.EnrollemntNo and ExamID =  @examId 
   where t1.Program = @Program and t1.Branch = @Branch and t1._Year = @Year and ISNULL(t2.ExamID,0) = 0
  end  
 end    
 else    
  begin    
   if exists(select 1 from tbl_StudentAttandance where EnrollmentNo in(select EntrollmentNo from tbl_Student_Admission where Program = @Program and Branch = @Branch and _Year = @Year) and AttandanceDate = @Date)        
  begin        
   Select -1 Statuscode,'Attendance already marked!' Msg        
   return        
  end        
 else        
  begin        
   if Exists(select 1 from tbl_Student_Admission where Program = @Program and Branch = @Branch and _Year = @Year)        
    begin        
    select 1 Statuscode,'Success' Msg,EntrollmentNo,Name,1 IsAssign,0 ExamID from tbl_Student_Admission where Program = @Program and Branch = @Branch and _Year = @Year        
    end        
   else        
    begin        
     Select -1 Statuscode,'Student not found!' Msg        
     return        
    end        
  end        
  end    
END  
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetStudentInfo]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Proc_GetStudentInfo]
@UserID int=0
AS
Begin
	if(@UserID = 0 )
	begin
		select -1 Statuscode,'Invalid Access!' Msg
		return
	end
	declare @Notify varchar(500),@NotifyCount int=0
	select @Notify = Discreption from tbl_Notifications order by Id desc
	select @NotifyCount = COUNT(Id) from tbl_Notifications

	select 1 Statuscode,'Success' Msg,@Notify as Notify,@NotifyCount as NotifyCount
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetSyllabusByID]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_GetSyllabusByID]    
@ID int    
AS    
BEGIN    
 if(@ID = 0 )    
  begin    
   select -1 Statuscode,'Invalid Syllabus!' Msg    
   return    
  end    
 select * from tbl_Syllabus where ID = @ID    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetTeacher]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Proc_GetTeacher]
@Mobile varchar(12) = '',
@Fromdate varchar(20) = '',
@Todate varchar(20) = ''
AS
BEGIN
	if(@Mobile <> '')
	begin
		select * from tbl_Teacher where Mobile = IIF(@Mobile = '',Mobile,@Mobile)
	end
	else
	begin
		select * from tbl_Teacher
		where CAST(EntryDate as date) >= CAST(IIF(@Fromdate = '',EntryDate,@Fromdate) as date) and CAST(EntryDate as date) <= CAST(IIF(@Todate = '',EntryDate,@Todate) as date)
	end
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetUserForChat]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_GetUserForChat]
@Loginid int
AS
BEGIN
select Id,[Name] from tbl_Users where Id <> @Loginid
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetUsers]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_GetUsers]  
@LoginID int,    
@UserName varchar(50)='',    
@Mobile Varchar(12)=''    
AS    
Begin     
if(@LoginID = 3)    
begin    
select -1,'Invalid Access!' Msg    
return    
end    
select tsa.Name,tsa.Id,tl.UserId,tl.Password,tsa.Mobile,tb.Branch_Name,tsa.Gender,tsa.Group_Name,Isnull(tl.IsActive,0) IsActive ,    
tmr.Role,tsa.Email    
from tbl_login tl     
inner join tbl_Student_Admission tsa  on tl.Name = tsa.Name    
inner join tbl_MasterRole tmr on tl.LoginTypeId = tmr.RoleID    
inner join tbl_Branch tb on tsa.Branch = tb.BranchId   
where tsa.Name = (case @UserName when '' then tsa.Name else tsa.Name end) and (tsa.Mobile = case @Mobile when '' then tsa.Mobile else @Mobile end)  
end    
  
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetVideoTransaction]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_GetVideoTransaction]
@UserID int
AS
Begin
	declare @Program int,@Year int,@BranchId int
	select @Program = Program,@BranchId = Branch,@Year = _Year from tbl_Student_Admission where EntrollmentNo = (select EntrollmentNo from tbl_login where _UId = @UserID)
	Select tl.*,ts.SubjectName,ts.SubjectCode from tbl_VideoLectures tl
	inner join tbl_SubjectMaster ts on tl.BranchId = ts.BranchId
	where tl.Program = @Program and tl.Year = @Year and tl.BranchId = @BranchId
end
GO
/****** Object:  StoredProcedure [dbo].[proc_login]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc_login '6390749257',1,'1007983460'
CREATE proc [dbo].[proc_login]                
@UserId varchar(100)='',                
@LoginTypeId int=0,                
@Password varchar(100) =''               
AS                
begin                
	if(@UserId = '')
	begin
		select -1 statuscode,'Invalid Login Cridential..' Msg                
		return
	end
	if(@LoginTypeId = 0)                
	begin
		select -1 statuscode,'Invalid Login Cridential..' Msg, -1 LoginTypeId                
		return                
	end
	if(@Password = '')                
	begin
		select -1 statuscode,'UserId or Password wrong..' Msg, -1 LoginTypeId                
		return                
	end
	if NOT EXISTS(select * from tbl_login where UserName = @UserId and Password = @Password )                
	begin
		select -1 statuscode,'Invalid Login Cridential..' Msg, -1 LoginTypeId            
		return                
	end
	if EXISTS(select * from tbl_login where UserName = @UserId and Password = @Password )                
	begin
		declare @IsActive bit = 0,@LoginId int = 0
		select @LoginId = ISNULL(UserId,0) from tbl_login where UserName = @UserId and Password = @Password
		if Not Exists(select 1 from tbl_Users where Id = @LoginId and RoleId = @LoginTypeId)
		begin
			select -1 statuscode,'Invalid LoginType' Msg, -1 LoginTypeId            
			return                
		end
		If(@LoginId = 0)
		begin
			select -1 statuscode,'Login Failed!' Msg, -1 LoginTypeId           
			return
		end
		select @IsActive = ISNULL(IsActive,0) from tbl_Users where Id = @LoginId          
		if(@IsActive = 0)          
		begin
			select -1 statuscode,'You Inactive By Institute Please Contact To Institute!' Msg, -1 LoginTypeId           
			return
		end
		select 1 statuscode, t2.Name,tl.UserId,t2.RoleId LoginTypeId,tl.Password,t2.Fname,t2.Email,t2.Mobile,t2.Address,t2.DOB,t3.Role,tl.UserName from tbl_login as tl      
		INNER JOIN tbl_Users t2 on tl.UserId = t2.Id  
		INNER JOIN tbl_MasterRole t3 on t2.RoleId = t3.RoleID  
		where t2.Id = @LoginId
	end              
end
GO
/****** Object:  StoredProcedure [dbo].[proc_login_V1]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- proc_login_V1 'Student@.com',1,'Student90'
-- proc_login_V1 'hjghjg',1,'876876'
CREATE proc [dbo].[proc_login_V1]
@UserId varchar(100)=null,
@LoginTypeId int=0,
@Password varchar(100)=null
AS
begin
if(@UserId = '')
begin
select -1 statuscode,'Invalid Login Cridential..' Msg
return
end
if(@LoginTypeId = '')
begin
select -1 statuscode,'Invalid Login Cridential..' Msg
return
end
if(@Password = '')
begin
select -1 statuscode,'UserId or Password wrong..' Msg
return
end
if not EXISTS(select * from tbl_login where UserId = @UserId and LoginTypeId=@LoginTypeId and Password = @Password )
begin
select -1 statuscode,'Invalid Login Cridential..' Msg
return
end
if EXISTS(select * from tbl_login where UserId = @UserId and LoginTypeId=@LoginTypeId and Password = @Password )
begin
select Name,UserId,LoginTypeId,Password from tbl_login where UserId = @UserId and LoginTypeId=@LoginTypeId and Password = @Password
end
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_MarkAttendance]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_MarkAttendance]  
@Enrollemnt varchar(50),  
@Ispresent bit,  
@Isabsent bit,  
@Islate bit,  
@Ishalfday bit,  
@Note varchar(250)='',  
@UserID int,  
@Dates varchar(50),  
@Program int,  
@Branch int,  
@Year int  
AS  
BEGIN  
	if(@Dates > GETDATE())
		begin
			select -1 Statuscode, 'Invalid Date!' Msg  
			return
		end
 if Exists(select 1 from tbl_StudentAttandance where EnrollmentNo = @Enrollemnt and AttandanceDate = @Dates)  
  begin  
   Update tbl_StudentAttandance set IsPresent = @Ispresent,IsAbsent = @Isabsent,IsLate = @Islate,IsHalfDay = @Ishalfday,  
   Note = @Note,ModifyDate = GETDATE(),ModifyBy = @UserID,Program=@Program,Branch=@Branch,Year= @Year where EnrollmentNo = @Enrollemnt and AttandanceDate =  @Dates  
  
   select 1 Statuscode, 'Record saved successfully!' Msg  
  end  
 else  
  begin  
   insert into tbl_StudentAttandance(EnrollmentNo,IsPresent,IsAbsent,IsLate,IsHalfDay,Note,EntryDate,EntryBy,AttandanceDate,Program,Branch,Year)  
   values (@Enrollemnt,@Ispresent,@Isabsent,@Islate,@Ishalfday,@Note,GETDATE(),@UserID,@Dates,@Program,@Branch,@Year)  
  
   select 1 Statuscode, 'Record saved successfully!' Msg  
  end  
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Notification]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_Notification]
@ID int=0,
@Notificationtitle varchar(50)='',
@NotificationDescription varchar(100)='',
@UserID int=0,
@IsStaff int=0, 
@Action varchar(12)
AS
BEGIN
	if(@UserID not in(1,2))
	begin
		select -1 Statuscode,'Invalid Access!' Msg
		return
	end
	if(@Action = 'Add' and @ID =0)
		begin
			insert into tbl_Notifications(Title,Discreption,EntryDate,EntryBy)
			values(@Notificationtitle,@NotificationDescription,Getdate(),@UserID)
			select 1 Statuscode,'Notification Save Successful!' Msg
		end
	if(@Action = 'Add' and @ID <> 0)
		begin
			update tbl_Notifications set Title = @Notificationtitle,Discreption=@NotificationDescription,ModifyDate=Getdate(),ModifyBy= @UserID
			where ID = @ID
			select 1 Statuscode,'Notification Update Successful' Msg
		end
	if(@Action = 'Get' and @ID =0)
		begin
			select ID,Title,Discreption,EntryDate,ISnull(IsStaff,0) as IsStaff from tbl_Notifications order by ID desc
		end
	if(@Action = 'Get' and @ID <> 0)
	begin
		select ID,Title,Discreption,EntryDate,ISnull(IsStaff,0) as IsStaff  from tbl_Notifications where ID = @ID
	end
	if(@Action = 'Delete' and @ID <> 0)
	begin
		delete from tbl_Notifications where ID = @ID
		select 1 Statuscode,'Notification Delete Successful' Msg
	end
	if(@Action = 'UpdateType')
	begin
	declare @ISactive bit = 0;
	if(@IsStaff = 1)
	begin
	select @ISactive = IsStaff from tbl_Notifications where ID = @ID
		if(@ISactive = 0)
			begin
				set @ISactive = 1;
			end
		else
		begin
			set @ISactive = 0;
		end
	end
		update tbl_Notifications set IsStaff = @ISactive where ID = @ID
		select 1 Statuscode,'Notification Type Update Successful' Msg
	end
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_projectReport]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Proc_projectReport 0,'','','','','','','Get'  
CREATE proc [dbo].[Proc_projectReport]   
@ProjectId int =0,    
@StudentName varchar(100)='',    
@Branch varchar(100)='',    
@Year varchar(100)='',    
@Enrollment varchar(100)='',    
@ProjectTitle varchar(100)='',    
@Techonology varchar(100)='',
@Program int =0,
@Action varchar(100)    
As    
BEGIN   
if(@Action = 'Add')  
begin  
if Exists(select StudentName,_Year,Enrollment from tbl_ProjectReport where StudentName=@StudentName and Enrollment = @Enrollment )  
begin  
select -1 statuscode,'Project Already Submited....' msg    
return  
end  
end  
if(@Action = 'Add')  
begin  
if not Exists(select Name,EntrollmentNo from tbl_Student_Admission where EntrollmentNo = @Enrollment and Name = @StudentName)    
begin    
select -1 statuscode,'Please Enter Correct Enrollment Number' msg    
return    
end   
end  
if(@Action = 'Add')    
begin    
insert into tbl_ProjectReport(StudentName,Branch,_Year,Enrollment,ProjectTitle,Techonology,Entrydate,Program)     
values(@StudentName,@Branch,@Year,@Enrollment,@ProjectTitle,@Techonology,GETDATE(),@Program)    
select 1 statuscode,'Project Submit Successfully' msg  
end    
if(@Action = 'Get')    
begin    
select tp.StudentName,tpr.Program,tb.Branch_Name,tp._Year,tp.Enrollment,tp.ProjectTitle,tp.Techonology,tp.Entrydate from tbl_ProjectReport tp
inner join tbl_Program tpr on tp.Program = tpr.Id
inner join tbl_Branch tb on tb.BranchId = tp.Branch

end   
END  
GO
/****** Object:  StoredProcedure [dbo].[Proc_SaveTimeTable]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_SaveTimeTable]
@ID int =0,
@Program int,
@Branch int,
@Year int,
@Subject int,
@Teacher int,
@TimeFrom varchar(50),
@TimeTo varchar(50),
@RoomNo varchar(50),
@Day varchar(50)
AS
BEGIN
	if(@Program = 0)
		begin
			select -1 Statuscode,'Invalid program!' Msg
			return
		end
	if(@Branch = 0)
		begin
			select -1 Statuscode,'Invalid Branch!' Msg
			return
		end
	if(@Year = 0)
		begin
			select -1 Statuscode,'Invalid Year!' Msg
			return
		end
	if(@Subject = 0)
		begin
			select -1 Statuscode,'Invalid subject!' Msg
			return
		end
	if(@Teacher = 0)
		begin
			select -1 Statuscode,'Invalid teacher!' Msg
			return
		end
	if(@TimeFrom = '')
		begin
			select -1 Statuscode,'Invalid FromTime!' Msg
			return
		end
	if(@TimeTo = '')
		begin
			select -1 Statuscode,'Invalid ToTime!' Msg
			return
		end
	if(@RoomNo = '')
		begin
			select -1 Statuscode,'Invalid Room No!' Msg
			return
		end
	if(@Day = '')
		begin
			select -1 Statuscode,'Invalid Day!' Msg
			return
		end
	if Exists(select 1 from tbl_TimeTable where ID = @ID)
		begin
			Update tbl_TimeTable set Program = @Program,Branch = @Branch,
			Year = @Year,Subject = @Subject,Teacher = @Teacher,TimeFrom = @TimeFrom,TimeTo = @TimeTo,
			RoomNo = @RoomNo,ModifyDate = GETDATE(),Day = @Day Where ID = @ID

			select 1 Statuscode,'Time table saved successfully!' Msg
		end
	else
		begin
			INSERT	INTO tbl_TimeTable(Program,Branch,Year,Subject,Teacher,TimeFrom,TimeTo,RoomNo,Day,EntryDate)
			values(@Program,@Branch,@Year,@Subject,@Teacher,@TimeFrom,@TimeTo,@RoomNo,@Day,GETDATE())

			select 1 Statuscode,'Time table saved successfully!' Msg
		end
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_StudentAttandance]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_StudentAttandance]
@EnrollemntNo varchar(50),
@IsPresent bit,
@IsAbsent bit,
@IsLate bit,
@IsHalfday bit,
@Note varchar(250),
@EntryBy int,
@Date varchar(250)
AS
BEGIN
	if not Exists(select 1 from tbl_StudentAttandance where EnrollmentNo = @EnrollemntNo and AttandanceDate = @Date)
		begin
			insert into tbl_StudentAttandance(EnrollmentNo,IsPresent,IsAbsent,IsLate,IsHalfDay,Note,EntryDate,EntryBy,AttandanceDate)
			values(@EnrollemntNo,@IsPresent,@IsAbsent,@IsLate,@IsHalfday,@Note,GETDATE(),@EntryBy,@Date)

			SELECT 1 Statuscode,'Record saved successfully!' Msg
		end
	if Exists(select 1 from tbl_StudentAttandance where EnrollmentNo = @EnrollemntNo and AttandanceDate = @Date)
		begin
			update tbl_StudentAttandance set EnrollmentNo=@EnrollemntNo,IsPresent=@IsPresent,IsAbsent=@IsAbsent,
			IsLate=@IsLate,IsHalfDay=@IsHalfday,Note=@Note,ModifyDate = GETDATE(),ModifyBy=@EntryBy,AttandanceDate = @Date

			SELECT 1 Statuscode,'Record updated successfully!' Msg
		end
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Studentfine]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_Studentfine](          
@Id int=0,       
@EnrollmentNumber varchar(20)='',          
@FineAmount varchar(20)='',          
@FineResion varchar(100)='',          
@Action varchar(50)='',    
@FineStatus int=0    
)          
AS          
BEGIN
if(@Action = 'Save' and @Id=0 )          
begin
if(@EnrollmentNumber ='')
		begin
			select -1 StatusCode,'Please Enter EnrollmentNumber!' Msg
			return
		end
	if(@FineAmount ='0')
		begin
			select -1 StatusCode,'Please Enter Fine Amount!' Msg
			return
		end
	if(@FineResion ='')
		begin
			select -1 StatusCode,'Please Enter Fine Resion!' Msg
			return
		end
if Not Exists(select 1 from tbl_Student_Admission where EntrollmentNo = @EnrollmentNumber)          
begin          
select -1 StatusCode,'Please Enter Valid Student!' Msg          
return          
end          
if exists(select * from tbl_Studentfine where EnrollmentNumber= @EnrollmentNumber and FineResion = @FineResion )        
begin        
select -1 StatusCode,'Fine Already Save!' Msg         
end      
insert into tbl_Studentfine(EnrollmentNumber,FineAmount,FineResion,EntryDate,FineStatus)          
values(@EnrollmentNumber,@FineAmount,@FineResion,Getdate(),-1);          
select 1 StatusCode,'Fine Save SuccessFully!' Msg          
end        
if(@Action = 'Get' and @Id = 0)        
begin        
select * from tbl_Studentfine        
end        
if(@Action ='Get' and @Id>0)        
begin        
select * from tbl_Studentfine  
where Id = @Id        
end        
if(@Action = 'Save' and @Id>0 )          
begin 
if(@EnrollmentNumber ='')
		begin
			select -1 StatusCode,'Please Enter EnrollmentNumber!' Msg
			return
		end
	if(@FineAmount ='')
		begin
			select -1 StatusCode,'Please Enter Fine Amount!' Msg
			return
		end
	if(@FineResion ='')
		begin
			select -1 StatusCode,'Please Enter Fine Resion!' Msg
			return
		end
update tbl_Studentfine set EnrollmentNumber=@EnrollmentNumber,      
FineAmount = @FineAmount,FineResion = @FineResion where Id = @Id      
select 1 StatusCode,'Fine Edit SuccessFully!' Msg        
end      
if(@Action = 'Delete' and @Id>0 )          
begin       
delete from tbl_Studentfine where Id = @Id      
select 1 StatusCode,'Fine Delete SuccessFully!' Msg        
end      
if(@FineStatus <> 0)    
begin    
update tbl_Studentfine set FineStatus = @FineStatus where Id = @Id    
select 1 StatusCode,'Fine Status Update SuccessFully!' Msg   
end    
END    
    
GO
/****** Object:  StoredProcedure [dbo].[Proc_Studentmarks]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Proc_Studentmarks]
@Program int,
@ExamId int,
@Branch int,
@Year int,
@EnrollmentNo varchar(20),
@SubjectId int,
@IsAttendance bit,
@Marks int,
@Note varchar(240)
AS
BEGIN
	declare @MaxMarks int

	if(@Program = 0)
		begin
			Select -1 Statuscode,'Invalid program selection!' Msg
			return
		end
	if(@Branch = 0)
		begin
			Select -1 Statuscode,'Invalid branch selection!' Msg
			return
		end
	if not Exists(select 1 from tbl_Student_Admission where EntrollmentNo = @EnrollmentNo)
		begin
			Select -1 Statuscode,'Invalid Student' Msg
			return
		end
	select @MaxMarks = MaxMarks from tbl_ExamDetail where ExamID = @ExamId and SubjectId = @SubjectId
	if(@Marks > @MaxMarks)
		begin
			Select -1 Statuscode,'Marks should not gratter than maxmarks' Msg
			return
		end
	if(@IsAttendance = 1)
		begin
			set @Marks = 0;
		end
	Insert into tbl_StudentMarks(Program,Branch,Year,EnrollmentNo,SubjectId,IsAttendance,Marks,Note,EntryOn,ExamID)
	values (@Program,@Branch,@Year,@EnrollmentNo,@SubjectId,@IsAttendance,@Marks,@Note,GETDATE(),@ExamId)
	Select 1 Statuscode,'Marks Save Successfully' Msg
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_StudentmarksEntry]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_StudentmarksEntry]        
@Program int,        
@ExamId int,        
@Branch int,        
@Year int,        
@EnrollmentNo varchar(20),        
@SubjectId int,        
@IsAttendance bit = 0,        
@Marks int = 0,        
@Note varchar(240) = '',    
@IsPrectical bit,  
@IsWritten bit ,
@Id int
AS        
BEGIN        
 declare @MaxMarks int        
        
 if(@Program = 0)        
  begin        
   Select -1 Statuscode,'Invalid program selection!' Msg        
   return        
  end        
 if(@Branch = 0)        
  begin        
   Select -1 Statuscode,'Invalid branch selection!' Msg        
   return        
  end        
 if not Exists(select 1 from tbl_Student_Admission where EntrollmentNo = @EnrollmentNo)        
  begin        
   Select -1 Statuscode,'Invalid Student' Msg        
   return        
  end        
 select @MaxMarks = MaxMarks from tbl_ExamDetail where ExamID = @ExamId and SubjectId = @SubjectId        
 if(@Marks > @MaxMarks)        
  begin        
   Select -1 Statuscode,'Marks should not gratter than maxmarks' Msg        
   return        
  end        
 if(@IsAttendance = 1)        
  begin        
   set @Marks = 0;        
  end      
if(@Id = 0)      
 begin      
  Insert into tbl_StudentMarks(Program,Branch,Year,EnrollmentNo,SubjectId,IsAttendance,Marks,Note,EntryOn,ExamID,IsPrectical,IsWritten)        
  values (@Program,@Branch,@Year,@EnrollmentNo,@SubjectId,@IsAttendance,@Marks,@Note,GETDATE(),@ExamId,@IsPrectical,@IsWritten)       
 end      
 else      
  begin      
   Update tbl_StudentMarks set  Program = @Program,Branch = @Branch , Year= @Year,EnrollmentNo =@EnrollmentNo ,SubjectId= @SubjectId,      
   IsAttendance = @IsAttendance,Marks = @Marks , Note = @Note where Id = @Id     
  end      
        
 Select 1 Statuscode,'Marks Save Successfully' Msg        
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_StudentNotification]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_StudentNotification]
@UserID int=0
AS
Begin
	if(@UserID = 0)
	 begin
		select -1,'Invalid Access!' Msg
		return
	 end
	 select Title,Discreption,EntryDate from tbl_Notifications where IsStaff = 0 order by Id desc
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_StudentRegistration]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_StudentRegistration](        
@Id varchar(100)=0,        
@Name varchar(100)=null,        
@Fname varchar(100)=null,        
@Email varchar(50)=null,        
@Mobile varchar(20)=null,
@Branch varchar(50)=null,        
@Address varchar(50)=null,        
@Gender varchar(50)=null,        
@Group_Name varchar(50)=null,        
@RegistrationNo varchar(150)='',
@DOB varchar(50)=null, 
@FatherOccupation varchar(50)=null, 
@MotherName varchar(50)=null,
@Program varchar(50)=null,
@FromDate varchar(50)=null,
@ToDate varchar(50)=null,
@AdmissionType int = 0,
@TXNMode int = 0,
@UTR varchar(30) = '',
@CheckNo varchar(30) = '',
@Amount numeric(10,2) = 0,
@loginId int = 0,
@Action varchar(50)        
)        
as        
begin        
	if(@Action = 'Add')        
	begin
		Declare @IsOpen bit = 0,@StartReg varchar(50),@EndReg varchar(50), @Registration varchar(150)
		SELECT @IsOpen = ISNULL(IsOpen,0),@StartReg = Startdate,@EndReg = Enddate FROM tbl_RegistrationMaster Where Program = @Program and Branch = @Branch and AdmissionType = @AdmissionType
		if(@IsOpen = 0)
		begin
			select -1 statuscode,'Registation not available for selected criteria!' Msg;
			return;
		end
		if((CAST(@StartReg as date)) > (CAST(GETDATE() as date)))
		begin
			select -1 statuscode,'Registation will be start at date : '+Cast(@EndReg as varchar) Msg;
			return;
		end
		if((CAST(@EndReg as date)) < (CAST(GETDATE() as date)))
		begin
			select -1 statuscode,'Registation will be closed : '+Cast(@EndReg as varchar) Msg;
			return;
		end
		-- Generate RegistrationNumber
		select top(1) @Registration = RegistrationNo from tbl_Registration order by Id desc    
		If(isnull(@Registration,0)=0)    
		begin    
			set @RegistrationNo = (CONVERT(varchar,Year(getdate()))+'00000000')    
		end    
		else    
		begin    
			set @RegistrationNo = (Convert(bigint,@Registration)+1)    
		end    
		if EXISTS(select * from tbl_Registration where Mobile = @Mobile)        
		begin        
			select @RegistrationNo = RegistrationNo from tbl_Registration where Name =@Name and Fname = @Fname      
			select -1 statuscode,'Registration Already Done. Your Registration Number Is : ' + cast(@RegistrationNo as varchar) Msg     
			return;        
		end	
		declare @TotalBranchFees numeric(18,2)
		select @TotalBranchFees = SUM(CAST(Amount as numeric(10,2))) from tbl_FeesHead Where Branch = @Branch
		insert into tbl_Registration(Name,Fname,Email,Mobile,Branch,Address,Gender,Group_Name,RegistrationNo,DOB,Entrydate,FatherOccupation,MotherName,Program,AdmissionType,EntryBy)       
		values(@Name,@Fname,@Email,@Mobile,@Branch,@Address,@Gender,@Group_Name,@RegistrationNo,@DOB,GETDATE(),@FatherOccupation,@MotherName,@Program,@AdmissionType,@loginId)  
		
		insert into tbl_Feessubmition(Amount,FeesSubmitionMode,EntryDate,FeesType,CheckNumber,TransctionID,FeesReceiptNo,StudentId,ReffId)
		values(@Amount,@TXNMode,GETDATE(),16,@CheckNo,@UTR,NEWID(),0,@RegistrationNo)

		insert into tbl_FeesHistory(TotalFees,Fees,DueFees,ReffId,EntryDate)
		values(@TotalBranchFees,@Amount,(@TotalBranchFees - @Amount),@RegistrationNo,GETDATE())

		select 1 StatusCode,'Registration Successfully!' Msg ,@RegistrationNo as RegistrationNo      
	end
	if(@Action = 'GetById')
	begin        
		select Id,Name,Fname,Email,Mobile,Branch,Address,Gender,Group_Name,DOB,FatherOccupation,MotherName,ISNULL(Program,0) Program,AdmissionType from tbl_Registration where Id = @Id        
	end        
	if(@Action = 'Update')        
	begin  
		if(@Id = 0)
		begin
			select -1 StatusCode,'Registration Not Found!' Msg   
		end
		update tbl_Registration set Name=@Name,Fname=@Fname,Email=@Email,Mobile=@Mobile,Branch=@Branch,Address=@Address,Gender=@Gender,Group_Name=@Group_Name,DOB=@DOB,FatherOccupation = @FatherOccupation,MotherName = @MotherName, Program = @Program where Id = @Id
		select 1 StatusCode,'Registration Updated Successfully!' Msg        
	end        
	if(@Action = 'Delete')        
	begin        
		delete from tbl_Registration where Id = @Id        
		select 1 StatusCode,'Registration Cancel !!' Msg        
	end        
end 
GO
/****** Object:  StoredProcedure [dbo].[Proc_StudentResult]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Proc_StudentResult '1',5,1010,1,'E202300000'   
CREATE proc [dbo].[Proc_StudentResult]    
@ExamId int,    
@ProgramId int,    
@BranchId int,    
@year int,  
@Enrollment varchar(50) =''  
AS    
BEGIN    
 Select t9.Program,t10.Branch_Name,t3.Address,t3.Fname,t3.Mobile,t1.Exam,t3.Name,t3.EntrollmentNo,t8.SubjectName,ISNULL(t4.MinMarks,t8.PassingMarks) MinMarks    
  ,t4.MaxMarks,t5.Marks as ObtainedMarks,(t5.Marks * 100 / t4.MaxMarks) as Precent,(dbo.fn_getgradebyexam((t5.Marks * 100 / t4.MaxMarks),t1.Id)) Grade,    
  IIF(t5.Marks > t4.MinMarks,'P','F') as [Status]    
  from tbl_AssignExam t2  
  Inner join tbl_Student_Admission t3 on t2.EnrollemntNo = t3.EntrollmentNo
  INNER JOIN tbl_Exam t1 on t1.Id = t2.ExamID and t2.EnrollemntNo = t3.EntrollmentNo
  INNER JOIN tbl_ExamDetail t4 on t1.Id = t4.ExamID    
  INNER JOIN tbl_StudentMarks t5 on t1.Id = t5.ExamID and t2.EnrollemntNo = t5.EnrollmentNo    
  INNER JOIN tbl_SubjectMaster t8 on t4.SubjectId = t8.Id  
  INNER JOIN tbl_Program t9 on t5.Program = t9.Id  
  INNER JOIN tbl_Branch t10 on t5.Branch = t10.BranchId  
  where t1.Id = @ExamId and t5.Program = @ProgramId and t5.Branch = @BranchId and t5.IsWritten = 1    
  and t5.Year = @year and t2.EnrollemntNo = IIF(@Enrollment = '',t2.EnrollemntNo,@Enrollment)
  
  Select t9.Program,t10.Branch_Name,t3.Address,t3.Fname,t3.Mobile,t1.Exam,t3.Name,t3.EntrollmentNo,t8.SubjectName,ISNULL(t4.MinMarks,t8.PassingMarks) MinMarks    
  ,t4.MaxMarks,t5.Marks as ObtainedMarks,(t5.Marks * 100 / t4.MaxMarks) as Precent,(dbo.fn_getgradebyexam((t5.Marks * 100 / t4.MaxMarks),t1.Id)) Grade,    
  IIF(t5.Marks > t4.MinMarks,'P','F') as [Status]    
  from tbl_AssignExam t2  
  Inner join tbl_Student_Admission t3 on t2.EnrollemntNo = t3.EntrollmentNo
  INNER JOIN tbl_Exam t1 on t1.Id = t2.ExamID and t2.EnrollemntNo = t3.EntrollmentNo
  INNER JOIN tbl_ExamDetail t4 on t1.Id = t4.ExamID    
  INNER JOIN tbl_StudentMarks t5 on t1.Id = t5.ExamID and t2.EnrollemntNo = t5.EnrollmentNo    
  INNER JOIN tbl_SubjectMaster t8 on t4.SubjectId = t8.Id  
  INNER JOIN tbl_Program t9 on t5.Program = t9.Id  
  INNER JOIN tbl_Branch t10 on t5.Branch = t10.BranchId  
  where t1.Id = @ExamId and t5.Program = @ProgramId and t5.Branch = @BranchId and t5.IsPrectical = 1
  and t5.Year = @year and t2.EnrollemntNo = IIF(@Enrollment = '',t2.EnrollemntNo,@Enrollment)
END 
GO
/****** Object:  StoredProcedure [dbo].[Proc_studentSyllabus]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Proc_studentSyllabus 1
CREATE Proc [dbo].[Proc_studentSyllabus]
@LoginID int
AS
BEGIN
	if(ISNULL(@LoginID,0) = 0)
	begin
		select -1 Statuscode,'Invalid Student!' Msg
		return
	end
	if not Exists(select 1 from tbl_Student_Admission where Id = @LoginID)
	begin
		select -1 Statuscode,'Student Not Found!' Msg
		return
	end
	declare @Branch int,@Subject int,@Year int
	select @Branch = Branch,@Year=_Year from tbl_Student_Admission where Id = @LoginID
	select @Subject = Id from tbl_SubjectMaster where BranchId = @Branch and _Year = @Year

	
	select 1 Statuscode ,'Success!' Msg, tsm.SubjectName,tb.Branch_Name,ts._Path,tsm.SubjectCode from tbl_SubjectMaster tsm
	left join tbl_Syllabus ts on ts.SubjectID = tsm.Id
	left join tbl_Branch tb on ts.BranchID = tb.BranchId
	where ts.BranchID = @Branch and ts._Year = @Year
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_SubjectMaster]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- select * from tbl_SubjectMaster                  
CREATE proc [dbo].[Proc_SubjectMaster](                      
@Id int=0,
@Branch varchar(100)='',
@_Year varchar(100)='',          
@SubjectName varchar(100)='',          
@SubjectCode varchar(100)='',          
@SubjectType varchar(100)='',          
@TheoryMarks varchar(100)='',          
@PracticalMarks varchar(100)='',          
@BranchId int = 0,          
@Program int = 0,          
@PassingMarks int=0,          
@IsWritten bit=0,        
@IsPrectical bit=0,    
@PecticalPassingMarks int=0,    
@Action varchar(100)    
)          
AS                      
Begin               
declare @Subject varchar(100),@BId int              
 if(@Action = 'Add')                      
  begin           
   if exists (select 1 from tbl_SubjectMaster where BranchId = @BranchId and SubjectName = @SubjectName and _Year = @_Year)            
    begin            
     select -1 statuscode,'Subject Already Save' msg  
     return            
    end          
   insert into tbl_SubjectMaster(_Year,SubjectName,SubjectCode,SubjectType,TheoryMarks,PracticalMarks,EntryDate,BranchId,Program,PassingMarks,Iswritten,IsPrectical,PrecticalPassingMarks)           
   values(@_Year,@SubjectName,@SubjectCode,  
    @SubjectType,@TheoryMarks,@PracticalMarks,GETDATE(),@BranchId,@Program,@PassingMarks,1,@IsPrectical,@PecticalPassingMarks)    
   select 1 statuscode,'Subject Save Successfully' Msg                    
end  
if(@Action = 'Get')                  
begin                  
select ISnull(ts.IsPrectical,0) IsPrectical,Isnull(ts.Iswritten,0) Iswritten,ts.Id,tb.Branch_Name as Branch ,tp.Program,ts._Year,ts.SubjectName,ts.SubjectCode,ts.SubjectType,ts.TheoryMarks,ts.PracticalMarks,Convert(varchar,ts.EntryDate,106) EntryDate,ts.PassingMarks,ts.PrecticalPassingMarks from tbl_SubjectMaster  ts          
inner join tbl_Program tp on ts.Program = tp.Id
inner join tbl_Branch tb on ts.BranchId = tb.BranchId
where ts.Program = (Case @Program when 0 then ts.Program else @Program end) and 
ts.BranchId = (Case @BranchId when 0 then ts.BranchId else @BranchId end) and
ts._Year = (Case @_Year when '' then ts._Year else @_Year end) order by ts.Id desc
end                 
if(@Action = 'GetById')                  
begin     
select * from tbl_SubjectMaster  where Id = @Id                 
end                 
if(@Action = 'Edit')                      
begin                
update tbl_SubjectMaster set Program = @Program,BranchId = @BranchId,_Year=@_Year,SubjectName=@SubjectName,SubjectCode=@SubjectCode,SubjectType=@SubjectType,TheoryMarks=@TheoryMarks,              
PracticalMarks=@PracticalMarks,Modifydate = GETDATE(), PassingMarks=@PassingMarks,IsPrectical = @IsPrectical,PrecticalPassingMarks= @PecticalPassingMarks where Id = @Id              
select 1 statuscode,'Subject Edit Successfully' Msg                    
end               
if(@Action = 'Delete')              
begin              
delete from tbl_SubjectMaster where Id = @Id              
select 1 statuscode,'Subject Delete Successfully' Msg               
end           
 if(@Action = 'IsPrectical')        
  begin        
   Update tbl_SubjectMaster set IsPrectical = @IsPrectical where Id = @Id        
   select 1 statuscode,'Subject Status Updated Successfully' Msg        
   return        
  end        
 if(@Action = 'IsWritten')        
  begin        
   Update tbl_SubjectMaster set Iswritten = @IsWritten where Id = @Id        
   select 1 statuscode,'Subject Status Updated Successfully' Msg        
   return        
  end        
end 
GO
/****** Object:  StoredProcedure [dbo].[Proc_Syllabus]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_Syllabus]    
@ID int =0,    
@LoginID int=0,    
@Branch int=0,
@Program int=0,
@Subject int=0,    
@Year int=0,    
@Path varchar(150)=''    
AS    
BEGIN    
 if(@Path =''and @ID = 0)    
  begin    
   select tp.Program,tsy.ID,tb.Branch_Name,tsm.SubjectName,CONVERT(varchar,tsy.EntryDate,106) as EntryDate,tsy._Path,tsy._Year from tbl_Syllabus as tsy     
   inner join tbl_Branch as tb on tsy.BranchID = tb.BranchId 
   inner join tbl_Program tp on tp.Id = tsy.Program
   inner join tbl_SubjectMaster as tsm on tsy.SubjectID = tsm.Id where tsy.BranchID = case when @Branch = 0 then tsy.BranchID when @Branch<>0 then @Branch end  order by ID desc   
   return    
  end    
 if(@ID = 0)    
 begin    
 if(@LoginID in(3,0))    
 begin    
  select -1 Statuscode,'Invalid Access!' Msg    
  return    
 end    
 if(@Path = '')    
 begin    
  select -1 Statuscode,'Please Select File!' Msg    
  return    
 end    
  insert into tbl_Syllabus(BranchID,SubjectID,_Year,_Path,EntryDate,EntryBy,Program)    
  values(@Branch,@Subject,@Year,@Path,GETDate(),@LoginID,@Program)    
  select 1 Statuscode,'Syllabus Upload Successfully!' Msg    
 end    
 if(@Path =''and @ID <> 0)    
  begin    
  declare @Filepath varchar(200)    
     select @Filepath = _Path from tbl_Syllabus where ID = @ID    
   delete from tbl_Syllabus where ID = @ID    
   select @Filepath Filepath    
   return    
  end    
END    
GO
/****** Object:  StoredProcedure [dbo].[Proc_Teacher]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Proc_Teacher]        
@TeacherId int=0,        
@name varchar(100)=null,        
@Fname varchar(100)=null,        
@Email varchar(100)=null,        
@Mobile varchar(100)=null,
@DOB varchar(100)=null,        
@Address varchar(100)=null,        
@salary varchar(100)=null,          
@Action varchar(100)=null,      
@HighSchoolMarks numeric(10,2)=null,      
@HighSchool_P numeric(10,2)=null,      
@HighSchool_B varchar(50)=null,      
@InterMarks numeric(10,2)=null,      
@Inter_P int=null,      
@Inter_B varchar(50)=null,      
@UGTitle varchar(50)=null,      
@UGMarks numeric(10,2)=null,      
@UG_Collage varchar(50)=null,      
@PGTitle varchar(50)=null,      
@PGMarks numeric(10,2)=null,      
@PG_Collage varchar(50)=null,      
@PreviousCollage varchar(50)=null,      
@Subjects varchar(50)=null,      
@Experiance int=null,
@Gender varchar(1) = ''
as        
BEGIN        
declare @UserId int,@Password nvarchar(50)           
if(@Action = 'Add')        
Begin      
 if(@TeacherId = 0)    
 begin    
  if Exists(Select 1 from tbl_Teacher where Mobile = @Mobile)        
  begin        
   select -1 StatusCode,'Teacher already exists!' Msg
   return        
  end
  insert into tbl_Users([Name],Fname,Email,Mobile,[Address],Gender,DOB,MotherName,Religion,RoleId,IsActive,ReffId)
  values(@name,@Fname,@Email,@Mobile,@Address,@Gender,@DOB,'','',2,1,0);
  set @UserId = SCOPE_IDENTITY();

  insert into tbl_Teacher(Name,Fname,Email,Mobile,Address,salary,DOB,Entrydate,HighSchoolMarks,HighSchool_P,      
  HighSchool_B,InterMarks,Inter_P,Inter_B,UGTitle,UGMarks,UG_Collage,PGTitle,PGMarks,PG_Collage,PreviousCollage,Subjects,Experiance,UserId)      
  values(@Name,@Fname,@Email,@Mobile,@Address,@salary,@DOB,GETDATE(),@HighSchoolMarks,@HighSchool_P,@HighSchool_B,      
  @InterMarks,@Inter_P,@Inter_B,@UGTitle,@UGMarks,@UG_Collage,@PGTitle,@PGMarks,@PG_Collage,@PreviousCollage,@Subjects,@Experiance,@UserId)
  SELECT @Password = (Cast((select TeacherId from tbl_Teacher Where Mobile = @Mobile) as varchar)+CAST(ROUND(RAND()*1000000, 0) AS VARCHAR))
  insert into tbl_login(UserId,UserName,[Password]) values(@UserId,@Mobile,@Password);
  select 1 StatusCode,'Teacher Add Successfully!' Msg    
 end      
 else    
 begin    
  update tbl_Teacher set Name=@Name,Fname=@Fname,Email=@Email,Mobile=@Mobile,Address=@Address,salary=@salary,DOB=@DOB,ModifyDate=getdate() where TeacherId = @TeacherId        
  SELECT 1 StatusCode,'Teacher Edit Successfully!' Msg    
 end    
end       
if(@Action = 'GetById')        
 begin        
  select tt.*,tl.Password from tbl_Teacher tt  
  INNER JOIN tbl_login tl on tt.TeacherId = tl.UserId where tt.TeacherId = @TeacherId        
 end           
if(@Action = 'Delete')        
 begin        
  delete from tbl_Teacher where TeacherId = @TeacherId        
  delete from tbl_login where UserId = @TeacherId and ID <> 1    
  select 1 StatusCode,'Teacher Delete Successfully!' Msg        
 end        
END 
GO
/****** Object:  StoredProcedure [dbo].[Proc_Teacher_Crud]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
        
CREATE Proc [dbo].[Proc_Teacher_Crud]        
@TeacherId int=0,        
@name varchar(100)=null,        
@Fname varchar(100)=null,        
@Email varchar(100)=null,        
@Mobile varchar(100)=null,        
@DOB varchar(100)=null,        
@Address varchar(100)=null,        
@salary varchar(100)=null,          
@Action varchar(100)=null,      
@HighSchoolMarks numeric(10,2)=null,      
@HighSchool_P numeric(10,2)=null,      
@HighSchool_B varchar(50)=null,      
@InterMarks numeric(10,2)=null,      
@Inter_P int=null,      
@Inter_B varchar(50)=null,      
@UGTitle varchar(50)=null,      
@UGMarks numeric(10,2)=null,      
@UG_Collage varchar(50)=null,      
@PGTitle varchar(50)=null,      
@PGMarks numeric(10,2)=null,      
@PG_Collage varchar(50)=null,      
@PreviousCollage varchar(50)=null,      
@Subjects varchar(50)=null,      
@Experiance int=null      
as        
BEGIN        
declare @UserId int,@Password nvarchar(50)           
if(@Action = 'Add')        
Begin      
 if(@TeacherId = 0)    
 begin    
  if Exists(Select 1 from tbl_Teacher where Mobile = @Mobile)        
  begin        
   select -1 StatusCode,'Teacher already exists!' Msg        
   return        
  end     
  insert into tbl_Teacher(Name,Fname,Email,Mobile,Address,salary,DOB,Entrydate,HighSchoolMarks,HighSchool_P,      
  HighSchool_B,InterMarks,Inter_P,Inter_B,UGTitle,UGMarks,UG_Collage,PGTitle,PGMarks,PG_Collage,PreviousCollage,Subjects,Experiance,RoleId)      
  values(@Name,@Fname,@Email,@Mobile,@Address,@salary,@DOB,GETDATE(),@HighSchoolMarks,@HighSchool_P,@HighSchool_B,      
  @InterMarks,@Inter_P,@Inter_B,@UGTitle,@UGMarks,@UG_Collage,@PGTitle,@PGMarks,@PG_Collage,@PreviousCollage,@Subjects,@Experiance,2)       
      
  SELECT @UserId = TeacherId from tbl_Teacher Where Mobile = @Mobile      
  SELECT @Password = (Cast((select TeacherId from tbl_Teacher Where Mobile = @Mobile) as varchar)+CAST(ROUND(RAND()*1000000, 0) AS VARCHAR))       
        
  insert into tbl_login(Name,UserId,LoginTypeId,Password,EntryDate,_UId,IsActive)        
  values(@Name,@Mobile,2,@Password,GETDATE(),@UserId,1)      
        
  select 1 StatusCode,'Teacher Add Successfully!' Msg    
 end      
 else    
 begin    
  update tbl_Teacher set Name=@Name,Fname=@Fname,Email=@Email,Mobile=@Mobile,Address=@Address,salary=@salary,DOB=@DOB,ModifyDate=getdate() where TeacherId = @TeacherId        
  SELECT 1 StatusCode,'Teacher Edit Successfully!' Msg    
 end    
end        
if(@Action = 'Get')        
 begin        
  select * from tbl_Teacher    
 end        
if(@Action = 'GetById')        
 begin        
  select tt.*,tl.Password from tbl_Teacher tt  
  INNER JOIN tbl_login tl on tt.TeacherId = tl._UId where tt.TeacherId = @TeacherId        
 end           
if(@Action = 'Delete')        
 begin        
  delete from tbl_Teacher where TeacherId = @TeacherId        
  delete from tbl_login where _UId = @TeacherId and ID <> 1    
  select 1 StatusCode,'Teacher Delete Successfully!' Msg        
 end        
END 
GO
/****** Object:  StoredProcedure [dbo].[Proc_TimeTableReport]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_TimeTableReport]
@Program int,
@Branch int,
@Year int
AS
BEGIN
	print 'Monday' 
	select t4.SubjectName,t5.Name as Teacher,t1.TimeFrom+' - '+t1.TimeTo as Time,t1.RoomNo from tbl_TimeTable t1
	inner join tbl_SubjectMaster t4 on t1.Subject = t4.Id
	inner join tbl_Teacher t5 on t1.Teacher = t5.TeacherId where t1.Program = @Program and t1.Branch = @Branch and t1.Year =@Year and Day = 'Monday'

	print 'Tuesday' 
	select t4.SubjectName,t5.Name as Teacher,t1.TimeFrom+' - '+t1.TimeTo as Time,t1.RoomNo from tbl_TimeTable t1
	inner join tbl_SubjectMaster t4 on t1.Subject = t4.Id
	inner join tbl_Teacher t5 on t1.Teacher = t5.TeacherId where t1.Program = @Program and t1.Branch = @Branch and t1.Year =@Year and Day = 'Tuesday'

	print 'Wednesday' 
	select t4.SubjectName,t5.Name as Teacher,t1.TimeFrom+' - '+t1.TimeTo as Time,t1.RoomNo from tbl_TimeTable t1
	inner join tbl_SubjectMaster t4 on t1.Subject = t4.Id
	inner join tbl_Teacher t5 on t1.Teacher = t5.TeacherId where t1.Program = @Program and t1.Branch = @Branch and t1.Year =@Year and Day = 'Wednesday'

	print 'Thuesday' 
	select t4.SubjectName,t5.Name as Teacher,t1.TimeFrom+' - '+t1.TimeTo as Time,t1.RoomNo from tbl_TimeTable t1
	inner join tbl_SubjectMaster t4 on t1.Subject = t4.Id
	inner join tbl_Teacher t5 on t1.Teacher = t5.TeacherId where t1.Program = @Program and t1.Branch = @Branch and t1.Year =@Year and Day = 'Thursday'

	print 'Friday' 
	select t4.SubjectName,t5.Name as Teacher,t1.TimeFrom+' - '+t1.TimeTo as Time,t1.RoomNo from tbl_TimeTable t1
	inner join tbl_SubjectMaster t4 on t1.Subject = t4.Id
	inner join tbl_Teacher t5 on t1.Teacher = t5.TeacherId where t1.Program = @Program and t1.Branch = @Branch and t1.Year =@Year and Day = 'Friday'

	print 'Suterday' 
	select t4.SubjectName,t5.Name as Teacher,t1.TimeFrom+' - '+t1.TimeTo as Time,t1.RoomNo from tbl_TimeTable t1
	inner join tbl_SubjectMaster t4 on t1.Subject = t4.Id
	inner join tbl_Teacher t5 on t1.Teacher = t5.TeacherId where t1.Program = @Program and t1.Branch = @Branch and t1.Year =@Year and Day = 'Suterday'

	print 'Sunday' 
	select t4.SubjectName,t5.Name as Teacher,t1.TimeFrom+' - '+t1.TimeTo as Time,t1.RoomNo from tbl_TimeTable t1
	inner join tbl_SubjectMaster t4 on t1.Subject = t4.Id
	inner join tbl_Teacher t5 on t1.Teacher = t5.TeacherId where t1.Program = @Program and t1.Branch = @Branch and t1.Year =@Year and Day = 'Sunday'
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TransactionHistory]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_TransactionHistory]
@EnrollmentNo varchar(100) = ''
AS    
BEGIN    
 if(@EnrollmentNo = '')    
  begin    
   return
  end    
 else    
  begin    
      select tsa.Name,tf.ReffId,tp.Program,tb.Branch_Name,tl.TotalFees,tl.TotalSubmitedFees,tl.Totalduefees,CONVERT(varchar,tl.EntryDate,106) EntryDate from tbl_Feessubmition tf    
   inner join tbl_StudentLedger tl on tf.StudentId = tl.StudentId    
   inner join tbl_Student_Admission tsa on tf.ReffId = tsa.AdmissionNo    
   inner join tbl_Program tp on tsa.Program = tp.Id    
   inner join tbl_FeesSubmissionModes mode on tf.FeesSubmitionMode = mode.ID    
   inner join tbl_Branch tb on tsa.Branch = tb.BranchId  group by tsa.Name,tf.ReffId,tp.Program,tb.Branch_Name,tl.TotalFees,tl.TotalSubmitedFees,tl.Totalduefees,tl.EntryDate  
  end    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_UpadteSyllabus]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_UpadteSyllabus]      
@ID int,   
@LoginID int,   
@Branch int,      
@Subject int,      
@Year int ,
@Program int,
@Path nvarchar(100)=''  
AS      
BEGIN      
 if(@Id = 0)      
  begin      
   select -1 Statuscode,'Invalid Syllabus!' Msg      
   return       
  end      
 if(@Branch = 0)      
  begin      
   select -1 Statuscode,'Invalid Branch Selection!' Msg      
   return       
  end      
 if(@Subject = 0)      
  begin      
   select -1 Statuscode,'Invalid Subject Selection!' Msg      
   return       
  end      
 if(@Path = '')      
  begin      
   select -1 Statuscode,'Invalid File Path!' Msg      
   return       
  end      
 if(@Year = 0)      
  begin      
   select -1 Statuscode,'Invalid Year Selection!' Msg      
   return       
  end      
 Update tbl_Syllabus set BranchID = @Branch,SubjectID = @Subject,_Year = @Year,_Path = @Path,ModifyBy=@LoginID, ModifyDate=GETDATE(),Program=@Program where ID = @Id      
 select 1 Statuscode,'Syllabus Updated Successfully!' Msg      
END
GO
/****** Object:  StoredProcedure [dbo].[ProcAddAndUpdateProgram]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[ProcAddAndUpdateProgram]  
@Id int,  
@Program varchar(50),  
@ProgramType varchar(50),  
@ProgramDuration varchar(50),  
@LoginID int  
AS  
BEGIN  
 if(@Id = 0)  
  begin
	if Exists(select 1 from tbl_Program Where Program = @Program and ProgramType = @ProgramType and ProgramDuration = @ProgramDuration)
	begin
		select 1 Statuscode,'Program already exists!' Msg  
		return  
	end
   insert into tbl_Program(Program,ProgramType,ProgramDuration,Entryby,EntryDate)  
   values(@Program,@ProgramType,@ProgramDuration,@LoginID,GETDATE())  
   select 1 Statuscode,'Program Saved Successfully!' Msg  
   return  
  end  
 if(@Id <> 0)  
  begin  
   Update tbl_Program set Program = @Program,ProgramType=@ProgramType,ProgramDuration=@ProgramDuration,ModifyBy= @LoginID,  
   ModifyDate = GetDate()  where Id = @Id
   select 1 Statuscode,'Program Updated Successfully!' Msg  
   return  
  end  
END  
  
GO
/****** Object:  StoredProcedure [dbo].[ProcAddAndUpdateVideoUrl]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ProcAddAndUpdateVideoUrl]    
@Id int = 0,    
@BranchId int,    
@Subject int,    
@Year int,    
@LoginID int, 
@VideoUrl varchar(100),
@Program int
AS    
BEGIN    
 if(@LoginID = 0)    
  begin    
   select -1 Statuscode,'Invalid Access!' Msg    
   return    
  end    
 if(@Id = 0)    
  begin    
   insert into tbl_VideoLectures(BranchId,SubjectId,[Year],EntryBy,EntryDate,VideoUrl,Program)    
   values(@BranchId,@Subject,@Year,@LoginID,GETDATE(),@VideoUrl,@Program)    
   select 1 Statuscode,'Record Saved Successfully!' Msg    
  end    
 if(@Id <> 0)    
  begin    
   update tbl_VideoLectures set BranchId = @BranchId , SubjectId = @Subject,[Year] = @Year    
   ,ModifyBy = @LoginID, ModifyDate = GETDATE(),VideoUrl =@VideoUrl,Program = @Program where Id = @Id    
   select 1 Statuscode,'Record Updated Successfully!' Msg     
  end    
END
GO
/****** Object:  StoredProcedure [dbo].[ProcFeesReport]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ProcFeesReport]  
@FromDate varchar(100)='',  
@ToDate varchar(100)='',  
@EnrollmentNo varchar(100)=''  
AS  
BEgin  
select tsa.Name,tsa.Fname,tp.Program,tsa._Year,tsa.Email,tsa.Fess_Status,tsa.Address,tb.Branch_Name Branch,tsa.EntrollmentNo,tfss.ReceiptNo,mode.Mode,tfss.TotalbranchFees,tfss.TotalFees,tfss.SubmitedFees,tfss.DueFees,CONVERT(varchar,tfss.Entrydate,106) Entrydate   
from tbl_FeessubmitionSummry tfss  
inner join tbl_Student_Admission tsa on tfss.EnrollmentNo = tsa.EntrollmentNo  
inner join tbl_Program tp on tsa.Program = tp.Id  
inner join tbl_Branch tb on tsa.Branch = tb.BranchId  
inner join tbl_FeesSubmissionModes mode on tfss.Mode = mode.ID  
where tfss.Entrydate >= (Case @FromDate when '' then tfss.Entrydate else @FromDate end)   
and tfss.Entrydate <= (Case @ToDate when '' then tfss.Entrydate else @ToDate end)  
and tfss.EnrollmentNo = (case @EnrollmentNo when '' then tfss.EnrollmentNo else @EnrollmentNo end)  
end  
  
GO
/****** Object:  StoredProcedure [dbo].[ProcGetFeesType]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ProcGetFeesType]  
@Id int =0  
AS  
BEGIN  
 if(@Id =0)  
  begin  
   select tf.Id,tp.Program,tb.Branch_Name as Branch,tf.Year,tf.FeesType,CONVERT(varchar,tf.EntryDate,106) EntryDate from tbl_FeesType tf   
   inner join tbl_Program tp on tf.Program = tp.Id  
   inner join tbl_Branch tb on tf.Branch = tb.BranchId order by tf.Id desc  
  end  
 else  
 begin  
  select Id,Program ProgramID,Branch BranchID,Year,FeesType,EntryDate from tbl_FeesType where Id = @Id  
 end  
END
GO
/****** Object:  StoredProcedure [dbo].[ProcGetStudentAssignment]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[ProcGetStudentAssignment]
@StudentID int=0
AS
BEGIN
	if(@StudentID = 0)
		begin
			select -1 statuscode,'Failed' Msg
			return
		end
	declare @BranchID int,@Year int
	select @BranchID = Branch , @Year=_Year from tbl_Student_Admission where Id = @StudentID
	select 1 statuscode,tsm.SubjectName,ta.Assignment from tbl_Assignment ta 
	inner join tbl_SubjectMaster tsm on ta.SubjectId = tsm.Id
	where ta.BranchId = @BranchID and ta.Year = @Year
END
GO
/****** Object:  StoredProcedure [dbo].[ProcGetStudentresult]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ProcGetStudentresult]
@BranchId int,
@ProgramID int,
@Year int,
@Subject int,
@exam int
AS
BEGIN
Select ISNULL(t2.Id,0) Id,ISNULL(t2.IsPrectical,0) IsPrectical,ISNULL(t2.Marks,0) Marks,ISNULL(t2.Note,'') Note,ISNULL(t2.IsAttendance,0) IsAttendance,t3.Name,t3.EntrollmentNo EnrollemntNo from tbl_AssignExam t1
							left Join tbl_StudentMarks t2 on t1.EnrollemntNo = t2.EnrollmentNo and t2.ExamID = t1.ExamID
                            Inner join tbl_Student_Admission t3 on t1.EnrollemntNo = t3.EntrollmentNo
							where (ISNULL(t2.Program,0)= @ProgramID or ISNULL(t2.Program,0) = ISNULL(t2.Program,0))
							and (ISNULL(t2.Branch,0) = @BranchId or ISNULL(t2.Branch,0) = ISNULL(t2.Branch,0))
							and (ISNULL(t2.Year,0) = @Year or ISNULL(t2.Year,0) = ISNULL(t2.Year,0))
							and (ISNULL(t2.SubjectId ,0)= @Subject or ISNULL(t2.SubjectId ,0) =  ISNULL(t2.SubjectId ,0))
							and ISNULL(t1.ExamID,0)=@exam and (t2.IsWritten = 1 or ISNULL(t2.IsWritten,0) = 0) and ISNULL(t2.IsPrectical,0) = 0

Select ISNULL(t2.Id,0) Id,ISNULL(t2.IsPrectical,0) IsPrectical,ISNULL(t2.Marks,0) Marks,ISNULL(t2.Note,'') Note,ISNULL(t2.IsAttendance,0) IsAttendance,t3.Name,t3.EntrollmentNo EnrollemntNo from tbl_AssignExam t1
							left Join tbl_StudentMarks t2 on t1.EnrollemntNo = t2.EnrollmentNo and t2.ExamID = t1.ExamID
                            Inner join tbl_Student_Admission t3 on t1.EnrollemntNo = t3.EntrollmentNo
							where (ISNULL(t2.Program,0)= @ProgramID or ISNULL(t2.Program,0) = ISNULL(t2.Program,0))
							and (ISNULL(t2.Branch,0) = @BranchId or ISNULL(t2.Branch,0) = ISNULL(t2.Branch,0))
							and (ISNULL(t2.Year,0) = @Year or ISNULL(t2.Year,0) = ISNULL(t2.Year,0))
							and (ISNULL(t2.SubjectId ,0)= @Subject or ISNULL(t2.SubjectId ,0) =  ISNULL(t2.SubjectId ,0))
							and ISNULL(t1.ExamID,0)=@exam and (t2.IsPrectical = 1 or ISNULL(t2.IsPrectical,0) = 0)
							and ISNULL(t2.IsWritten,0) = 0
END
GO
/****** Object:  StoredProcedure [dbo].[ProcGetVideoUrl]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[ProcGetVideoUrl]  
@Id int  
AS  
BEGIN  
 if(@Id = 0)  
  begin  
   select tp.Program,tvl.Id, tb.Branch_Name,tsm.SubjectName,Convert(varchar,tvl.EntryDate,106) as EntryDate,tvl.Year,Isnull(tvl.VideoUrl,'') as VideoUrl from tbl_VideoLectures tvl  
   inner join tbl_Program tp on tvl.Program = tp.Id
   inner join tbl_Branch tb on tvl.BranchId = tb.BranchId  
   inner join tbl_SubjectMaster tsm on tvl.SubjectId = tsm.Id  
  end  
 else  
 begin  
  select * from tbl_VideoLectures where Id = @Id  
 end  
end
GO
/****** Object:  StoredProcedure [dbo].[ProcSaveAndUpdateFeesType]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ProcSaveAndUpdateFeesType]  
@Id int,  
@BranchId int,  
@Program int,  
@FeesType varchar(150),  
@Year int  
AS  
BEGIN  
 if(@Id = 0)  
  begin  
  if Exists(select 1 from tbl_FeesType where Program = @Program and Branch = @BranchId and FeesType = @FeesType and Year = @Year)
	begin
		select -1 Statuscode,'Fees Type aleady Exists!' Msg  
		return
	end
   insert into tbl_FeesType(Program,Branch,Year,FeesType,EntryDate)  
   values(@Program,@BranchId,@Year,@FeesType,GETDATE())  
   select 1 Statuscode,'Fees Type Saved Successfully!' Msg  
   return  
  end
 else  
 begin  
  Update tbl_FeesType set Program=@Program , Branch=@BranchId,Year=@Year,FeesType=@FeesType,ModifyDate = GETDATE()   
  where Id = @Id  
  select 1 Statuscode,'Fees Type Updated Successfully!' Msg  
 end  
END
GO
/****** Object:  StoredProcedure [dbo].[ProcSaveProgramBranchMapping]    Script Date: 17-10-2023 16:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[ProcSaveProgramBranchMapping]    
@Id int =0,    
@ProgramId int,    
@BranchId int,    
@LoginID int,
@Batch int
AS    
BEGIN    
 if(@Id = 0)    
  begin
  if exists(select 1 from tbl_ProgramBranchMapping where ProgramId = @ProgramId and BranchId = @BranchId)
  begin
	select -1 Statuscode,'Branch already Mapped!' Msg    
   return 
  end
   insert into tbl_ProgramBranchMapping(ProgramId,BranchId,EntryDate,EntryBy,BatchId) values(@ProgramId,@BranchId,GETDATE(),@LoginID,@Batch)    
   select 1 Statuscode,'Branch Mapped Successfully!' Msg    
   return    
  end    
  if(@Id <> 0)    
  begin    
   Update tbl_ProgramBranchMapping set ProgramId = @ProgramId,BranchId = @BranchId , Modifydate = Getdate(),ModifyBy = @LoginID,
   BatchId = @Batch
   where Id = @Id  
   select 1 Statuscode,'Record Updated Successfully!' Msg    
   return    
  end    
END 
GO
