using MVCMusicStore.Models;
using MVCMusicStore.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCMusicStore.Controllers
{
    public class StoreController : Controller
    {
        // GET: Store
        /*public string Index()
        {
            return "Hello from Store.Index()";
        }
        */

        public ActionResult Index()
        {
            return View();
            //return Content("Store Index method");
            //return HttpNotFound();
            //return new EmptyResult();
            //return RedirectToAction("Index", "Home", new { param1=2021, param2="corona"}); // Parametrite se dodavaat vo queryString    
        }

        public string Browse()
        {
            return "Hello form Store.Browse()";
        }

        [Route("store/details/{artistId:range(1,5)}/{artistAlbum:regex(\\w*\\d{4})}")] //artistId e vo rang od 1-5, a artistAlbum ima bilo kolku bukvi i zavrshuva so 4 cifri
        public string Details(int? artistId, string artistAlbum)
        {
            return "Hello from Store.Details(), ID=" + artistId + " and album=" + artistAlbum;
        }

        public ActionResult List()
        {
            Artist artist = new Artist { Name = "One Direction" };
            var albums = new List<Album>();
            /*
            for (int i = 0; i < 10; i++)
            {
                albums.Add(new Album { Title = "AlbumTitle" + i });
            }
            */
            albums.Add(new Album { Title = "Up All Night" });
            albums.Add(new Album { Title = "Take Me Home" });
            albums.Add(new Album { Title = "Midnight Memories" });
            albums.Add(new Album { Title = "Four" });
            albums.Add(new Album { Title = "Made in the A.M." });




            var viewModel = new ArtistAlbumsViewModel
            {
                Artist = artist,
                Albums = albums
            };

            return View(viewModel);
        }

        public ActionResult ShowSearch()
        {
            return View();
        }

        public ActionResult Search(string q)
        {
            var albums = new List<Album>();
            albums.Add(new Album { Title = "Experience" });
            albums.Add(new Album { Title = "Music for the Jilted Generation" });
            albums.Add(new Album { Title = "The Fat of the Land" });
            albums.Add(new Album { Title = "Always Outnumbered, Never Outgunned" });
            albums.Add(new Album { Title = "Invaders Must Die" });
            albums.Add(new Album { Title = "The Day Is My Enemy" });

            var resultAlbums = new List<Album>();
            foreach (Album a in albums)
            {
                if (a.Title.Contains(q))
                    resultAlbums.Add(a);
            }
            return View(resultAlbums);
        }

        public ActionResult Helper()
        {
            return View();
        }

        public ActionResult HelperV(string myTextBox)
        {
            return Content("Text box = " + myTextBox);
        }
    }
}