using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using User_Authorization_System.Models;

namespace User_Authorization_System.Controllers
{
    public class Role_TableController : Controller
    {
        private User_Authorizatoin_System_DbEntities db = new User_Authorizatoin_System_DbEntities();

        // GET: Role_Table
        public ActionResult Index()
        {
            return View(db.Role_Table.ToList());
        }

        // GET: Role_Table/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Role_Table role_Table = db.Role_Table.Find(id);
            if (role_Table == null)
            {
                return HttpNotFound();
            }
            return View(role_Table);
        }

        // GET: Role_Table/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Role_Table/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "role_id,role_name")] Role_Table role_Table)
        {
            if (ModelState.IsValid)
            {
                db.Role_Table.Add(role_Table);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(role_Table);
        }

        // GET: Role_Table/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Role_Table role_Table = db.Role_Table.Find(id);
            if (role_Table == null)
            {
                return HttpNotFound();
            }
            return View(role_Table);
        }

        // POST: Role_Table/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "role_id,role_name")] Role_Table role_Table)
        {
            if (ModelState.IsValid)
            {
                db.Entry(role_Table).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(role_Table);
        }

        // GET: Role_Table/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Role_Table role_Table = db.Role_Table.Find(id);
            if (role_Table == null)
            {
                return HttpNotFound();
            }
            return View(role_Table);
        }

        // POST: Role_Table/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Role_Table role_Table = db.Role_Table.Find(id);
            db.Role_Table.Remove(role_Table);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
