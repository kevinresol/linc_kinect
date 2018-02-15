package kinect;

import cpp.*;
import kinect.IDepthFrameSource;
import kinect.IBodyFrameSource;

// use a wrapper class to clean up the native kinect handle when GCed
class KinectSensor extends Finalizable {
	
	var ref:IKinectSensor;
	
	public static function getDefault():KinectSensor
		return new KinectSensor(Api.getDefaultKinectSensor());
		
	function new(ref:IKinectSensor) {
		super();
		this.ref = ref;
	}
	
	public inline function open() {
		ref.Open();
	}
	
	public function getDepthFrameSource() {
		var p:Star<_IDepthFrameSource> = untyped __cpp__('nullptr');
		untyped __cpp__('{0}->get_DepthFrameSource(&{1});', ref, p);
		return new DepthFrameSource(cast p);
	}
	
	public function getBodyFrameSource() {
		var p:Star<_IBodyFrameSource> = untyped __cpp__('nullptr');
		untyped __cpp__('{0}->get_BodyFrameSource(&{1});', ref, p);
		return new BodyFrameSource(cast p);
	}
	
	public function release() {
		ref.Release();
		ref = null;
	}
	
	override function finalize() {
		release();
	}
	
}