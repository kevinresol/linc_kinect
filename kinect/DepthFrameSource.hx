package kinect;

import cpp.*;
import kinect.IDepthFrameReader;

@:allow(kinect)
class DepthFrameSource extends cpp.Finalizable {
	
	var ref:IDepthFrameSource;
	
	function new(ref:IDepthFrameSource) {
		super();
		this.ref = ref;
	}
	
	public function openReader() {
		var p:Star<_IDepthFrameReader> = untyped __cpp__('nullptr');
		untyped __cpp__('{0}->OpenReader(&{1});', ref, p);
		return new DepthFrameReader(cast p);
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