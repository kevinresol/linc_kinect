package kinect;

@:enum abstract JointType(Int) to Int {
	var SpineBase = 0;
    var SpineMid = 1;
    var Neck = 2;
    var Head = 3;
    var ShoulderLeft = 4;
    var ElbowLeft = 5;
    var WristLeft = 6;
    var HandLeft = 7;
    var ShoulderRight = 8;
    var ElbowRight = 9;
    var WristRight = 10;
    var HandRight = 11;
    var HipLeft = 12;
    var KneeLeft = 13;
    var AnkleLeft = 14;
    var FootLeft = 15;
    var HipRight = 16;
    var KneeRight = 17;
    var AnkleRight = 18;
    var FootRight = 19;
    var SpineShoulder = 20;
    var HandTipLeft = 21;
    var ThumbLeft = 22;
    var HandTipRight = 23;
    var ThumbRight = 24;
    var Count = 25;
}