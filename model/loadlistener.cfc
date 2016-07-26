 component {

  function onLoad(beanfactory){

    try {
      //beanFactory.declareBean( "departmentService", "model.services.department" );
      beanFactory.addAlias("alsoKnownAs", "departmentService");
      } catch (any e) {
        writeDump( beanfactory.getbeaninfo() );
        writeDump(e);
      }

  }
}