package kinect;

@:include('linc_kinect.h')
@:native('IInfraredFrameReader')
extern class _IInfraredFrameReader {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IInfraredFrameReader>')
extern class IInfraredFrameReader extends _IInfraredFrameReader {}