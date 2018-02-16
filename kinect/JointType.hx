package kinect;

@:include('linc_kinect.h')
@:unreflective
@:native('JointType')
extern class JointTypeNative {}

@:unreflective
@:enum
extern abstract JointType(JointTypeNative) {
	@:native('JointType_SpineBase')
	var SpineBase;
	@:native('JointType_SpineMid')
	var SpineMid;
	@:native('JointType_Neck')
	var Neck;
	@:native('JointType_Head')
	var Head;
	@:native('JointType_ShoulderLeft')
	var ShoulderLeft;
	@:native('JointType_ElbowLeft')
	var ElbowLeft;
	@:native('JointType_WristLeft')
	var WristLeft;
	@:native('JointType_HandLeft')
	var HandLeft;
	@:native('JointType_ShoulderRight')
	var ShoulderRight;
	@:native('JointType_ElbowRight')
	var ElbowRight;
	@:native('JointType_WristRight')
	var WristRight;
	@:native('JointType_HandRight')
	var HandRight;
	@:native('JointType_HipLeft')
	var HipLeft;
	@:native('JointType_KneeLeft')
	var KneeLeft;
	@:native('JointType_AnkleLeft')
	var AnkleLeft;
	@:native('JointType_FootLeft')
	var FootLeft;
	@:native('JointType_HipRight')
	var HipRight;
	@:native('JointType_KneeRight')
	var KneeRight;
	@:native('JointType_AnkleRight')
	var AnkleRight;
	@:native('JointType_FootRight')
	var FootRight;
	@:native('JointType_SpineShoulder')
	var SpineShoulder;
	@:native('JointType_HandTipLeft')
	var HandTipLeft;
	@:native('JointType_ThumbLeft')
	var ThumbLeft;
	@:native('JointType_HandTipRight')
	var HandTipRight;
	@:native('JointType_ThumbRight')
	var ThumbRight;
	@:native('JointType_Count')
	var Count;
	
	@:to
	inline function toInt():Int
		return cast this;
}