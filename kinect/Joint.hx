package kinect;

import kinect.CameraSpacePoint;

@:include('linc_kinect.h')
@:native('Joint')
@:structAccess
extern class _Joint {
	@:native('JointType')
	var jointType:JointType;
	
	@:native('Position')
	var position:_CameraSpacePoint;
	
	@:native('TrackingState')
	var trackingState:TrackingState;
}

@:include('linc_kinect.h')
@:native('cpp.Struct<Joint>')
extern class Joint extends _Joint {
	// var position(get, never):CameraSpacePoint;
	// inline function get_position():CameraSpacePoint
	// 	return untyped __cpp__('((cpp::Struct<CameraSpacePoint>){0}->Position)', this);
}