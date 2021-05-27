using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MVCMusicStoreScaffolding.Startup))]
namespace MVCMusicStoreScaffolding
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
