package kinect;

@:include('linc_kinect.h')
@:native('ICoordinateMapper')
extern class _ICoordinateMapper {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<ICoordinateMapper>')
extern class ICoordinateMapper extends _ICoordinateMapper {}