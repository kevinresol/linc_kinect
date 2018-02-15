package kinect;

@:include('linc_kinect.h')
@:native('IDepthFrameSource')
extern class _IDepthFrameSource {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IDepthFrameSource>')
extern class IDepthFrameSource extends _IDepthFrameSource {}