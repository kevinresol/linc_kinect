package kinect;

import cpp.*;
import kinect.IBodyFrameReader;

@:allow(kinect)
class BodyFrameSource extends cpp.Finalizable {
	
	var ref:IBodyFrameSource;
	
	function new(ref:IBodyFrameSource) {
		super();
		this.ref = ref;
	}
	
	public function openReader() {
		var p:Star<_IBodyFrameReader> = untyped __cpp__('nullptr');
		untyped __cpp__('{0}->OpenReader(&{1});', ref, p);
		return new BodyFrameReader(cast p);
	}
	
	public function getBodyCount():Int {
		var v:Int = 0;
		untyped __cpp__('{0}->get_BodyCount(&{1});', ref, v);
		return v;
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