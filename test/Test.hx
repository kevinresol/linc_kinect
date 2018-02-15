import kinect.*;

class Test {
        
    static function main() {
        var kinect = KinectSensor.getDefault();
        trace(kinect);
        kinect.open();
        var source = kinect.getDepthFrameSource();
        var reader = source.openReader();
        
        var count = 0;
        var error = 0;
        while(count < 10) {
            try {
                var frame = reader.acquireLatestFrame();
                var desc = frame.getFrameDescription();
                var width = desc.getWidth();
                var height = desc.getHeight();
                trace(width, height);
                desc.release();
                
                var buffer = frame.accessUnderlyingBuffer();
                trace(buffer.size);
                
                frame.release();
                count++;
            } catch(e:Dynamic) {
                error++;
            }
        }
        trace(count, error);
        Sys.stdin().readLine();
        trace('Done');
    }

}