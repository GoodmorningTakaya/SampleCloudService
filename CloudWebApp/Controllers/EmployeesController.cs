﻿using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Blob;
using Microsoft.WindowsAzure.Storage.Queue;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace CloudWebApp.Controllers
{
    public class EmployeesController : Controller
    {
        private MyDemoContext db = new MyDemoContext();

        // GET: Employees
        public ActionResult Index()
        {
            return View(db.Employees.ToList());
        }

        // GET: Employees/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Employee employee = db.Employees.Find(id);
            if (employee == null)
            {
                return HttpNotFound();
            }
            return View(employee);
        }

        // GET: Employees/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Employees/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,EmpName,Salary")] Employee employee, HttpPostedFileBase imageFile)
        {
            if (ModelState.IsValid)
            {
                db.Employees.Add(employee);
                db.SaveChanges();
                if (imageFile != null && imageFile.ContentLength != 0)
                {
                    employee.ImageURL = UploadAndSaveBlobAndPostMessageToQueue(imageFile, employee.Id).ToString();
                    db.SaveChanges();
                }
                return RedirectToAction("Index");
            }

            return View(employee);
        }

        private Uri UploadAndSaveBlobAndPostMessageToQueue(HttpPostedFileBase imageFile, int empId)
        {
            var storageAccount = CloudStorageAccount.Parse(ConfigurationManager.ConnectionStrings["AzureWebJobsStorage"].ToString());

            //To Upload the Image into the Blob Container
            string blobName = Guid.NewGuid().ToString() + Path.GetExtension(imageFile.FileName);
            var blobClient = storageAccount.CreateCloudBlobClient();
            CloudBlobContainer imagesBlobContainer = blobClient.GetContainerReference("images");
            imagesBlobContainer.CreateIfNotExists();
            CloudBlockBlob imageBlob = imagesBlobContainer.GetBlockBlobReference(blobName);
            var fileStream = imageFile.InputStream;
            imageBlob.UploadFromStream(fileStream);
            fileStream.Close();

            //To create the Queue with Blob information
            CloudQueueClient queueClient = storageAccount.CreateCloudQueueClient();
            CloudQueue thumbnailRequestQueue = queueClient.GetQueueReference("thumbnailrequest");
            thumbnailRequestQueue.CreateIfNotExists();
            BlobInformation blobInfo = new BlobInformation() { EmpId = empId, BlobUri = imageBlob.Uri };
            var queueMessage = new CloudQueueMessage(JsonConvert.SerializeObject(blobInfo));
            thumbnailRequestQueue.AddMessage(queueMessage);
            return imageBlob.Uri;
        }
        // POST: Employees/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
     
        // GET: Employees/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Employee employee = db.Employees.Find(id);
            if (employee == null)
            {
                return HttpNotFound();
            }
            return View(employee);
        }

        // POST: Employees/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,EmpName,Salary,ImageURL,ThumbnailURL")] Employee employee)
        {
            if (ModelState.IsValid)
            {
                db.Entry(employee).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(employee);
        }

        // GET: Employees/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Employee employee = db.Employees.Find(id);
            if (employee == null)
            {
                return HttpNotFound();
            }
            return View(employee);
        }

        // POST: Employees/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Employee employee = db.Employees.Find(id);
            db.Employees.Remove(employee);
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
