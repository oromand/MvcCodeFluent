using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ModelCodeFluent;
using MvcCodeFluent.Models;

//IXCYS--
namespace MvcCodeFluent.Controllers
{
    public class VehiclesController : Controller
    {

        // GET: Vehicles
        public ActionResult Index()
        {
            return View(VehicleCollection.LoadAll());
        }

        // GET: Vehicles/Details/5
        public ActionResult Details(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vehicle vehicle = Vehicle.Load((System.Guid)id);
            if (vehicle == null)
            {
                return HttpNotFound();
            }
            return View(vehicle);
        }

        // GET: Vehicles/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Vehicles/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "VehicleId,RaisePropertyChangedEvents,EntityKey,RowVersion,Brand,EntityState")] Vehicle vehicle)
        {
            if (ModelState.IsValid)
            {
                vehicle.VehicleId = Guid.NewGuid();
                vehicle.Save();
                return RedirectToAction("Index");
            }

            return View(vehicle);
        }

        // GET: Vehicles/Edit/5
        public ActionResult Edit(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vehicle vehicle = Vehicle.Load((System.Guid)id);
            if (vehicle == null)
            {
                return HttpNotFound();
            }
            return View(vehicle);
        }

        // POST: Vehicles/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "VehicleId,RaisePropertyChangedEvents,EntityKey,RowVersion,Brand,EntityState")] Vehicle vehicle)
        {
            if (ModelState.IsValid)
            {
                vehicle.Save();
                return RedirectToAction("Index");
            }
            return View(vehicle);
        }

        // GET: Vehicles/Delete/5
        public ActionResult Delete(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vehicle vehicle = Vehicle.Load((System.Guid)id);
            if (vehicle == null)
            {
                return HttpNotFound();
            }
            return View(vehicle);
        }

        // POST: Vehicles/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            Vehicle vehicle = Vehicle.Load(id);
            vehicle.Delete();
            return RedirectToAction("Index");
        }

    }
}
