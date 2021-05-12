using MVCMusicStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCMusicStore.Controllers
{
    public class GenreController : Controller
    {
        // GET: Genre
        /*-static List<Genre> genreList = new List<Genre>
        {
            new Genre() { GenreId = 1, Name = "Rock"},
            new Genre() { GenreId = 2, Name = "Jazz"}
        };*/

        public ApplicationDbContext _context;

        public GenreController()
        {
            _context = new ApplicationDbContext();
        }

        protected override void Dispose (bool disposing)
        {
            base.Dispose(disposing);
            _context.Dispose();
        }

        public ActionResult Index()
        {
            var genreList = _context.Genres.ToArray();
            return View(genreList);
        }

        public ActionResult Create()
        {
            return View();
        }

        public ActionResult CreateNew(Genre genre)
        {
            //genreList.Add(genre);
            _context.Genres.Add(genre);
            _context.SaveChanges(); // Fizichki primenuva izmeni
            return RedirectToAction("Index", "Genre");
        }

        public ActionResult Delete(int id)
        {
            /*foreach (Genre g in genreList.ToList())
            {
                if (g.GenreId == id) genreList.Remove(g);
            }*/

            Genre g = _context.Genres.Find(id); // Go pronaogjame indeksot na objektot koj sakame da go izbrisheme
            _context.Genres.Remove(g); // Go brisheme
            _context.SaveChanges(); // Gi zacuvuvame promenite
            return RedirectToAction("Index", "Genre");
        }

        public ActionResult Edit(int id)
        {
            /*var genre = new Genre() { GenreId = 0 };
            foreach (Genre g in genreList)
            {
                if (g.GenreId == id) genre = g;
            }

            if (genre.GenreId == 0)
            {
                return HttpNotFound();
            }*/

            var genre = _context.Genres.Single(g => g.GenreId == id);
            if (genre == null)
            {
                return HttpNotFound();
            }
            return View(genre);
        }

        public ActionResult EditGenre(Genre genre)
        {
            /*foreach (Genre g in genreList)
            {
                if (g.GenreId == genre.GenreId) g.Name = genre.Name;
            }*/
            var genreInDb = _context.Genres.Single(g => g.GenreId == genre.GenreId);
            TryUpdateModel(genreInDb);
            _context.SaveChanges();
            return RedirectToAction("Index", "Genre");
        }
    }
}