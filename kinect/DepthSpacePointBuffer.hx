package kinect;

import cpp.*;
import kinect.DepthSpacePoint;

@:include('linc_kinect.h')
@:allow(kinect)
class DepthSpacePointBuffer extends Finalizable {
	public var size(default, null):UInt;
	var ref:Pointer<_DepthSpacePoint>;
	var managed:Bool;
	
	function new(size, ref, managed = false) {
		super();
		this.size = size;
		this.ref = ref;
		this.managed = managed;
	}
	
	public static function alloc(size:Int):DepthSpacePointBuffer {
		var p:Star<_DepthSpacePoint> = untyped __cpp__('new DepthSpacePoint[{0}]', size);
		return new DepthSpacePointBuffer(size, cast p, true);
	}
	
	public inline function get(i:Int):_DepthSpacePoint {
		return untyped __cpp__('{0}[{1}]', ref, i);
	}
	
	public function toArray():Array<DepthSpacePoint>
		return [for(i in 0...size) (cast get(i):DepthSpacePoint)];
		
	override function finalize() {
		if(managed) {
			var p:Star<_DepthSpacePoint> = cast ref;
			untyped __cpp__('delete {0}', p);
		}
	}
}