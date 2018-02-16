package kinect;

import cpp.*;
import kinect.Api.*;
import kinect.IBody;

@:allow(kinect)
class BodyFrame extends cpp.Finalizable {
	
	var ref:IBodyFrame;
	
	function new(ref:IBodyFrame) {
		super();
		this.ref = ref;
	}
	
	public function getAndRefreshBodyData(capacity:Int, ?output:Array<Body>) {
		if(output != null && output.length < capacity) capacity = output.length;
		
		var bodies:Star<Star<_IBody>> = untyped __cpp__('new IBody*[{0}]', capacity);
		
		if(output == null)
			for(i in 0...capacity) untyped __cpp__('{0}[{1}] = nullptr', bodies, i);
		else
			for(i in 0...capacity) untyped __cpp__('{0}[{1}] = {2}', bodies, i, output[i].ref);
			
		var ret:Int = untyped __cpp__('{0}->GetAndRefreshBodyData({1}, {2})', ref, capacity, bodies);
		if(ret != S_OK) throw ret;
		
		if(output == null)
			output = [];
			
		for(i in 0...capacity)
			if(output[i] != null)
				output[i].ref = untyped __cpp__('{0}[{1}]', bodies, i);
			else
				output[i] = new Body(untyped __cpp__('{0}[{1}]', bodies, i));
		
		untyped __cpp__('delete[] {0}', bodies);
		
		return output;
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