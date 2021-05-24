using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

// Klasa koja gi prikazhuva klientite koi iznajmile daden film
namespace MovieStore.Models
{
    public class MovieRentals
    {


        public Movie movie { get; set; }
        public List<Client> customers { get; set; }

        
    }
}