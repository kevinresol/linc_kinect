// package kinect;

// import cpp.*;

// @:allow(kinect)
// class UInt16Buffer {
// 	public var size(default, null):UInt;
// 	var ref:Pointer<UInt16>;
	
// 	function new(size, ref) {
// 		this.size = size;
// 		this.ref = ref;
// 	}
	
// 	public inline function get(i:Int):UInt16 {
// 		return untyped __cpp__('{0}[{1}]', ref, i);
// 	}
// }