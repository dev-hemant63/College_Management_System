using JLNP_Project.AppCode.BAL;
using JLNP_Project.AppCode.Helper;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace JLNP_Project.Controllers.API
{
    [Route(AppConsts.defaultRoutePrefix)]
    [ApiController]
    public class Project_APIController : ControllerBase
    {
        [HttpGet]
        public IActionResult GetTimetable()
        {
            return Ok();
        }
    }
}
