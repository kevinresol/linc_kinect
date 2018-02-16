package kinect;

import cpp.*;
import kinect.IFrameDescription;

@:allow(kinect)
class DepthFrame extends cpp.Finalizable {
	
	var ref:IDepthFrame;
	
	function new(ref:IDepthFrame) {
		super();
		this.ref = ref;
	}
	
	public function getFrameDescription() {
		var p:Star<_IFrameDescription> = untyped __cpp__('nullptr');
		untyped __cpp__('{0}->get_FrameDescription(&{1});', ref, p);
		return new FrameDescription(cast p);
	}
	
	public function accessUnderlyingBuffer() {
		var size:UInt32 = 0;
		var buf:Star<UInt16> = untyped __cpp__('nullptr');
		untyped __cpp__('{0}->AccessUnderlyingBuffer(&{1}, &{2});', ref, size, buf);
		var arr = new Array<UInt16>();
		NativeArray.setUnmanagedData(arr, cast buf, size);
		return arr;
	}
	
	public function getDepthMinReliableDistance():Int {
		var v:UInt16 = 0;
		untyped __cpp__('{0}->get_DepthMinReliableDistance(&{1});', ref, v);
		return v;
	}
	
	public function getDepthMaxReliableDistance():Int {
		var v:UInt16 = 0;
		untyped __cpp__('{0}->get_DepthMaxReliableDistance(&{1});', ref, v);
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