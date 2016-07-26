component {

  variables.departments = { };

    function init( ) {

        return this;
    }

    function get( id ) {
        var result = "";
        if ( len( id ) && structKeyExists( variables.departments, id ) ) {
            result = variables.departments[ id ];
        } else {
            result = variables.beanFactory.getBean( "departmentBean" );
        }
        return result;
    }

    function list() {
        return variables.departments;
    }

}