using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TravelMvc.Models.Siniflar;

namespace TravelMvc.Controllers
{
    public class BlogController : Controller
    {
        // GET: Blog
        
        Context c=new Context();
        BlogYorum by = new BlogYorum();

        [Authorize]
        public ActionResult Index()
        {

            //var lst=c.Blogs.ToList();
            by.deger1 = c.Blogs.ToList();
            by.deger3 = c.Blogs.OrderByDescending(x=>x.ID).Take(3).ToList();
            by.deger2=c.Yorumlars.OrderByDescending(x=>x.ID).Take(3).ToList();
            return View(by);
        }

        
        public ActionResult BlogDetay(int id)
        
        {

            //var blogbul=c.Blogs.Where(x=>x.ID==id).ToList();

            by.deger1=c.Blogs.Where(x=>x.ID==id).ToList();

            by.deger2=c.Yorumlars.Where(x=>x.Blogid==id).ToList();

            return View(by);
        
        }


        [HttpGet]

        public PartialViewResult YorumYap(int id)
        {
            ViewBag.deger = id;     
            return PartialView();
        }

      
        [HttpPost]
        public PartialViewResult YorumYap(Yorumlar y)
        {
            c.Yorumlars.Add(y);
            c.SaveChanges();
            return PartialView();

        }
    }
}