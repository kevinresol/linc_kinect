package kinect;

import cpp.*;
import kinect.Api.*;
import kinect.IDepthFrame;

@:allow(kinect)
class DepthFrameReader extends cpp.Finalizable {
	
	var ref:IDepthFrameReader;
	
	function new(ref:IDepthFrameReader) {
		super();
		this.ref = ref;
	}
	
	public function acquireLatestFrame() {
		var p:Star<_IDepthFrame> = untyped __cpp__('nullptr');
		var ret:Int = untyped __cpp__('{0}->AcquireLatestFrame(&{1});', ref, p);
		if(ret != S_OK) throw ret;
		return new DepthFrame(cast p);
	}
	
	public function release() {
		ref.Release();
		ref = null;
	}
	
	override function finalize() {
		release();
	}
	
}