package kinect;

import cpp.*;
import kinect.Api.*;
import kinect.IFrameDescription;

@:allow(kinect)
class BodyIndexFrame extends cpp.Finalizable {
	
	var ref:IBodyIndexFrame;
	
	function new(ref:IBodyIndexFrame) {
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
		var buf:Star<UInt8> = untyped __cpp__('nullptr');
		untyped __cpp__('{0}->AccessUnderlyingBuffer(&{1}, &{2});', ref, size, buf);
		var arr = new Array<UInt8>();
		NativeArray.setUnmanagedData(arr, cast buf, size);
		return arr;
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