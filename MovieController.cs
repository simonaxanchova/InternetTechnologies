using AuditoriskaMVC1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AuditoriskaMVC1.Controllers
{
    public class MovieController : Controller
    {
        static List<Movie> moviesList = new List<Movie>()
        {
            new Movie() { Name = "Shrek!", Rating = 4.8f, DownloadURL =@"https://archive.org/details/Shrek.The.Halls.720p", ImageUrl=@"https://m.media-amazon.com/images/M/MV5BOGZhM2FhNTItODAzNi00YjA0LWEyN2UtNjJlYWQzYzU1MDg5L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY1200_CR88,0,630,1200_AL_.jpg"}
        };

        static List<Client> lista = new List<Client>() {

        };   
        // GET: Movies
        public ActionResult ShowClient(int id)
        {
            Client model = lista.ElementAt(id);
            return View(model);
        }

        public ActionResult NewMovie()
        {
            Movie model = new Movie();
            return View(model);
        }

        [HttpPost]
        public ActionResult InsertNewMovie(Movie model)
        {
            // Proveruva validnost na anotacii
            if (!ModelState.IsValid)
            {
                return View("NewMovie", model);
            }

            moviesList.Add(model);
            return View("GetAllMovies", moviesList);
        }

        public ActionResult GetAllMovies()
        {

            return View(moviesList);
        }

        public ActionResult DeleteMovie(int id)
        {
            moviesList.RemoveAt(id);
            return View("GetAllMovies", moviesList);
        }

        public ActionResult EditMovie(int id)
        {
            var model = moviesList.ElementAt(id);
            model.Id = id;
            return View(model);
        }

        [HttpPost]
        public ActionResult EditMovie(Movie model)
        {
            if (!ModelState.IsValid)
            {
                return View("EditMovie", model);
            }
            var forUpdate = moviesList.ElementAt(model.Id);
            forUpdate.ImageUrl = model.ImageUrl;
            forUpdate.Name = model.Name;
            forUpdate.DownloadURL = model.DownloadURL;
            forUpdate.Rating = model.Rating;
            return View("GetAllMovies", moviesList);
        }


        public ActionResult NewClient()
        {
            Client model = new Client();
            return View(model);
        }

        [HttpPost]
        public ActionResult NewClient(Client model)
        {
            if (!ModelState.IsValid)
            {
                return View("NewClient", model);

            }
            lista.Add(model);
            return View("GetAllClients", lista);
        }

        public ActionResult GetAllClients()
        {
            return View(lista);
        }
    }
}
