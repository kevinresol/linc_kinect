package kinect;

@:include('linc_kinect.h')
@:native('ColorSpacePoint')
@:structAccess
extern class _ColorSpacePoint {
	@:native('X')
	var x:Float;
	
	@:native('Y')
	var y:Float;
}

@:include('linc_kinect.h')
@:native('cpp.Struct<ColorSpacePoint>')
extern class ColorSpacePoint extends _ColorSpacePoint {}