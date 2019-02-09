using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using WebApi_ReactCrud.Models;

namespace WebApi_ReactCrud.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class ValuesController : ApiController
    {
        MyDatabaseContext db = new MyDatabaseContext();

        /// <summary>
        ///     Create a new comment
        /// </summary>
        public IHttpActionResult Post([FromBody]Comment comment)
        {
            Comment cmt = new Comment();
            cmt.postId = comment.postId;
            cmt.commentId = comment.commentId;
            cmt.comment = comment.comment;
            try
            {
                db.commentDbSet.Add(cmt);
                db.SaveChanges();
                return Json(new { result = "Comment Added" });
            }
            catch
            {
                return Json(new { result = "Comment Not Added" });
            }
        }
    }
}
