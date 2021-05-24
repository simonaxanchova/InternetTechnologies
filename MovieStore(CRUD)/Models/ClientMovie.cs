using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MovieStore.Models
{
    public class ClientMovie
    {
        public int MovieId { get; set; }
        public int ClientId { get; set; }
        public Movie movie { get; set; }
        public List<Client> Clients { get; set; }
    }
}