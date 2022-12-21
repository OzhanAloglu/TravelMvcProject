
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TravelMvc.Models.Siniflar;

namespace TravelMvc.Controllers
{
    public class iletisimController : Controller
    {
        // GET: iletisim

        Context c=new Context();
        [Authorize]
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult iletisimgetir()
        {
            var ilts=c.iletisims.ToList();
            return View(ilts);  
        }

        public ActionResult iletisimsil(int id)
        {
            var sil = c.iletisims.Find(id);
            c.iletisims.Remove(sil);
            c.SaveChanges();
            return RedirectToAction("iletisimgetir");
        }


        //public PartialViewResult mesajgönder(iletisim p)
        //{
        //    c.iletisims.Add(p);
        //    c.SaveChanges() ;
        //    return PartialView("mesajgönder");
        //}

        [HttpGet]
         public ActionResult MesajGönder()
        {
          
            return View();
        }

        [HttpPost]

        public ActionResult MesajGönder(iletisim p)
        {
            c.iletisims.Add(p);
            c.SaveChanges();
            return View();
        }
    }
}