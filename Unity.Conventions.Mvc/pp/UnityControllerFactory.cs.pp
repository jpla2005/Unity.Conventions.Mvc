using System;
using System.Web.Mvc;
using Microsoft.Practices.Unity;

namespace $rootnamespace$
{
    public class UnityControllerFactory : DefaultControllerFactory
    {
        private static IUnityContainer _container;

        public UnityControllerFactory(IUnityContainer container)
        {
            _container = container;
        }

        protected override IController GetControllerInstance(System.Web.Routing.RequestContext requestContext, Type controllerType)
        {
            return _container.Resolve(controllerType) as IController;
        }
    }
}