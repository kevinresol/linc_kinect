package kinect;

@:include('linc_kinect.h')
@:native('IFrameDescription')
extern class _IFrameDescription {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IFrameDescription>')
extern class IFrameDescription extends _IFrameDescription {}