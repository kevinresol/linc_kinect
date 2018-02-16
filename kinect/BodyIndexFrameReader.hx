package kinect;

import cpp.*;
import kinect.Api.*;
import kinect.IBodyIndexFrame;

@:allow(kinect)
class BodyIndexFrameReader extends cpp.Finalizable {
	
	var ref:IBodyIndexFrameReader;
	
	function new(ref:IBodyIndexFrameReader) {
		super();
		this.ref = ref;
	}
	
	public function acquireLatestFrame() {
		var p:Star<_IBodyIndexFrame> = untyped __cpp__('nullptr');
		var ret:Int = untyped __cpp__('{0}->AcquireLatestFrame(&{1});', ref, p);
		if(ret != S_OK) throw ret;
		return new BodyIndexFrame(cast p);
	}
	
	public function release() {
		ref.Release();
		ref = null;
	}
	
	override function finalize() {
		release();
	}
	
}