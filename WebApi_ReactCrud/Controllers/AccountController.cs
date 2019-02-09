using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebApi_ReactCrud.Models;

namespace WebApi_ReactCrud.Controllers
{

    /// <summary>
    /// 
    ///     Login Authentication
    /// 
    /// </summary>

    public class AccountController : ApiController
    {
        MyDatabaseContext db = new MyDatabaseContext();

        public IHttpActionResult Post([FromBody] LogIn logIn)
        {
            var obj = db.logInDbSet.Where(a => a.userName.Equals(logIn.userName)
            && a.userPassword.Equals(logIn.userName)).FirstOrDefault();
            if (obj!=null)
            {
                return Json(new { result = "Authenticated" });
            }
            else
            {
                return Json(new { result = "Not Authenticated" });
            }
        }
    }
}
