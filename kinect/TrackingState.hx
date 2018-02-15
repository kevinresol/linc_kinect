package kinect;

@:enum
abstract TrackingState(Int) to Int {
	var NotTracked = 0;
	var Inferred = 1;
	var Tracked = 2;
}