package gaxios.build.src.common;

typedef FetchHeaders = {
	function append(name:String, value:String):Void;
	function delete(name:String):Void;
	function get(name:String):Null<String>;
	function has(name:String):Bool;
	function set(name:String, value:String):Void;
	function forEach(callbackfn:(value:String, key:String) -> Void, ?thisArg:Dynamic):Void;
};