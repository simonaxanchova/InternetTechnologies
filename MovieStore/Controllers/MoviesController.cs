using MovieStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MovieStore.Controllers
{
    public class MoviesController : Controller
    {
        static List<Movie> moviesList = new List<Movie>
        {
            new Movie() { Name = "Shrek!", Rating = 4.8f, DownloadURL = @"nekoeURL", ImageURL = "https://m.media-amazon.com/images/M/MV5BOGZhM2FhNTItODAzNi00YjA0LWEyN2UtNjJlYWQzYzU1MDg5L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY1200_CR88,0,630,1200_AL_.jpg"}
        };

        static List<Client> listaKlienti = new List<Client>() { };

        /*
        public ActionResult Random()
        {
            // Vrakjame film i lista na klienti koi go iznajmile toj film
            MovieRentals model = new MovieRentals();
            model.movie = m;
            model.customers = listaKlienti;
            return View(model);
        }*/

        
        public ActionResult ShowClient(int id)
        {
            Client model = listaKlienti.ElementAt(id);
            return View(model);
        }


        public ActionResult NewMovie()
        {
            Movie model = new Movie();
            return View(model);
        }

        public ActionResult GetAllMovies()
        {
            return View(moviesList);
        }

        [HttpPost]
        public ActionResult InsertNewMovie(Movie model)
        {
            // Proveruva dali anotaciite se vo red
            if (!ModelState.IsValid)
            {
                return View("NewMovie", model);
            }
            // Go dodavame noviot film vo listata so filmovi
            moviesList.Add(model);
            return View("GetAllMovies", moviesList);
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
            forUpdate.ImageURL = model.ImageURL;
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

        public ActionResult InsertNewClient(Client model)
        {
            if (!ModelState.IsValid)
            {
                return View("NewClient", model);
            }
            listaKlienti.Add(model);
            return View("GetAllMovies", moviesList);
        }

    }
}