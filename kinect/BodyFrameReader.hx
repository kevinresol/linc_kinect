package kinect;

import cpp.*;
import kinect.Api.*;
import kinect.IBodyFrame;

@:allow(kinect)
class BodyFrameReader extends cpp.Finalizable {
	
	var ref:IBodyFrameReader;
	
	function new(ref:IBodyFrameReader) {
		super();
		this.ref = ref;
	}
	
	public function acquireLatestFrame() {
		var p:Star<_IBodyFrame> = untyped __cpp__('nullptr');
		var ret:Int = untyped __cpp__('{0}->AcquireLatestFrame(&{1});', ref, p);
		if(ret != S_OK) throw ret;
		return new BodyFrame(cast p);
	}
	
	public function release() {
		if(ref != null) {
			ref.Release();
			ref = null;
		}
	}
	
	override function finalize() {
		release();
	}
	
}