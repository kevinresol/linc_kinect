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
	
	public function getAndRefreshBodyData(capacity:Int) {
		var bodies:Star<Star<_IBody>> = untyped __cpp__('new IBody*[{0}]', capacity);
		for(i in 0...capacity) untyped __cpp__('{0}[{1}] = nullptr', bodies, i);
		var ret:Int = untyped __cpp__('{0}->GetAndRefreshBodyData({1}, {2})', ref, capacity, bodies);
		if(ret != S_OK) throw ret;
		var arr = [for(i in 0...capacity) new Body(untyped __cpp__('{0}[{1}]', bodies, i))];
		untyped __cpp__('delete {0}', bodies);
		return arr;
	}
	
	
	public function release() {
		ref.Release();
		ref = null;
	}
	
	override function finalize() {
		release();
	}
	
}