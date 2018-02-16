package kinect;

import cpp.*;
import kinect.Api.*;
import kinect.IColorFrame;

@:allow(kinect)
class ColorFrameReader extends cpp.Finalizable {
	
	var ref:IColorFrameReader;
	
	function new(ref:IColorFrameReader) {
		super();
		this.ref = ref;
	}
	
	public function acquireLatestFrame() {
		var p:Star<_IColorFrame> = untyped __cpp__('nullptr');
		var ret:Int = untyped __cpp__('{0}->AcquireLatestFrame(&{1});', ref, p);
		if(ret != S_OK) throw ret;
		return new ColorFrame(cast p);
	}
	
	public function release() {
		ref.Release();
		ref = null;
	}
	
	override function finalize() {
		release();
	}
	
}