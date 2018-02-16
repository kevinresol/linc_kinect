package kinect;

@:include('linc_kinect.h')
@:native('DepthSpacePoint')
@:structAccess
extern class _DepthSpacePoint {
	@:native('X')
	var x:Float;
	
	@:native('Y')
	var y:Float;
}

@:include('linc_kinect.h')
@:native('cpp.Struct<DepthSpacePoint>')
extern class DepthSpacePoint extends _DepthSpacePoint {}