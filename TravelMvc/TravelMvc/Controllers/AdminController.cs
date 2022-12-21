using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using TravelMvc.Models.Siniflar;

namespace TravelMvc.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin
        Context c = new Context();
        [Authorize]
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Bloglar()
        {
            var blg = c.Blogs.ToList();
            return View(blg);

        }

        public ActionResult BlogSil(int id)
        {
            var blgsil = c.Blogs.Find(id);
            c.Blogs.Remove(blgsil);
            c.SaveChanges();
            return RedirectToAction("Bloglar");
        }


        [HttpGet]
        public ActionResult BlogEkle()

        {
            return View();


        }

        [HttpPost]

        public ActionResult BlogEkle(Blog p)

        {
            c.Blogs.Add(p);
            c.SaveChanges();
            return RedirectToAction("Bloglar");


        }

        public ActionResult BlogGetir(int id)
        {
            var blg = c.Blogs.Find(id);
            return View("BlogGetir", blg);
        }


        public ActionResult BlogGuncelle(Blog p1)
        {
            var blg = c.Blogs.Find(p1.ID);

            blg.Aciklama = p1.Aciklama;
            blg.Baslik = p1.Baslik;
            blg.BlogImage = p1.BlogImage;
            blg.Tarih = p1.Tarih;

            c.SaveChanges();

            return RedirectToAction("Bloglar");
        }


        public ActionResult Yorumlar()
        {
            var blg = c.Yorumlars.ToList();
            return View(blg);
        }

        public ActionResult YorumSil(int id)
        {
            var b=c.Yorumlars.Find(id);
            c.Yorumlars.Remove(b);
            c.SaveChanges();
            return RedirectToAction("Yorumlar");

        }


        public ActionResult YorumGetir(int id)
        {
            var yr = c.Yorumlars.Find(id);
            return View("YorumGetir", yr);
        }



        public ActionResult YorumGuncelle(Yorumlar d)
        {
            var yrmgncel=c.Yorumlars.Find(d.ID);

            yrmgncel.KullanıcıAdi = d.KullanıcıAdi;
            yrmgncel.Mail=d.Mail;
            yrmgncel.Yorum=d.Yorum;
           
            c.SaveChanges();
            return RedirectToAction("Yorumlar");

        }
    }
}