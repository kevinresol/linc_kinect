package kinect;

import cpp.*;
import kinect.IBodyIndexFrameReader;

@:allow(kinect)
class BodyIndexFrameSource extends cpp.Finalizable {
	
	var ref:IBodyIndexFrameSource;
	
	function new(ref:IBodyIndexFrameSource) {
		super();
		this.ref = ref;
	}
	
	public function openReader() {
		var p:Star<_IBodyIndexFrameReader> = untyped __cpp__('nullptr');
		untyped __cpp__('{0}->OpenReader(&{1});', ref, p);
		return new BodyIndexFrameReader(cast p);
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