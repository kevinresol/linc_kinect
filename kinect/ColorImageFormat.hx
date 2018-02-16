package kinect;

@:unreflective
@:native('ColorImageFormat')
extern class ColorImageFormatNative {}


@:unreflective
@:enum
extern abstract ColorImageFormat(ColorImageFormatNative) {
	@:native('ColorImageFormat_None')
	var None;
    @:native('ColorImageFormat_Rgba')
	var Rgba;
    @:native('ColorImageFormat_Yuv')
	var Yuv;
    @:native('ColorImageFormat_Bgra')
	var Bgra;
    @:native('ColorImageFormat_Bayer')
	var Bayer;
    @:native('ColorImageFormat_Yuy2')
	var Yuy2;
}
