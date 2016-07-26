component name="main" output="false" accessors="true" {

  property name="departmentService";

	public void function default(struct rc = {}) {
		param name="rc.skeletonType" default="Subsystem FW/1 Skeleton";
    writeDump(departmentService);
	}
}