using JLNP_Project.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Newtonsoft.Json;

namespace JLNP_Project.AppCode.Helper
{
    public class CheckUserNameFilter: IActionFilter
    {
        public void OnActionExecuting(ActionExecutingContext context)
        {
            if (context.HttpContext.Session.GetString("Userdata") == null)
            {
                context.Result = new RedirectResult("/Account/Login");
            }
        }
        public void OnActionExecuted(ActionExecutedContext context)
        {
            // Do nothing
        }
    }
}
