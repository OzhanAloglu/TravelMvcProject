using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.Mvc;
using TravelMvc.Models.Siniflar;

namespace TravelMvc.Controllers
{
    public class AnaSayfaController : Controller
    {
        // GET: AnaSayfa
        Context c = new Context();
        Blog by = new Blog();
        [Authorize]
        public ActionResult Index()
        {
            var degerler = c.Blogs.Take(10).ToList();
            return View(degerler);
        }

        public ActionResult About()
        {
            return View();
        }

        public PartialViewResult Partial1()
        {
            var deger = c.Blogs.OrderByDescending(x => x.ID).Take(2).ToList();


            return PartialView(deger);
        }

        public PartialViewResult Partial2()
        {
            var degerler = c.Blogs.Where(x => x.ID == 1).ToList();

            return PartialView(degerler);
        }

        public PartialViewResult Partial3()
        {
            var dgr = c.Blogs.Take(10).ToList();
            return PartialView(dgr);
        }

        public PartialViewResult Partial4()
        {
            var degr=c.Blogs.Take(3).ToList();
            return PartialView(degr);
        }

        public PartialViewResult Partial5()
        {
            var degr = c.Blogs.OrderByDescending(x => x.ID).Take(3).ToList();
            return PartialView(degr);
        }
    }
}