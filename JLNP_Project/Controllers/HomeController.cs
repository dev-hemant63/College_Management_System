using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace JLNP_Project.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
                return View();
        }
        [Route("teacher")]
        public IActionResult teacher()
        {
            return View();
        }
        [Route("contact")]
        public IActionResult Contact()
        {
            return View();
        }
        [Route("event-grid")]
        public IActionResult eventgrid()
        {
            return View();
        }
        [Route("course-grid")]
        public IActionResult coursegrid()
        {
            return View();
        }
        [Route("about")]
        public IActionResult about()
        {
            return View();
        }
        [Route("gallery")]
        public IActionResult gallery()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            if (Request.Cookies["UserName"] != null)
            {
                return View();
            }
            return RedirectToAction("UsersLogin", "Account");
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
        [HttpGet]
        public IActionResult SwaggerClient()
        {
            return View();
        }
    }
}