﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using testAjax.Models;
using System.IO;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace testAjax.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        public ActionResult LoginForm()
        {
            ViewBag.error = TempData["error"];
            if (Session["user"] != null)
            {
                return RedirectToAction("Index", "Home");
            }
            return View();
        }
        public ActionResult Login(string username, string password)
        {
            if (Session["user"] != null)
                return RedirectToAction("Index", "Home");
            try
            {
                MyEntities db = new MyEntities();
                var dbUser = db.WebUsers;
                var result = dbUser.SingleOrDefault(item => item.UserName == username && item.PassWord == password);
                if (result != null)
                {
                    Session["user"] = result;
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    TempData["notifyType"] = "error";
                    TempData["error"] = "Tài khoản đăng nhập không đúng";
                    return RedirectToAction("LoginForm");
                }
            }
            catch 
            {
                return RedirectToAction("LoginForm");
            }
        }
        public ActionResult SignUp(string username, string password)
        {
            try
            {
                MyEntities db = new MyEntities();
                var dbUser = db.WebUsers;
                var newUser = new WebUser()
                {
                    UserName = username,
                    PassWord = password,
                    ngayTaoTaiKhoan = DateTime.Now,
                    avatarPath = "/images/avatars/UnknownAvatar.png",
                    diaChi = "",
                    dienThoai = "",
                    hoTen = ""
                };
                db.WebUsers.Add(newUser);
                db.SaveChanges();
                return RedirectToAction("LoginForm");
            }
            catch 
            {
                TempData["error"] = "Lỗi";
                return RedirectToAction("LoginForm");
            }
        }
        [HttpPost]
        public JsonResult SignUpAjax(string username, string password)
        {
            try
            {
                MyEntities db = new MyEntities();
                var dbUser = db.WebUsers;
                if(dbUser.Count(item => item.UserName == username) > 0)
                    return Json(new {code = 500, message = $"@{username} đã được sử dụng", type = "error"}, JsonRequestBehavior.AllowGet);
                var newUser = new WebUser()
                {
                    UserName = username,
                    PassWord = password,
                    ngayTaoTaiKhoan = DateTime.Now,
                    avatarPath = "/images/avatars/UnknownAvatar.jpg"
                };
                db.WebUsers.Add(newUser);
                db.SaveChanges();
                /*string connectStr = "Data Source=LAPTOP-Q23S0AEG\\MSSQLSERVER01;Initial Catalog=NewApp;Integrated Security=True";
                SqlConnection mysql = new SqlConnection(connectStr);
                mysql.Open();
                string command =  $"Insert into WebUser(UserName, PassWord, ngayTaoTaiKhoan, avatarPath) values (N'{username}', N'{password}', '{DateTime.Now.ToString()}', N'/images/avatars/UnknownAvatar.png')";
                var sqlCommand = new SqlCommand(command,mysql);
                sqlCommand.ExecuteNonQuery();
                mysql.Close();*/
                return Json(new { code = 200, message = "Đăng ký thành công", type = "success" }, JsonRequestBehavior.AllowGet);
            }
            catch 
            {
                return Json(new { code = 500, message = "Lỗi", type = "error" }, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult LogoutAjax()
        {
            Session["user"] = null;
            return RedirectToAction("Index", "Home");
        }
        public JsonResult ChangePass(string _newPass, int _ID, string _oldPass)
        {
            try{
                bool updateStatus = UserModeForAdmin.UpdatePassword(_newPass, _ID, _oldPass);
                if(!updateStatus)
                {
                    return Json(new { code = 500, errorMessage = "Mật khẩu cũ không đúng" }, JsonRequestBehavior.AllowGet);
                }
                return Json(new { code = 200, successMessage = "Bạn đã đổi mật khẩu thành công" }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(new { code = 500, errorMessage = "Có lỗi xảy ra trong quá trình đổi mật khẩu" }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}