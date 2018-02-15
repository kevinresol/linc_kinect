package kinect;

@:include('linc_kinect.h')
@:native('IBody')
extern class _IBody {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IBody>')
extern class IBody extends _IBody {}