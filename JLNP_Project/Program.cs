using JLNP_Project.AppCode.Helper;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Midlelayer;
using Microsoft.OpenApi.Models;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();
//builder.Services.AddControllers(option =>
//{
//    option.Filters.Add(new CheckUserNameFilter());
//});
builder.Services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
builder.Services.AddSession(options => {
    options.Cookie.IsEssential = true;
    options.IdleTimeout = TimeSpan.FromMinutes(AppConsts.SessionTime);
});
builder.Services.AddScoped<IExamination, Examination>();
var app = builder.Build();
// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}
else
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}
app.UseSwaggerUI();
app.UseSwaggerUI(c =>
{
    c.SwaggerEndpoint("/swagger/v2/swagger.json", "API");
});
app.UseHttpsRedirection();
app.UseStaticFiles();
app.UseRouting();
app.UseSession();
app.UseAuthorization();
//app.UseMiddleware<SessionMiddleware>();
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Account}/{action=UsersLogin}/{id?}");
app.Run();
