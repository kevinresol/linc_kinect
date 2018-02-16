package kinect;

import cpp.*;
import kinect.Api.*;
import kinect.IBody;

@:allow(kinect)
class CoordinateMapper extends cpp.Finalizable {
	
	var ref:ICoordinateMapper;
	
	function new(ref:ICoordinateMapper) {
		super();
		this.ref = ref;
	}
	
	public function mapColorFrameToDepthSpace(depthFrameData:Array<UInt16>, ?output:DepthSpacePointBuffer) {
		if(output == null) output = DepthSpacePointBuffer.alloc(1920 * 1080); // TODO: don't hardcode the dimension?
		var ret:Int = untyped __cpp__('{0}->MapColorFrameToDepthSpace({1}, {2}, {3}, {4})', ref, depthFrameData.length, cast NativeArray.address(depthFrameData, 0), output.size, output.ref);
		if(ret != S_OK) throw ret;
		return output;
	}
	
	public function mapCameraPointToColorSpace(cameraPoint:CameraSpacePoint):ColorSpacePoint {
		untyped __cpp__('ColorSpacePoint p');
		var ret:Int = untyped __cpp__('{0}->MapCameraPointToColorSpace({1}, &p)', ref, cameraPoint);
		if(ret != S_OK) throw ret;
		return untyped __cpp__('p');
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