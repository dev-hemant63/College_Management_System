﻿using CollageERP.AppCode.Interface;
using CollageERP.Models;
using JLNP_Project.Models;
using System.Net.Http.Headers;
using System.Text;

namespace CollageERP.AppCode.Midlelayer
{
    public class UploadImageService: IUploadImageService
    {
        private readonly IRequestInfo _rinfo;
        public UploadImageService(IRequestInfo requestInfo)
        {
            _rinfo = requestInfo;
        }
        public ResponseStatus Upload(FileUploadModel request)
        {
            var response = new ResponseStatus
            {
                statuscode = -1,
                Msg = "Failed to upload image"
            };
            try
            {
                //if (_appsetting.CloudFlare != null && !string.IsNullOrEmpty(_appsetting.CloudFlare.BaseURL) && !string.IsNullOrEmpty(_appsetting.CloudFlare.ApiKey) && !string.IsNullOrEmpty(_appsetting.CloudFlare.Authorization))
                //{
                //    CloudFlareResponse res = new CloudFlareResponse();
                //    using (var client = new HttpClient())
                //    {
                //        string URL = _appsetting.CloudFlare.BaseURL + _appsetting.CloudFlare.ApiKey + "/images/v1";
                //        var cloudrequest = new HttpRequestMessage(HttpMethod.Post, URL);
                //        cloudrequest.Headers.Add("Authorization", "Bearer " + _appsetting.CloudFlare.Authorization);
                //        var content = new MultipartFormDataContent();
                //        using (var ms = new MemoryStream())
                //        {
                //            request.file.CopyTo(ms);
                //            var msArr = ms.ToArray();
                //            var fileStream = new StreamContent(new MemoryStream(msArr));
                //            content.Add(fileStream, "file", DateTime.Now.ToString("ddMMyyyyhhmmssff"));
                //            cloudrequest.Content = content;
                //            var cloudresponse = client.SendAsync(cloudrequest).Result;
                //            if (cloudresponse.StatusCode == System.Net.HttpStatusCode.NotFound)
                //            {
                //                response.StatusCode = ResponseStatus.Failed;
                //                response.ResponseText = "Invalid Cloud Url!";
                //            }
                //            else
                //            {
                //                res = JsonConvert.DeserializeObject<CloudFlareResponse>(cloudresponse.Content.ReadAsStringAsync().Result);
                //                if (res.success)
                //                {
                //                    response.StatusCode = ResponseStatus.Success;
                //                    response.ResponseText = res.result.variants.FirstOrDefault();
                //                }
                //                else
                //                {
                //                    response.StatusCode = ResponseStatus.Failed;
                //                    response.ResponseText = res.errors.FirstOrDefault().message;
                //                }
                //            }
                //        }
                //    }
                //}
                //else
                //{

                //}
                StringBuilder sb = new StringBuilder();
                sb.Append(request.FilePath);
                if (!Directory.Exists(sb.ToString()))
                {
                    Directory.CreateDirectory(sb.ToString());
                }
                var filename = ContentDispositionHeaderValue.Parse(request.file.ContentDisposition).FileName.Trim('"');
                string originalExt = Path.GetExtension(filename).ToLower();
                string[] Extensions = { ".png", ".jpeg", ".jpg", ".webp" };
                if (!Extensions.Contains(originalExt))
                {
                    response.Msg = "You can only upload JPEG, JPG, and PNG files.";
                    return response;
                }
                if (string.IsNullOrEmpty(request.FileName))
                {
                    request.FileName = filename;
                }
                sb.Append($"{request.FileName}{originalExt}");
                using (FileStream fs = File.Create(sb.ToString()))
                {
                    request.file.CopyTo(fs);
                    fs.Flush();
                }
                response.statuscode = 1;
                response.Msg = $"{_rinfo.GetDomain()}/{request.FilePath.Replace("wwwroot/", "")}{request.FileName}{originalExt}";
            }
            catch (Exception ex)
            {
                response.Msg = "Error in file uploading. Try after sometime...";
            }
            return response;
        }
    }
}
