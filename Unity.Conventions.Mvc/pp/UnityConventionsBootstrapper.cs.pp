using System.Web.Mvc;
using Microsoft.Practices.Unity;
using Unity.Conventions;

namespace $rootnamespace$
{
    public static class UnityConventionsBootstrapper
    {
        public static IUnityContainer Initialise()
        {
            var container = BuildUnityContainer();
            ControllerBuilder.Current.SetControllerFactory(new UnityControllerFactory(container));

            return container;
        }

        private static IUnityContainer BuildUnityContainer()
        {
            var container = IoCManager.Container;
            return container;
        }
    }
}