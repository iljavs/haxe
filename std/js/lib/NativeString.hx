package js.lib;

/**
	Native javascript string.
**/
@:native("String")
extern class NativeString {
	/**
		The `charCodeAt()` method of String values returns an integer between 0
		and 65535 representing the UTF-16 code unit at the given index.

		If `index` is out of range of `0` – `str.length - 1`, returns `NaN`.

		See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/charCodeAt
	**/
	@:pure function charCodeAt(index:Int):Int;

	/**
		The `replace()` method of String values returns a new string with one,
		some, or all matches of a pattern replaced by a replacement.

		The pattern can be a `String` or a `js.lib.RegExp`, and the replacement
		can be a string or a function called for each match.

		If pattern is a string, only the first occurrence will be replaced. The
		original string is left unchanged.

		See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/replace
	**/
	@:overload(function(pattern:RegExp, replacement:String):String {})
	@:overload(function(pattern:RegExp, replacement:String->String):String {})
	@:overload(function(pattern:String, replacement:String->String):String {})
	@:pure function replace(pattern:String, replacement:String):String;
}
