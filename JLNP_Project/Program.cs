using CollageERP.AppCode.Helper;
using CollageERP.AppCode.Interface;
using CollageERP.AppCode.Midlelayer;
using CollageERP.Models;
using CollageERP.PaymentQR;
using JLNP_Project.AppCode.Helper;
using JLNP_Project.AppCode.Interface;
using JLNP_Project.AppCode.Midlelayer;
using Microsoft.AspNetCore.Authentication.Cookies;
var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllersWithViews();
//builder.Services.AddControllers(option =>
//{
//    option.Filters.Add(new CheckUserNameFilter());
//});
builder.Services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
builder.Services.AddScoped<IExamination, Examination>();
builder.Services.AddScoped<IDBHelper, DBHelper>();
builder.Services.AddScoped<ISendEmail, SendEmail>();
builder.Services.AddScoped<IQrCodeService, QrCodeService>();
builder.Services.AddScoped<IRequestInfo, RequestInfo>();
builder.Services.AddScoped<IUploadImageService, UploadImageService>();
builder.Services.AddScoped<IAdmissionService, AdmissionService>();
builder.Services.AddSession(options => {
    options.Cookie.IsEssential = true;
    options.IdleTimeout = TimeSpan.FromMinutes(AppConsts.SessionTime);
});
builder.Services.AddMvc();
builder.Services.AddAuthentication(CookieAuthenticationDefaults.AuthenticationScheme).AddCookie(option =>
{
    option.LoginPath = "/Account/Login";
    option.LogoutPath = "/Account/Logout";
    option.AccessDeniedPath = "/Home/SessionExpired";
});
AccountDetails.VPA = builder.Configuration.GetSection("AccountDetails:VPA").Value;
var app = builder.Build();
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
app.UseAuthentication();
app.UseAuthorization();
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Account}/{action=Login}/{id?}");
app.Run();
