using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using User_Authorization_System.Controllers;
using User_Authorization_System.Models;

namespace User_Authorization_System.Filters
{
	public class RoleAuthorizationFilter : ActionFilterAttribute
	{ 
		User_Authorizatoin_System_DbEntities db = new User_Authorizatoin_System_DbEntities();

		public static string Controller_name { get; set; }
		public static string Action_name { get; set; }

		public override void OnActionExecuting(ActionExecutingContext filterContext)
		{
			Controller_name = filterContext.ActionDescriptor.ControllerDescriptor.ControllerName;
			Action_name = filterContext.ActionDescriptor.ActionName;

			int per_id = db.Permission_Table.FirstOrDefault(p => p.permission_controller == Controller_name && p.permission_action == Action_name).permission_id;
			int id = YetkiliController.Logined_User.user_id;
			List<int> roles = db.Pivot_R_U_Table.Where(p => p.pru_user_id == id).Select(p => p.pru_role_id).ToList();


			base.OnActionExecuting(filterContext);
		}
	}
}