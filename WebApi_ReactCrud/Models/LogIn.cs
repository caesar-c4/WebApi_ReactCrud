using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApi_ReactCrud.Models
{
    public class LogIn
    {
        [Key]
        public int userId { get; set; }
        public string userName { get; set; }
        public string userPassword { get; set; }
    }
}