package kinect;

@:include('linc_kinect.h')
@:native('IBodyIndexFrameSource')
extern class _IBodyIndexFrameSource {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IBodyIndexFrameSource>')
extern class IBodyIndexFrameSource extends _IBodyIndexFrameSource {}