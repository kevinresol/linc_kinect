package kinect;

@:include('linc_kinect.h')
@:native('IBodyFrameSource')
extern class _IBodyFrameSource {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IBodyFrameSource>')
extern class IBodyFrameSource extends _IBodyFrameSource {}