using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using User_Authorization_System.Filters;
using User_Authorization_System.Models;

namespace User_Authorization_System.Controllers
{
    public class YetkiliController : Controller
    {
		public static User_Table Logined_User;
		User_Authorizatoin_System_DbEntities db = new User_Authorizatoin_System_DbEntities();


		public ActionResult Index()
		{ 
			return View();
		}
		[HttpPost]
		public ActionResult Index(FormCollection form)
        {
			string username = form[0];
			string password = form[1];
			Logined_User = db.User_Table.FirstOrDefault(u=>u.user_username==username&&u.user_password ==password);
            return RedirectToAction("PHP");
        } 

		[RoleAuthorizationFilter]
		public ActionResult PHP()
		{
			return Content("Controller: " + RoleAuthorizationFilter.Controller_name + " Action : " + RoleAuthorizationFilter.Action_name);

			return Content("Yetkili / PHP");
		}

		[RoleAuthorizationFilter]
		public ActionResult HTML()
		{

			return Content("Controller: " + RoleAuthorizationFilter.Controller_name + " Action : " + RoleAuthorizationFilter.Action_name);

			return Content("Yetkili / HTML");
		}

		[RoleAuthorizationFilter]
		public ActionResult CSS()
		{
			return Content("Controller: " + RoleAuthorizationFilter.Controller_name + " Action : " + RoleAuthorizationFilter.Action_name);

			return Content("Yetkili / CSS");
		}

		[RoleAuthorizationFilter]
		public ActionResult JavaScript()
		{
			return Content("Controller: " + RoleAuthorizationFilter.Controller_name + " Action : " + RoleAuthorizationFilter.Action_name);

			return Content("Yetkili / JavaScript");
		}

		[RoleAuthorizationFilter]
		public ActionResult JSON()
		{
			return Content("Controller: " + RoleAuthorizationFilter.Controller_name + " Action : " + RoleAuthorizationFilter.Action_name);

			return Content("Yetkili / JSON");
		}

		[RoleAuthorizationFilter]
		public ActionResult Laravel()
		{
			return Content("Controller: " + RoleAuthorizationFilter.Controller_name + " Action : " + RoleAuthorizationFilter.Action_name);

			return Content("Yetkili / Laravel");
		}
	}
}