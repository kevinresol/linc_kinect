package kinect;

@:include('linc_kinect.h')
@:native('CameraSpacePoint')
extern class _CameraSpacePoint {
	@:native('X')
	var x:Float;
	
	@:native('Y')
	var y:Float;
	
	@:native('Z')
	var z:Float;
}

@:include('linc_kinect.h')
@:native('cpp.Struct<CameraSpacePoint>')
extern class CameraSpacePoint extends _CameraSpacePoint {}