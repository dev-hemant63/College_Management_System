USE [DB_CollageManagement]
GO
/****** Object:  StoredProcedure [dbo].[proc_Admission]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_Admission](                  
@Id varchar(100)=null,                  
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
@EntrolmentNo varchar(150) = null,   
@DOB varchar(50)=null,      
@FromDate varchar(50)=null,      
@ToDate varchar(50)=null,      
@MotherName varchar(50)=null,    
@FatherOccupation varchar(50)=null,    
@Program int=0,    
@Religion varchar(50)=null,    
@Action varchar(50)    
)                  
as                  
begin               
--generat Enrollmentnumber           
declare @Entrolment varchar(150)          
          
if(@Action = 'Admission')                  
begin                  
if not EXISTS(select * from tbl_student where Entrolment_No = @RegistrationNo)                  
begin                  
select -1 statuscode,'Invalid Registration Number..' Msg                  
return;                  
end                  
if EXISTS(select * from tbl_Student_Admission where Name =@Name and Fname = @Fname)                  
begin                  
select -1 statuscode,'Already Registared' Msg                  
return;                  
end            
select top(1) @Entrolment = EntrollmentNo from tbl_Student_Admission          
if(Isnull(@Entrolment,0)=0)          
begin          
set @EntrolmentNo = ('E'+CONVERT(varchar,Year(getdate()))+'00000')          
end          
else          
begin          
set  @EntrolmentNo = Convert(varchar,(Convert(int,@Entrolment)+1))          
end          
if EXISTS(select * from tbl_student where Entrolment_No = @RegistrationNo and Name =@Name and Fname = @Fname)                  
begin             
declare @UID int            
insert into tbl_Student_Admission(Name,Fname,Email,Mobile,Branch,Address,Gender,Group_Name,DOB,EntrollmentNo,Admissiondate,_Year,Program,MotherName,FatherOccupation,Religion,Fess_Status)              
values(@Name,@Fname,@Email,@Mobile,@Branch,@Address,@Gender,@Group_Name,@DOB,@EntrolmentNo,GETDATE(),@Year,@Program,@MotherName,@FatherOccupation,@Religion,1)     
select @UID = Id from tbl_Student_Admission where Name = @Name and Fname = @Fname     
insert into tbl_login(Name,UserId,Password,LoginTypeId,EntryDate,_UId) values(@Name,@EntrolmentNo,@Mobile,'3',GETDATE(),@UID)                  
select 1 StatusCode,'Admission Successfully!' Msg                  
end                  
end                  
if(@Action = 'AdmissionReport')                  
begin                  
select tsa.Id,tsa.Name,tsa.Fname,tsa.Email,tsa.Mobile,tb.Branch_Name,tsa._Year,tsa.Address,tsa.Gender,tsa.Admissiondate,tsa.Group_Name,tsa.DOB,tsa.EntrollmentNo,tsa.Fess_Status,tsa.MotherName, tsa.FatherOccupation,tsa.Religion,tp.Program     
from tbl_Student_Admission tsa  
inner join tbl_Program tp on tsa.Program = tp.Id
inner join tbl_Branch tb on CONVERT(int,tsa.Branch) = tb.BranchId WHERE tsa.Id NOT IN(1) and  convert(date,tsa.Admissiondate) >= (Case Isnull(@FromDate,'') when '' then convert(date,tsa.Admissiondate) else @FromDate end) and convert(date,tsa.Admissiondate) <= (Case Isnull(@FromDate,'') when '' then convert(date,tsa.Admissiondate) else @FromDate end) and tsa.EntrollmentNo = (Case Isnull(@EntrolmentNo,'') when '' then tsa.EntrollmentNo else @EntrolmentNo end)
end                  
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_Assignment]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
     
      
CREATE proc [dbo].[Proc_Assignment]      
@Id int=0,      
@BranchId int=0,      
@Year int=0,      
@SubjectId int=0,      
@Assignment varchar(100)='',      
@Action varchar(100)=''      
AS      
Begin      
if(@Action = 'Add' and @Id = 0)      
begin
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
insert into tbl_Assignment(BranchId,Year,SubjectId,Assignment,EntryDate) values(@BranchId,@Year,@SubjectId,@Assignment,GETDATE())      
select 1 statuscode,'Assignment Save Successfully..' Msg      
end      
if(@Action = 'Get' and @Id = 0)      
begin      
select tb.Branch_Name,ta.Id,      
(case ta.Year       
when 1 then 'First Year'      
when 2 then 'Seccond Year'      
when 3 then 'Third Year'      
end ) Year,      
tas.SubjectName,ta.Assignment,CONVERT(varchar,ta.EntryDate,106) EntryDate from tbl_Assignment ta      
inner join tbl_Branch tb on ta.BranchId = tb.BranchId      
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
tas.SubjectName,ta.Assignment,CONVERT(varchar,ta.EntryDate,106) EntryDate from tbl_Assignment ta      
inner join tbl_Branch tb on ta.BranchId = tb.BranchId      
inner join tbl_SubjectMaster tas on ta.SubjectId = tas.Id where ta.Id = @Id      
end      
if(@Action = 'Add' and @Id <> 0)      
begin      
update tbl_Assignment set BranchId = @BranchId,Year = @Year, SubjectId = @SubjectId,Assignment = @Assignment,Modifydate = GETDATE() where Id = @Id      
select 1 statuscode,'Assignment Update Successfully..' Msg      
end     
if(@Action = 'Delete' and @Id <> 0)      
begin      
delete from tbl_Assignment where id = @Id  
select 1 statuscode,'Assignment Delete Successfully..' Msg      
end  
end   
GO
/****** Object:  StoredProcedure [dbo].[Proc_AssignSubject]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from tbl_assignsubject      
      
CREATE proc [dbo].[Proc_AssignSubject]      
@Id int=0,      
@BranchId int = '',
@Year int = '',
@SubjectId int='',
@TeacherId int='',      
@Action varchar(20)      
AS      
BEGIN      
if(@Action = 'Add' and @Id = 0)      
begin      
insert into tbl_AssignSubject(BranchId,Year,SubjectId,TeacherId,Entrydate) values(@BranchId,@Year,@SubjectId,@TeacherId,GETDATE())      
select 1 statuscode,'Subject Assign Successfully' Msg      
end      
if(@Action = 'Get')  
begin      
select tba.Id, tb.Branch_Name,ts.SubjectName,tt.Name,      
(case tba.Year when 1 then 'First Year' when 2 then 'Second Year' when 3 then 'Final Year' end) as Year,      
CONVERT(varchar,tba.Entrydate,13) as Entrydate from tbl_AssignSubject tba      
inner join tbl_Branch tb on tba.BranchId = tb.BranchId      
inner join tbl_SubjectMaster ts on tba.SubjectId = ts.Id      
inner join tbl_Teacher tt on tba.TeacherId = tt.TeacherId      
end      
if(@Action = 'GetById')      
begin      
select tba.Id,tba.BranchId,tba.SubjectId,tba.TeacherId,tba.Year, tb.Branch_Name,ts.SubjectName,tt.Name,      
(case tba.Year when 1 then 'First Year' when 2 then 'Second Year' when 3 then 'Final Year' end) as _Year      
from tbl_AssignSubject tba      
inner join tbl_Branch tb on tba.BranchId = tb.BranchId      
inner join tbl_SubjectMaster ts on tba.SubjectId = ts.Id      
inner join tbl_Teacher tt on tba.TeacherId = tt.TeacherId where tba.Id = @Id
end      
if(@Action = 'Add' and @Id <> 0)      
begin       
update tbl_AssignSubject set BranchId = @BranchId,Year=@Year,SubjectId=@SubjectId,TeacherId=@TeacherId,ModifyDate=GETDATE() where id = @Id      
select 1 statuscode,'Edit Successfully' Msg      
end  
if(@Action = 'Delete')
begin
delete from tbl_AssignSubject where Id = @Id
select 1 statuscode,'Delete Successfully' Msg 
end
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_BatchMaster]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_Bind_Subject]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
  
  
CREATE proc [dbo].[Proc_Bind_Subject]  
@BranchId int,  
@Year varchar(100)  
AS  
BEGIN  
select Id,SubjectName from tbl_subjectmaster where BranchId = @BranchId and _Year = @Year  
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Bind_Subjects]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_BindAmount]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Proc_BindAmount]
@Branch varchar(100),
@Year varchar(100)
as
BEGIN 
select amount from tbl_FeesHead where Branch = @Branch and _YEAR = @Year
END

GO
/****** Object:  StoredProcedure [dbo].[Proc_BindSubject]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_BindTeacher]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[proc_Branch]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_Branch]
@BranchId int =null,      
@BranchName varchar(50) = null,      
@BranchCode varchar(50) = null,      
@Action Varchar(50)      
as      
begin      
if(@Action = 'Add')      
begin      
insert into tbl_Branch(Branch_Name,Branch_Code,EntryDate) values(@BranchName,@BranchCode,GETDATE())      
select 1 statuscode,'Branch Add successfully' Msg      
end      
if(@Action = 'Get')      
begin      
select BranchId,Branch_Name,Branch_Code,EntryDate from tbl_Branch      
end    
if(@Action = 'GetById')      
begin      
select BranchId,Branch_Name,Branch_Code from tbl_Branch where  BranchId = @BranchId    
end   
if(@Action = 'Update')      
begin      
update tbl_Branch set Branch_Name=@BranchName,Branch_Code=@BranchCode,ModifyDate=GETDATE() where  BranchId = @BranchId  
select 1 statuscode,'Branch Update successfully' Msg   
end
if(@Action = 'Delete')      
begin      
delete from tbl_Branch where BranchId = @BranchId
select 1 statuscode,'Branch Delete successfully' Msg   
end
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_Branch_Crud]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_ChangePassword]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_DashboardSummay]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_DashboardSummay]    
@Action varchar(100)    
AS    
Begin    
	if(@Action = 'Get')
	Begin    
		select COUNT(TeacherId) Teacher_Count from tbl_teacher    
		select COUNT(Id) Admission_Count from tbl_Student_Admission where Id not in(1)   
		select COUNT(BranchId) Branch_Count from tbl_branch    
		select COUNT(Id) Registration_Count from tbl_student    
	end
End  
GO
/****** Object:  StoredProcedure [dbo].[Proc_FeesHead]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_FeesStructure]    Script Date: 27-01-2023 19:03:30 ******/
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
select tf.Id,tp.Program,tb.Branch_Name,tf._Year ,tft.FeesType,tf.Amount,CONVERT(varchar,tf.EntryDate,106) EntryDate from tbl_FeesHead tf   
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
/****** Object:  StoredProcedure [dbo].[proc_Feessubmition]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_Feessubmition]    
@Id int ='',    
@StudentName varchar(100)='',    
@FatherName varchar(100)='',    
@Branch varchar(100)='',    
@Year varchar(100)='',    
@Amount varchar(100)='',    
@FeesSubmitionMode varchar(100)='',  
@Action varchar(100)  
AS    
Begin    
if(@Action = 'Add')    
begin    
declare @StudentId int  
insert into tbl_Feessubmition(StudentName,FatherName,Branch,_Year,Amount,FeesSubmitionMode,EntryDate) values(@StudentName,@FatherName,@Branch,@Year,@Amount,@FeesSubmitionMode,GETDATE())    
select @StudentId = Id from tbl_Student_Admission where Name=@StudentName and FName =@FatherName  
update tbl_Student_Admission set Fess_Status='Success' where Id = @StudentId  
select 1 statuscode,'Feesm submition successfull..' msg    
end   
if(@Action = 'Get')  
begin   
select tf.Id,tf.StudentName,tf.FatherName,tb.Branch_Name Branch,tf.Amount,tf.FeesSubmitionMode,Convert(varchar,tf.EntryDate,106) EntryDate,
tf._year
from tbl_Feessubmition tf
inner join tbl_branch tb on tf.Branch = tb.BranchId
end  
end  
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetDetailsByRes]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_GetDetailsByRes]    
@ResNo varchar(50)    
AS    
Begin    
select * from tbl_student where Entrolment_No = @ResNo    
End  
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetStudentdetails]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_GetStudentInfo]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_GetSyllabusByID]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_GetUsers]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[proc_login]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
            
-- proc_login 'Student@.com',1,'Student90'            
-- proc_login 'Admin@.com',1,'6787'            
CREATE proc [dbo].[proc_login]            
@UserId varchar(100)='',            
@LoginTypeId int='',            
@Password varchar(100) =''           
AS            
begin            
if(@UserId = '')            
begin            
select -1 statuscode,'Invalid Login Cridential..' Msg            
return            
end            
if(@LoginTypeId = '')            
begin            
select -1 statuscode,'Invalid Login Cridential..' Msg, -1 LoginTypeId            
return            
end            
if(@Password = '')            
begin            
select -1 statuscode,'UserId or Password wrong..' Msg, -1 LoginTypeId            
return            
end              
if not EXISTS(select * from tbl_login where UserId = @UserId and LoginTypeId=@LoginTypeId and Password = @Password )            
begin            
select -1 statuscode,'Invalid Login Cridential..' Msg, -1 LoginTypeId        
return            
end          
if EXISTS(select * from tbl_login where UserId = @UserId and LoginTypeId=@LoginTypeId and Password = @Password )            
begin           
declare @IsActive bit = 0      
select @IsActive = ISNULL(IsActive,0) from tbl_login where UserId = @UserId and LoginTypeId=@LoginTypeId and Password = @Password      
if(@IsActive = 0)      
begin      
select -1 statuscode,'You DeActive By Institute Please Contact To Institute!' Msg, -1 LoginTypeId       
return      
end      
select 1 statuscode, tl.Name,tl.UserId,tl.LoginTypeId,tl.Password,tl._UId from tbl_login as tl  
inner join tbl_Student_Admission tsa on tl._UId = tsa.Id  
where UserId = @UserId and LoginTypeId=@LoginTypeId and Password = @Password            
--select 1 statuscode,'Login successfull..' Msg       
end          
end   
GO
/****** Object:  StoredProcedure [dbo].[proc_login_V1]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_MarkAttendance]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
              
-- Proc_MarkAttendance 0,1010,1005,'2','10/16/2022',0,0
    
CREATE proc [dbo].[Proc_MarkAttendance]              
@Id int= 0,              
@Branch varchar(100)='',        
@SubjectId int=0,        
@Year varchar(100)='' ,          
@Date varchar(100)='',    
@IsAttand int=0,  
@IsAbsent int=0,
@Action varchar(20)=''  
AS              
Begin           
declare @SId int,@BId int,@_Year int        
if Exists(select StudentId from tbl_StudentAttandance where BranchId = @Branch and Year= @Year and SubjectId=@SubjectId and FORMAT(Entrydate,'d','fr-ca') = @Date)        
Begin       
return        
end        
else        
begin        
if exists(select StudentId from tbl_StudentAttandance where BranchId = @Branch and Year= @Year and SubjectId=@SubjectId and FORMAT(Entrydate,'d','fr-ca') = @Date)    
begin    
print 90    
return    
end    
if(@Id = 0 and @Branch<>'' and @Year<>'' and @SubjectId<>0)              
Begin              
select Id,Name,Fname,Branch,Gender,Group_Name,EntrollmentNo,_year from tbl_Student_Admission     
where Branch = @Branch and _Year = @Year    
print 1    
end     
end        
if(@Id <> 0)          
begin          
insert into tbl_StudentAttandance(StudentId,BranchId,Year,IsAttand,IsAbsent,subjectId,Entrydate) values(@Id,@Branch,@Year,@IsAttand,@IsAbsent,@SubjectId,CONVERT(varchar,@Date,23))          
select 1 statuscode,'Mark Attandance Successfully' Msg          
end      
if(@Id=0)      
begin      
select tbsa.Name,tbs.SubjectName,tb.Branch_Name,ISNULL(tsa.IsAttand,0) IsAttand,Convert(varchar,tsa.Entrydate,106) Entrydate,tsa.Year _Year from tbl_StudentAttandance tsa       
inner join tbl_Student_Admission tbsa on tsa.StudentId = tbsa.Id   
inner join tbl_Branch tb on tbsa.Branch = tb.BranchId      
inner join tbl_SubjectMaster tbs on tsa.SubjectId = tbs.Id         
print 2    
end   
if(@Action='FilterData')  
begin  
select tbsa.Name,tbs.SubjectName,tb.Branch_Name,tsa.IsAttand,Convert(varchar,tsa.Entrydate,106) Entrydate,tsa.Year _Year from tbl_StudentAttandance tsa       
inner join tbl_Student_Admission tbsa on tsa.StudentId = tbsa.Id   
inner join tbl_Branch tb on tsa.BranchId = tb.BranchId      
inner join tbl_SubjectMaster tbs on tsa.SubjectId = tbs.Id where tsa.BranchId = @Branch and tsa.Year = @Year and CONVERT(varchar,tsa.Entrydate,23) = CONVERT(varchar,@Date,23)
end  
print 3    
End 
GO
/****** Object:  StoredProcedure [dbo].[Proc_Notification]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_projectReport]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[proc_student_crud]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_student_crud](        
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
@Action varchar(50)        
)        
as        
begin        
if(@Action = 'Add')        
begin        
-- Generate RegistrationNumber    
declare @Registration varchar(150)    
select top(1) @Registration = Entrolment_No from tbl_student order by Id desc    
If(isnull(@Registration,0)=0)    
begin    
set @RegistrationNo = (CONVERT(varchar,Year(getdate()))+'0000')    
end    
else    
begin    
set @RegistrationNo = (Convert(int,@Registration)+1)    
end    
if EXISTS(select * from tbl_student where Mobile = @Mobile)        
begin        
select @RegistrationNo = Entrolment_No from tbl_student where Name =@Name and Fname = @Fname      
select -1 statuscode,'Student Registration Already Done!' Msg, @RegistrationNo as RegistrationNo      
return;        
end        
insert into tbl_student(Name,Fname,Email,Mobile,Branch,Address,Gender,Group_Name,Entrolment_No,DOB,Entrydate,FatherOccupation,MotherName,Program)       
values(@Name,@Fname,@Email,@Mobile,@Branch,@Address,@Gender,@Group_Name,@RegistrationNo,@DOB,GETDATE(),@FatherOccupation,@MotherName,@Program)       
select 1 StatusCode,'Student Registration Successfully!' Msg ,@RegistrationNo as RegistrationNo      
end        
if(@Action = 'Get')        
begin        
select ts.Id,ts.Name,ts.Fname,ts.Email,ts.Mobile,ts.Address,ts.Gender,tb.Branch_Name as Branch,ts.Group_Name,ts.Entrolment_No,ts.DOB,ts.Entrydate,ts.FatherOccupation,ts.MotherName,tp.Program from tbl_student ts
left join tbl_branch tb on ts.Branch = tb.BranchId
left join tbl_Program tp on ts.Program = tp.Id where ts.Entrolment_No = (Case @RegistrationNo when '' then ts.Entrolment_No else @RegistrationNo end) and ts.Entrydate >= (Case Isnull(@FromDate,'') when '' then ts.Entrydate else ISNULL(@FromDate,'') end) and ts.Entrydate <= (Case ISNULL(@ToDate,'') when '' then ts.Entrydate else @ToDate end)
end        
if(@Action = 'GetById')
begin        
select Id,Name,Fname,Email,Mobile,Branch,Address,Gender,Group_Name,DOB,FatherOccupation,MotherName,ISNULL(Program,0) Program from tbl_student where Id = @Id        
end        
if(@Action = 'Update')        
begin  
	if(@Id = 0)
		begin
			select -1 StatusCode,'Registration Not Found!' Msg   
		end
update tbl_student set Name=@Name,Fname=@Fname,Email=@Email,Mobile=@Mobile,Branch=@Branch,Address=@Address,Gender=@Gender,Group_Name=@Group_Name,DOB=@DOB,FatherOccupation = @FatherOccupation,MotherName = @MotherName, Program = @Program where Id = @Id     
   
select 1 StatusCode,'Student Registration Updated Successfully!' Msg        
end        
if(@Action = 'Delete')        
begin        
delete from tbl_student where Id = @Id        
select 1 StatusCode,'Registration Cancel !!' Msg        
end        
end 
GO
/****** Object:  StoredProcedure [dbo].[Proc_Studentfine]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Proc_Studentfine](        
@Id int=0,        
@BranchId int=0,        
@Year int=0,        
@StudentName varchar(50)='',        
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
if Not Exists(select * from tbl_Student_Admission where Name = @StudentName and EntrollmentNo = @EnrollmentNumber and Branch = @BranchId)        
begin        
select -1 StatusCode,'Please Enter Valid Student!' Msg        
return        
end        
if exists(select * from tbl_Studentfine where EnrollmentNumber= @EnrollmentNumber and FineResion = @FineResion )      
begin      
select -1 StatusCode,'Fine Already Save!' Msg       
end      
insert into tbl_Studentfine(BranchId,_Year,StudentName,EnrollmentNumber,FineAmount,FineResion,EntryDate)        
values(@BranchId,@Year,@StudentName,@EnrollmentNumber,@FineAmount,@FineResion,Getdate());        
select 1 StatusCode,'Fine Save SuccessFully!' Msg        
end      
if(@Action = 'Get' and @Id = 0)      
begin      
select ts.Id,tb.Branch_Name,ts.StudentName,ts.EnrollmentNumber,ts.FineAmount,ts.FineResion,Isnull(ts.FineStatus,-1) FineStatus,      
case ts._Year      
when 1 then 'First Year'       
when 2 then 'Second Year'      
when 3 then 'Third Year'      
end _Year,      
CONVERT(varchar,ts.EntryDate,106) EntryDate from tbl_Studentfine  ts      
inner join tbl_branch tb on ts.BranchId = tb.BranchId      
end      
if(@Action ='Get' and @Id>0)      
begin      
select ts.Id,ts.BranchId,ts._Year,ts.StudentName,ts.EnrollmentNumber,ts.FineAmount,ts.FineResion,tb.Branch_Name,Isnull(ts.FineStatus,-1) FineStatus from tbl_Studentfine ts     
inner join tbl_Branch tb on ts.BranchId= tb.BranchId    
where Id = @Id      
end      
if(@Action = 'Save' and @Id>0 )        
begin     
update tbl_Studentfine set BranchId = @BranchId,_Year=@Year,StudentName= @StudentName,EnrollmentNumber=@EnrollmentNumber,    
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
/****** Object:  StoredProcedure [dbo].[Proc_StudentNotification]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_studentSyllabus]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_SubjectMaster]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- select * from tbl_SubjectMaster        
CREATE proc [dbo].[Proc_SubjectMaster](            
@Id int='',
@Branch varchar(100)='', 
@_Year varchar(100)='',
@SubjectName varchar(100)='',
@SubjectCode varchar(100)='',
@SubjectType varchar(100)='',
@TheoryMarks varchar(100)='',
@PracticalMarks varchar(100)='',
@BranchId int = '',
@Program int = 0,
@PassingMarks int=0,
@Action varchar(100)
)
AS            
Begin     
declare @Subject varchar(100),@BId int    
if(@Action = 'Add')            
begin 
if exists (select * from tbl_SubjectMaster where BranchId = @BranchId and SubjectName = @SubjectName and _Year = @_Year)  
begin  
select -1 statuscode,'Subject Already Save' msg  
return  
end
insert into tbl_SubjectMaster(Branch,_Year,SubjectName,SubjectCode,SubjectType,TheoryMarks,PracticalMarks,EntryDate,BranchId,Program,PassingMarks) 
values(@Branch,@_Year,@SubjectName,@SubjectCode,            
@SubjectType,@TheoryMarks,@PracticalMarks,GETDATE(),@BranchId,@Program,@PassingMarks)           
select 1 statuscode,'Subject Save Successfully' Msg          
end         
if(@Action = 'Get')        
begin        
select ts.Id,tb.Branch_Name as Branch ,tp.Program,ts._Year,ts.SubjectName,ts.SubjectCode,ts.SubjectType,ts.TheoryMarks,ts.PracticalMarks,Convert(varchar,ts.EntryDate,106) EntryDate,ts.PassingMarks from tbl_SubjectMaster  ts
inner join tbl_Program tp on ts.Program = tp.Id
inner join tbl_Branch tb on ts.BranchId = tb.BranchId
end       
if(@Action = 'GetById')        
begin        
select * from tbl_SubjectMaster  where Id = @Id       
end       
if(@Action = 'Edit')            
begin      
update tbl_SubjectMaster set Program = @Program,BranchId = @BranchId,_Year=@_Year,SubjectName=@SubjectName,SubjectCode=@SubjectCode,SubjectType=@SubjectType,TheoryMarks=@TheoryMarks,    
PracticalMarks=@PracticalMarks,Modifydate = GETDATE(), PassingMarks=@PassingMarks where Id = @Id    
select 1 statuscode,'Subject Edit Successfully' Msg          
end     
if(@Action = 'Delete')    
begin    
delete from tbl_SubjectMaster where Id = @Id    
select 1 statuscode,'Subject Delete Successfully' Msg     
end    
end  
GO
/****** Object:  StoredProcedure [dbo].[Proc_Syllabus]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_Teacher_Crud]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[Proc_Teacher_Crud]
@TeacherId int=null,
@name varchar(100)=null,
@Fname varchar(100)=null,
@Email varchar(100)=null,
@Mobile varchar(100)=null,
@DOB varchar(100)=null,
@Address varchar(100)=null,
@salary varchar(100)=null,
@Qualification varchar(100)=null,
@Action varchar(100)
as
BEGIN
if(@Action = 'Add')
Begin
insert into tbl_Teacher(Name,Fname,Email,Mobile,Address,salary,Qualification,DOB,Entrydate) values(@Name,@Fname,@Email,@Mobile,@Address,@salary,@Qualification,@DOB,GETDATE())
select 1 StatusCode,'Teacher Add Successfully!' Msg
end
if(@Action = 'Get')
begin
select TeacherId,Name,Fname,Email,Mobile,Address,salary,Qualification,DOB,Entrydate from tbl_Teacher
end
if(@Action = 'GetById')
begin
select TeacherId,Name,Fname,Email,Mobile,Address,salary,Qualification,DOB from tbl_Teacher where TeacherId = @TeacherId
end
if(@Action = 'Update')
begin
update tbl_Teacher set Name=@Name,Fname=@Fname,Email=@Email,Mobile=@Mobile,Address=@Address,salary=@salary,Qualification=@Qualification,DOB=@DOB,ModifyDate=getdate() where TeacherId = @TeacherId
select 1 StatusCode,'Teacher Edit Successfully!' Msg
end
if(@Action = 'Delete')
begin
delete from tbl_Teacher where TeacherId = @TeacherId
select 1 StatusCode,'Teacher Delete Successfully!' Msg
end
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TimeTable]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--     
        
CREATE Proc [dbo].[Proc_TimeTable]            
@Id int = '',            
@BranchId int = '',            
@Year int='',            
@SubjectId int='',            
@Day varchar(50)='',            
@Period varchar(50)='',   
@PeriodSub varchar(50)='',   
@Action varchar(100)            
AS            
Begin            
if(@Action = 'Add')            
begin            
if not exists(select * from tbl_TimeTable where BranchId = @BranchId and Year = @Year and Day = @Day)    
begin        
if(@Period = '1')        
begin  
select @PeriodSub = SubjectName from tbl_SubjectMaster where Id = @SubjectId  
insert into tbl_TimeTable(BranchId,Year,SubjectId,Day,Period1,Entrydate) values(@BranchId,@Year,@SubjectId,@Day,@PeriodSub,GETDATE())            
select 1 statuscode,'TimeTable Save Successfully..' msg        
end        
if(@Period = '2')        
begin   
select @PeriodSub = SubjectName from tbl_SubjectMaster where Id = @SubjectId  
insert into tbl_TimeTable(BranchId,Year,SubjectId,Day,Period2,Entrydate) values(@BranchId,@Year,@SubjectId,@Day,@PeriodSub,GETDATE())            
select 1 statuscode,'TimeTable Save Successfully..' msg        
end        
if(@Period = '3')        
begin    
select @PeriodSub = SubjectName from tbl_SubjectMaster where Id = @SubjectId  
insert into tbl_TimeTable(BranchId,Year,SubjectId,Day,Period3,Entrydate) values(@BranchId,@Year,@SubjectId,@Day,@PeriodSub,GETDATE())            
select 1 statuscode,'TimeTable Save Successfully..' msg        
end        
if(@Period = '4')        
begin        
select @PeriodSub = SubjectName from tbl_SubjectMaster where Id = @SubjectId  
insert into tbl_TimeTable(BranchId,Year,SubjectId,Day,Period4,Entrydate) values(@BranchId,@Year,@SubjectId,@Day,@PeriodSub,GETDATE())            
select 1 statuscode,'TimeTable Save Successfully..' msg        
end        
if(@Period = '5')        
begin        
select @PeriodSub = SubjectName from tbl_SubjectMaster where Id = @SubjectId  
insert into tbl_TimeTable(BranchId,Year,SubjectId,Day,Period5,Entrydate) values(@BranchId,@Year,@SubjectId,@Day,@PeriodSub,GETDATE())            
select 1 statuscode,'TimeTable Save Successfully..' msg        
end        
if(@Period = '6')        
begin       
select @PeriodSub = SubjectName from tbl_SubjectMaster where Id = @SubjectId  
insert into tbl_TimeTable(BranchId,Year,SubjectId,Day,Period6,Entrydate) values(@BranchId,@Year,@SubjectId,@Day,@PeriodSub,GETDATE())            
select 1 statuscode,'TimeTable Save Successfully..' msg        
end       
end     
if(@Period = '1')      
begin      
if exists(select * from tbl_TimeTable where BranchId = @BranchId and Year = @Year and Day = @Day)  
begin    
select @PeriodSub = SubjectName from tbl_SubjectMaster where Id = @SubjectId  
update tbl_TimeTable set BranchId = @BranchId,Year = @Year,SubjectId = @SubjectId,Day=@Day,Period1=@PeriodSub,Modifydate =GETDATE()      
where BranchId = @BranchId and Year = @Year and Day = @Day      
select 1 statuscode,'TimeTable Save Successfully..' msg      
End      
end      
if(@Period = '2')      
begin      
if exists(select * from tbl_TimeTable where BranchId = @BranchId and Year = @Year and Day = @Day)      
begin   
select @PeriodSub = SubjectName from tbl_SubjectMaster where Id = @SubjectId  
update tbl_TimeTable set BranchId = @BranchId,Year = @Year,SubjectId = @SubjectId,Day=@Day,Period2=@PeriodSub,Modifydate =GETDATE()      
where BranchId = @BranchId and Year = @Year and Day = @Day      
select 1 statuscode,'TimeTable Save Successfully..' msg      
End      
end     
if(@Period = '3')      
begin      
if exists(select * from tbl_TimeTable where BranchId = @BranchId and Year = @Year and Day = @Day)      
begin  
select @PeriodSub = SubjectName from tbl_SubjectMaster where Id = @SubjectId  
update tbl_TimeTable set BranchId = @BranchId,Year = @Year,SubjectId = @SubjectId,Day=@Day,Period3=@PeriodSub,Modifydate =GETDATE()      
where BranchId = @BranchId and Year = @Year and Day = @Day      
select 1 statuscode,'TimeTable Save Successfully..' msg      
End      
end     
if(@Period = '4')      
begin      
if exists(select * from tbl_TimeTable where BranchId = @BranchId and Year = @Year and Day = @Day)      
begin  
select @PeriodSub = SubjectName from tbl_SubjectMaster where Id = @SubjectId  
update tbl_TimeTable set BranchId = @BranchId,Year = @Year,SubjectId = @SubjectId,Day=@Day,Period4=@PeriodSub,Modifydate =GETDATE()      
where BranchId = @BranchId and Year = @Year and Day = @Day      
select 1 statuscode,'TimeTable Save Successfully..' msg      
End      
end       
if(@Period = '5')      
begin      
if exists(select * from tbl_TimeTable where BranchId = @BranchId and Year = @Year and Day = @Day)      
begin  
select @PeriodSub = SubjectName from tbl_SubjectMaster where Id = @SubjectId  
update tbl_TimeTable set BranchId = @BranchId,Year = @Year,SubjectId = @SubjectId,Day=@Day,Period5=@PeriodSub,Modifydate =GETDATE()      
where BranchId = @BranchId and Year = @Year and Day = @Day      
select 1 statuscode,'TimeTable Save Successfully..' msg      
End      
end       
if(@Period = '6')      
begin      
if exists(select * from tbl_TimeTable where BranchId = @BranchId and Year = @Year and Day = @Day)      
begin  
select @PeriodSub = SubjectName from tbl_SubjectMaster where Id = @SubjectId  
update tbl_TimeTable set BranchId = @BranchId,Year = @Year,SubjectId = @SubjectId,Day=@Day,Period6=@PeriodSub,Modifydate =GETDATE()      
where BranchId = @BranchId and Year = @Year and Day = @Day      
select 1 statuscode,'TimeTable Save Successfully..' msg      
End      
end           
end    
if(@Action = 'Get')          
begin          
select tt.Day,tb.Branch_Name,tt.Year,    
--case when tt.Period1 = null then 'Free' when tt.Period2 = null then 'Free' when tt.Period3 = null then 'Free'    
--when tt.Period4 = null then 'Free' when tt.Period5 = null then 'Free' when tt.Period6 = null then 'Free' end    
tt.Period1,tt.Period2,tt.Period3,tt.Period4,tt.Period5,tt.Period6    
from tbl_TimeTable tt     
inner join tbl_Branch tb on tt.BranchId = tb.BranchId    
left join tbl_SubjectMaster tbs on tt.SubjectId = tbs.Id     
end      
End  
GO
/****** Object:  StoredProcedure [dbo].[Proc_UpadteSyllabus]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[ProcAddAndUpdateProgram]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[ProcAddAndUpdateVideoUrl]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[ProcGetFeesType]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[ProcGetStudentAssignment]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[ProcGetVideoUrl]    Script Date: 27-01-2023 19:03:30 ******/
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
/****** Object:  StoredProcedure [dbo].[ProcSaveAndUpdateFeesType]    Script Date: 27-01-2023 19:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[ProcSaveAndUpdateFeesType]
@Id int,
@BranchId int,
@Program int,
@FeesType varchar(150),
@Year int
AS
BEGIN
	if(@Id = 0)
		begin
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
/****** Object:  StoredProcedure [dbo].[ProcSaveProgramBranchMapping]    Script Date: 27-01-2023 19:03:30 ******/
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
