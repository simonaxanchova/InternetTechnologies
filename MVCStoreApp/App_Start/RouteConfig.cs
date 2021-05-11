using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace MVCStoreApp
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            // Prv nachin na postavuvanje ruta
            // Dodavanje default specifichna ruta
            // localhost:4848/store/details/8/Four  
            /*routes.MapRoute(
                "detailswitht2parameters",
                "store/details/{artistId}/{artistAlbum}",
                new { controller = "Store", action = "Details" },
                new { artistId = @"1|5", artistAlbum = @"\w*\d{4}" }  //artistId e 1 ili 5, a artistAlbum pochnuva so bilo kolku bukvi i mora da zavrshi so 4 cifri
                );
            */

            // Vtor nachin na postavuvanje ruta -> prodolzhuva vo StoreController
            routes.MapMvcAttributeRoutes();

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
