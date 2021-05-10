using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace AuditoriskaMVC1.Models
{
    public class Movie
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }

        public float Rating { get; set; }

        [Display(Name = "Download URL")]
        public string DownloadURL { get; set; }

        [Required]
        [Display(Name = "The Image URL")]
        public string ImageUrl { get; set; }
    }
}