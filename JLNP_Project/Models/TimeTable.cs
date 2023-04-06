namespace JLNP_Project.Models
{
    public class TimeTable
    {
        public int ID { get; set; }
        public int Branch { get; set; }
        public int Program { get; set; }
        public int Year { get; set; }
        public int Subject { get; set; }
        public int Teacher { get; set; }
        public string RoomNo { get; set; }
        public string TimeFrom { get; set; }
        public string TimeTo { get; set; }
        public string Day { get; set; }
    }
    public class TimeTableViewModel
    {
        public List<SubjectMaster> SubjectList { get; set; }
        public List<SubjectMaster> TeacherList { get; set; }
        public List<TimeTable> Timetable { get; set; }
    }
    public class TimeTableReport
    {
        public string SubjectName { get; set; }
        public string Teacher { get; set; }
        public string Time { get; set; }
        public string RoomNo { get; set; }
    }
    public class TimeTableReportViewModel
    {
        public List<TimeTableReport> Monday { get; set; } = new List<TimeTableReport>();
        public List<TimeTableReport> Tuesday { get; set; } = new List<TimeTableReport>();
        public List<TimeTableReport> Wednesday { get; set; } = new List<TimeTableReport>();
        public List<TimeTableReport> Thursday { get; set; } = new List<TimeTableReport>();
        public List<TimeTableReport> Friday { get; set; } = new List<TimeTableReport>();
        public List<TimeTableReport> Suterday { get; set; } = new List<TimeTableReport>();
        public List<TimeTableReport> Sunday { get; set; } = new List<TimeTableReport>();
    }
}
