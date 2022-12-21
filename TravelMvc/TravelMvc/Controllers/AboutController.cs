using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TravelMvc.Models.Siniflar;
namespace TravelMvc.Controllers
{
    public class AboutController : Controller
    {
        // GET: About
        Context snf=new Context();

        [Authorize]
        public ActionResult Index()
        {
            var lst=snf.Hakkimizdas.ToList();

            return View(lst);
        }
    }
}