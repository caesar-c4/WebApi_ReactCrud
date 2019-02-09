using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebApi_ReactCrud.Models;
using System.Data.Entity;

namespace WebApi_ReactCrud.Controllers
{
    public class PostController : ApiController
    {
        MyDatabaseContext db = new MyDatabaseContext();

        /// <summary>
        ///     Get all posts
        /// </summary>

        public List<Post> Get()
        {
            var postAndRespectiverComments =
                db.postDbSet.Include(x => x.Comments).ToList();

            //'include' method FORM 'System.Data.Entity'
            return postAndRespectiverComments;
        }

        /// <summary>
        ///     Get  posts by id
        /// </summary>


        // GET api/values/5
        public List<Post> Get(string id)
        {
            var postAndRespectiverComments =
                db.postDbSet.Include(x => x.Comments)
                .Where(t => t.postId == id).ToList();

            return postAndRespectiverComments;
        }

        /// <summary>
        ///     Create posts 
        /// </summary>


        public IHttpActionResult Post([FromBody] Post post)
        {
            Post pst = new Post();
            pst.postId = post.postId;
            pst.postTitle = post.postTitle;
            pst.postBody = post.postBody;
            try
            {
                db.postDbSet.Add(pst);
                db.SaveChanges();
                return Json(new { result = "Post Added" });
            }
            catch
            {
                return Json(new { result = "Post Not Added" });
            }
        }

        /// <summary>
        ///     Delete posts 
        /// </summary>


        [HttpDelete]
        public IHttpActionResult DeleteCommenet(string commentId)
        {
            try
            {
                var commentItem = db.commentDbSet.Find(commentId);
                db.commentDbSet.Remove(commentItem);
                db.SaveChanges();
                return Json(new { result = "Comment Deleted" });
            }
            catch
            {
                return Json(new { result = "Comment Not Deleted" });
            }
        }

        /// <summary>
        ///     Update posts 
        /// </summary>
        public IHttpActionResult PutPost(string id, [FromBody]Post post)
        {
            if (id != post.postId)
            {
                return Json(new { result = "Id Should match" });
            }
            db.Entry(post).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
                return Json(new { result = "Post Updated" });
            }
            catch (Exception)
            {

                if (db.postDbSet.Find(id)==null)
                {
                    return Json(new { result = "Post not matching" });
                }
                else
                {
                    return Json(new { result = "Post Found" });
                }
            }
        }
    }
}
