using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MVCMusicStoreScaffolding.Models
{
    public class Album
    {
        public int AlbumId { get; set; }
        public int ArtistId { get; set; }
        public string Title { get; set; }
        public decimal Price { get; set; }
        [Display(Name="Album Cover")]
        public string AlbumArtUrl { get; set; }
        public virtual Artist Artist { get; set; }
        public virtual Genre Genre { get; set; }
    }
}