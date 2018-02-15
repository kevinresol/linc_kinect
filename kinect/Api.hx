package kinect;

import cpp.*;
import kinect.IKinectSensor;

@:keep
@:include('linc_kinect.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('kinect'))
#end
extern class Api {
    @:native('S_OK')
    static var S_OK:Int;
    
    inline static function getDefaultKinectSensor():IKinectSensor {
        var p:Star<_IKinectSensor> = untyped __cpp__('nullptr');
        untyped __cpp__('GetDefaultKinectSensor(&{0});', p);
        return cast p;
    }

} //Kinect