package kinect;

@:include('linc_kinect.h')
@:native('IColorFrame')
extern class _IColorFrame {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IColorFrame>')
extern class IColorFrame extends _IColorFrame {}