package kinect;

import cpp.*;
import kinect.IInfraredFrameReader;

@:allow(kinect)
class InfraredFrameSource extends cpp.Finalizable {
	
	var ref:IInfraredFrameSource;
	
	function new(ref:IInfraredFrameSource) {
		super();
		this.ref = ref;
	}
	
	public function openReader() {
		var p:Star<_IInfraredFrameReader> = untyped __cpp__('nullptr');
		untyped __cpp__('{0}->OpenReader(&{1});', ref, p);
		return new InfraredFrameReader(cast p);
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