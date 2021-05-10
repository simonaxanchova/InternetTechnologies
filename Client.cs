using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace AuditoriskaMVC1.Models
{
    public class Client
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [Display(Name = "Name of the Client")]
        public string NameClient { get; set; }
        [Required]
        public string Address { get; set; }

        [Range(1, 99, ErrorMessage ="Age must be between 1 and 99")]
        public int Age { get; set; }
        public string MovieCard { get; set; }
        public string Telephone { get; set; }
        public bool isSubscribed { get; set; }
    }
}