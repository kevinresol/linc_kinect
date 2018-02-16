// package kinect;

// import cpp.*;

// @:allow(kinect)
// class UInt8Buffer extends Finalizable {
// 	public var size(default, null):UInt;
// 	var ref:Pointer<UInt8>;
// 	var managed:Bool;
	
// 	function new(size, ref, managed = false) {
// 		super();
// 		this.size = size;
// 		this.ref = ref;
// 		this.managed = managed;
// 	}
	
// 	public static function alloc(size:Int):DepthSpacePointBuffer {
// 		var p:Star<UInt8> = untyped __cpp__('new BYTE[{0}]', size);
// 		return new UInt8Buffer(size, cast p, true);
// 	}
	
// 	public inline function get(i:Int):UInt8 {
// 		return untyped __cpp__('{0}[{1}]', ref, i);
// 	}
	
// 	override function finalize() {
// 		if(managed) {
// 			var p:Star<_DepthSpacePoint> = cast ref;
// 			untyped __cpp__('delete {0}', p);
// 		}
// 	}
// }