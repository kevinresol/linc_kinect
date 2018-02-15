package kinect;

import cpp.*;
import kinect.IDepthFrameSource;

@:include('linc_kinect.h')
@:native('IKinectSensor')
extern class _IKinectSensor {
	function Open():Void;
	function Release():Void;
}

@:include('linc_kinect.h')
@:native('cpp.Reference<IKinectSensor>')
extern class IKinectSensor extends _IKinectSensor {}