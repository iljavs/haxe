package js.lib;

/**
	Native javascript string.
**/
@:native("String")
extern class NativeString {
	@:pure function charCodeAt(index:Int):Int;
}
