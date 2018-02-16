package kinect;

@:include('linc_kinect.h')
@:native('IInfraredFrame')
extern class _IInfraredFrame {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IInfraredFrame>')
extern class IInfraredFrame extends _IInfraredFrame {}