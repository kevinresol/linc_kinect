package kinect;

@:include('linc_kinect.h')
@:native('IInfraredFrameSource')
extern class _IInfraredFrameSource {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IInfraredFrameSource>')
extern class IInfraredFrameSource extends _IInfraredFrameSource {}