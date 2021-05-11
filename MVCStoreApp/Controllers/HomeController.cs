using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCStoreApp.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Test mona";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Hi. This is my page and contact.";

            return View();
        }
    }
}