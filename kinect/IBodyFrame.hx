package kinect;

@:include('linc_kinect.h')
@:native('IBodyFrame')
extern class _IBodyFrame {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IBodyFrame>')
extern class IBodyFrame extends _IBodyFrame {}