package kinect;

@:include('linc_kinect.h')
@:native('IColorFrameSource')
extern class _IColorFrameSource {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IColorFrameSource>')
extern class IColorFrameSource extends _IColorFrameSource {}