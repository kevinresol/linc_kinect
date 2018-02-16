package kinect;

@:include('linc_kinect.h')
@:native('IBodyIndexFrame')
extern class _IBodyIndexFrame {
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IBodyIndexFrame>')
extern class IBodyIndexFrame extends _IBodyIndexFrame {}