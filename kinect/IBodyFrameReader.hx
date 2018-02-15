package kinect;

@:include('linc_kinect.h')
@:native('IBodyFrameReader')
extern class _IBodyFrameReader {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IBodyFrameReader>')
extern class IBodyFrameReader extends _IBodyFrameReader {}