using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using TravelMvc.Models.Siniflar;

namespace TravelMvc.Controllers
{
    
    public class LoginController : Controller
    {
        // GET: Login
        Context c = new Context();
        [Authorize]
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Giris()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Giris(Admin p1)
        {
            var grs = c.Admins.FirstOrDefault(x => x.Kullanıcı == p1.Kullanıcı && x.Sifre == p1.Sifre);

            if (grs!=null)
            {
                FormsAuthentication.SetAuthCookie(grs.Kullanıcı, false);

                Session["Kullanıcı"] = grs.Kullanıcı.ToString();
                return RedirectToAction("Index", "Admin");
            }

            else
            {
                return View();
            }
        }

        public  ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Giris", "Login");
        }
    }
}