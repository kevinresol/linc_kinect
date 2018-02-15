package kinect;

import cpp.*;
import kinect.Api.*;
import kinect.IFrameDescription;

@:allow(kinect)
class Body extends cpp.Finalizable {
	
	var ref:IBody;
	
	function new(ref:IBody) {
		super();
		this.ref = ref;
	}
	
	public function getIsTracked() {
		var v:UInt8 = 0;
		var ret:Int = untyped __cpp__('{0}->get_IsTracked(&{1});', ref, v);
		if(ret != S_OK) throw ret;
		return v != 0;
	}
	
	public function getJoints() {
		untyped __cpp__('Joint p[{0}]', JointType.Count);
		var ret:Int = untyped __cpp__('{0}->GetJoints({1}, p);', ref, JointType.Count);
		if(ret != S_OK) throw ret;
		return [for(i in 0...JointType.Count) ((untyped __cpp__('p[{0}]', i)):Joint)];
	}
	
	public function release() {
		ref.Release();
		ref = null;
	}
	
	override function finalize() {
		release();
	}
	
}