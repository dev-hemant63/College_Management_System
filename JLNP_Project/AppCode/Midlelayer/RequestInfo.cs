﻿using CollageERP.AppCode.Interface;

namespace CollageERP.AppCode.Midlelayer
{
    public class RequestInfo: IRequestInfo
    {
        private readonly IHttpContextAccessor _accessor;
        public RequestInfo(IHttpContextAccessor httpContext)
        {
            _accessor = httpContext;
        }
        public string GetDomain()
        {
            var domain = $"{_accessor.HttpContext.Request.Scheme}://{_accessor.HttpContext.Request.Host.Host}:{_accessor.HttpContext.Request.Host.Port}";
            return domain;
        }
    }
}
