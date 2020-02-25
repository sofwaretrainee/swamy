using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace MyWebApi.Controller
{
    public class HelloController : ApiController
    {
        public string Get()
        {
            return "Hi Good Evening";
        }
    }
}
