package kinect;

import cpp.*;
import kinect.Api.*;
import kinect.IBody;

@:allow(kinect)
class BodyIndexFrame extends cpp.Finalizable {
	
	var ref:IBodyIndexFrame;
	
	function new(ref:IBodyIndexFrame) {
		super();
		this.ref = ref;
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