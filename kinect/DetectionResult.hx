package kinect;

@:unreflective
@:native('DetectionResult')
extern class DetectionResultNative {}


@:unreflective
@:enum
extern abstract DetectionResult(DetectionResultNative) {
	@:native('DetectionResult_Unknown')
	var Unknown = 0;
	@:native('DetectionResult_No')
	var No = 1;
	@:native('DetectionResult_Maybe')
	var Maybe = 2;
	@:native('DetectionResult_Yes')
	var Yes = 3;
}
