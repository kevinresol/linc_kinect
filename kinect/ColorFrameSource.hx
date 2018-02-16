package kinect;

import cpp.*;
import kinect.IColorFrameReader;

@:allow(kinect)
class ColorFrameSource extends cpp.Finalizable {
	
	var ref:IColorFrameSource;
	
	function new(ref:IColorFrameSource) {
		super();
		this.ref = ref;
	}
	
	public function openReader() {
		var p:Star<_IColorFrameReader> = untyped __cpp__('nullptr');
		untyped __cpp__('{0}->OpenReader(&{1});', ref, p);
		return new ColorFrameReader(cast p);
	}
	
	public function getColorCount():Int {
		var v:Int = 0;
		untyped __cpp__('{0}->get_ColorCount(&{1});', ref, v);
		return v;
	}
	
	public function release() {
		ref.Release();
		ref = null;
	}
	
	override function finalize() {
		release();
	}
	
}