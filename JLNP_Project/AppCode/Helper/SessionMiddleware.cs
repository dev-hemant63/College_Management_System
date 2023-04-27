using System.Net;

namespace JLNP_Project.AppCode.Helper
{
    public class SessionMiddleware
    {
        private readonly RequestDelegate _next;

        public SessionMiddleware(RequestDelegate next)
        {
            _next = next;
        }
        public async Task Invoke(HttpContext context)
        {
            if (context.Session.GetString(AppConsts.AppSession) == null)
            {
                context.Response.Clear();
                context.Response.StatusCode = (int)HttpStatusCode.BadRequest;
                await context.Response.WriteAsync("BadRequest");
            }
            await _next(context);
        }
    }
}
