package kinect;

@:include('linc_kinect.h')
@:native('IDepthFrameReader')
extern class _IDepthFrameReader {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IDepthFrameReader>')
extern class IDepthFrameReader extends _IDepthFrameReader {}