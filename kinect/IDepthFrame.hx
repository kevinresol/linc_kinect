package kinect;

@:include('linc_kinect.h')
@:native('IDepthFrame')
extern class _IDepthFrame {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IDepthFrame>')
extern class IDepthFrame extends _IDepthFrame {}