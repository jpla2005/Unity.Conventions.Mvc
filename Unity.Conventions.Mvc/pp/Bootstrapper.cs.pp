using Microsoft.Practices.Unity;
using System.Web.Mvc;
using Unity.Conventions;
using Unity.Conventions.Mvc;

[assembly: WebActivatorEx.PreApplicationStartMethod(typeof($rootnamespace$.Bootstrapper), "Initialise")]
namespace $rootnamespace$
{
    public static class Bootstrapper
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

            RegisterTypes(container);
            return container;
        }

        private static void RegisterTypes(IUnityContainer container)
        {
            // Register here your custom types
        }
    }
}