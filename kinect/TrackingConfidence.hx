package kinect;

@:include('linc_kinect.h')
@:unreflective
@:native('TrackingConfidence')
extern class TrackingConfidenceNative {}


@:unreflective
@:enum
extern abstract TrackingConfidence(TrackingConfidenceNative) {
	@:native('TrackingConfidence_Low')
	var Low;
	@:native('TrackingConfidence_High')
	var High;
}
