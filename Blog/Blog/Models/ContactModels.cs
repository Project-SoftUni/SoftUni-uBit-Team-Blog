using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Blog.Models
{
    public class ContactModels
    {
        [Required(ErrorMessage = "Pleasse enter your first name")]
        [Display(Name = "First Name :")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "Please enter your last name")]
        [Display(Name = "Last Name :")]
        public string LastName { get; set; }

        [Required(ErrorMessage = "Please enter your e-mail")]
        [Display(Name = "Email :")]
        public string Email { get; set; }

        [Required(ErrorMessage = "You can't send us feedback with no content")]
        [Display(Name = "Question/Comment :")]
        public string Comment { get; set; }
    }
}