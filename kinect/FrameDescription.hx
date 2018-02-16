package kinect;

import cpp.*;

@:allow(kinect)
class FrameDescription extends cpp.Finalizable {
	
	var ref:IFrameDescription;
	
	function new(ref:IFrameDescription) {
		super();
		this.ref = ref;
	}
	
	public function getWidth():Int {
		var v:Int = 0;
		untyped __cpp__('{0}->get_Width(&{1});', ref, v);
		return v;
	}
	
	public function getHeight():Int {
		var v:Int = 0;
		untyped __cpp__('{0}->get_Height(&{1});', ref, v);
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