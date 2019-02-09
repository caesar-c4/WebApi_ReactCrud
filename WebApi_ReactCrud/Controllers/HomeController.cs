using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApi_ReactCrud.Models;

namespace WebApi_ReactCrud.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {

            using (MyDatabaseContext mdc = new MyDatabaseContext())
            {
                int i = mdc.postDbSet.Count();
            }
            return View();
        }
    }
}