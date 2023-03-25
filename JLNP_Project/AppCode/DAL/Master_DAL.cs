using Core.DAL;
using JLNP_Project.Models;
using System.Data;
using System.Data.SqlClient;

namespace JLNP_Project.AppCode.DAL
{
    public class Master_DAL
    {
        SqlConnection con = new SqlConnection(ConfigSettings.conStr);
        public DataTable SaveSubject_Dal(SubjectMaster subjectMaster)
        {
            SqlCommand cmd = new SqlCommand("Proc_SubjectMaster", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", subjectMaster.SubjectId);
            cmd.Parameters.AddWithValue("@BranchId", subjectMaster.BranchId);
            cmd.Parameters.AddWithValue("@Program", subjectMaster.Program);
            cmd.Parameters.AddWithValue("@PassingMarks", subjectMaster.PassingMarks);
            cmd.Parameters.AddWithValue("@Branch", subjectMaster.Branch);
            cmd.Parameters.AddWithValue("@_Year", subjectMaster.Year);
            cmd.Parameters.AddWithValue("@SubjectName", subjectMaster.SubjectName);
            cmd.Parameters.AddWithValue("@SubjectCode", subjectMaster.SubjectCode);
            cmd.Parameters.AddWithValue("@SubjectType", subjectMaster.SubjectType);
            cmd.Parameters.AddWithValue("@TheoryMarks", subjectMaster.TheoryMarks);
            cmd.Parameters.AddWithValue("@PracticalMarks", subjectMaster.PracticalMarks);
            cmd.Parameters.AddWithValue("@IsPrectical", subjectMaster.IsPrectical);
            cmd.Parameters.AddWithValue("@PecticalPassingMarks", subjectMaster.PracticalPassingMarks);
            cmd.Parameters.AddWithValue("@IsWritten", subjectMaster.IsWritten);
            cmd.Parameters.AddWithValue("@Action", subjectMaster.Action);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        public DataTable GetSubject_Dal(SubjectMaster subjectMaster)
        {
            SqlCommand cmd = new SqlCommand("Proc_SubjectMaster", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", subjectMaster.Action);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        public DataTable GetSubject_Dal_ById(SubjectMaster subjectMaster)
        {
            SqlCommand cmd = new SqlCommand("Proc_SubjectMaster", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", subjectMaster.Id);
            cmd.Parameters.AddWithValue("@Action", subjectMaster.Action);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        public DataTable DeleteSubject_Dal(int Id ,string Action)
        {
            SqlCommand cmd = new SqlCommand("Proc_SubjectMaster", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Id);
            cmd.Parameters.AddWithValue("@Action", Action);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
    }
}
