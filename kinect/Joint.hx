package kinect;

import kinect.CameraSpacePoint;

@:include('linc_kinect.h')
@:native('Joint')
extern class _Joint {
	@:native('JointType')
	var jointType:JointType;
	
	@:native('Position')
	var position:CameraSpacePoint;
	
	@:native('TrackingState')
	var trackingState:TrackingState;
}

@:include('linc_kinect.h')
@:native('cpp.Struct<Joint>')
extern class Joint extends _Joint {}