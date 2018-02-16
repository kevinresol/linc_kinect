package kinect;

import cpp.*;
import kinect.Api.*;
import kinect.IInfraredFrame;

@:allow(kinect)
class InfraredFrameReader extends cpp.Finalizable {
	
	var ref:IInfraredFrameReader;
	
	function new(ref:IInfraredFrameReader) {
		super();
		this.ref = ref;
	}
	
	public function acquireLatestFrame() {
		var p:Star<_IInfraredFrame> = untyped __cpp__('nullptr');
		var ret:Int = untyped __cpp__('{0}->AcquireLatestFrame(&{1});', ref, p);
		if(ret != S_OK) throw ret;
		return new InfraredFrame(cast p);
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