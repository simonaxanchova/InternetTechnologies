using MVCStoreApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCStoreApp.Controllers
{
    public class GenreController : Controller
    {
        // GET: Genre
        static List<Genre> genreList = new List<Genre>
        {
            new Genre() { GenreId = 1, Name = "Rock"},
            new Genre() { GenreId = 2, Name = "Jazz"}
        };

        public ActionResult Index()
        {
            return View(genreList);
        }

        public ActionResult Create()
        {
            return View();
        }

        public ActionResult CreateNew(Genre genre)
        {
            genreList.Add(genre);
            return RedirectToAction("Index", "Genre");
        }

        public ActionResult Delete(int id)
        {
            foreach(Genre g in genreList.ToList())
            {
                if (g.GenreId == id) genreList.Remove(g);
            }
            return RedirectToAction("Index", "Genre");
        }

        public ActionResult Edit(int id)
        {
            var genre = new Genre() { GenreId = 0 };
            foreach(Genre g in genreList)
            {
                if (g.GenreId == id) genre = g;
            }

            if (genre.GenreId == 0)
            {
                return HttpNotFound();
            }
            return View(genre);
        }

        public ActionResult EditGenre (Genre genre)
        {
            foreach (Genre g in genreList)
            {
                if (g.GenreId == genre.GenreId) g.Name = genre.Name;
            }
            return RedirectToAction("Index", "Genre");
        }
    }
}