package kinect;

@:include('linc_kinect.h')
@:native('IColorFrameReader')
extern class _IColorFrameReader {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IColorFrameReader>')
extern class IColorFrameReader extends _IColorFrameReader {}