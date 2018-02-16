package kinect;

@:include('linc_kinect.h')
@:native('IBodyIndexFrameReader')
extern class _IBodyIndexFrameReader {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IBodyIndexFrameReader>')
extern class IBodyIndexFrameReader extends _IBodyIndexFrameReader {}