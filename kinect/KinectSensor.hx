package kinect;

import cpp.*;
import kinect.IDepthFrameSource;

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
	
	public function release() {
		ref.Release();
		ref = null;
	}
	
	override function finalize() {
		release();
	}
	
}