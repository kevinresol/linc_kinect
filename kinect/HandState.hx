package kinect;

@:include('linc_kinect.h')
@:unreflective
@:native('HandState')
extern class HandStateNative {}


@:unreflective
@:enum
extern abstract HandState(HandStateNative) {
	@:native('HandState_Unknown')
	var Unknown;
	@:native('HandState_NotTracked')
	var NotTracked;
	@:native('HandState_Open')
	var Open;
	@:native('HandState_Closed')
	var Closed;
	@:native('HandState_Lasso')
	var Lasso;
}
