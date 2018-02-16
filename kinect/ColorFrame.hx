package kinect;

import cpp.*;
import kinect.Api.*;
import kinect.IFrameDescription;

@:allow(kinect)
class ColorFrame extends cpp.Finalizable {
	
	var ref:IColorFrame;
	
	function new(ref:IColorFrame) {
		super();
		this.ref = ref;
	}
	
	public function getFrameDescription() {
		var p:Star<_IFrameDescription> = untyped __cpp__('nullptr');
		untyped __cpp__('{0}->get_FrameDescription(&{1});', ref, p);
		return new FrameDescription(cast p);
	}
	
	public function accessRawUnderlyingBuffer() {
		var size:UInt32 = 0;
		var buf:Star<UInt8> = untyped __cpp__('nullptr');
		untyped __cpp__('{0}->AccessRawUnderlyingBuffer(&{1}, &{2});', ref, size, buf);
		var arr = new Array<UInt8>();
		NativeArray.setUnmanagedData(arr, cast buf, size);
		return arr;
	}
	
	public function copyConvertedFrameDataToArray(format:ColorImageFormat, ?output:Array<UInt8>) {
		if(output == null) {
			output = [];
			var desc = getFrameDescription();
			output[desc.getWidth() * desc.getHeight() * 4 - 1] = 0;
			desc.release();
		}
		var ret:Int = untyped __cpp__('{0}->CopyConvertedFrameDataToArray({1}, {2}, {3})', ref, output.length, NativeArray.address(output, 0), format);
		if(ret != S_OK) throw ret;
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