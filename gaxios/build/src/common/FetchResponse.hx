package gaxios.build.src.common;

typedef FetchResponse = {
	final status : Float;
	final statusText : String;
	final url : String;
	final body : Any;
	function arrayBuffer():js.lib.Promise<Any>;
	function blob():js.lib.Promise<Any>;
	final headers : FetchHeaders;
	function json():js.lib.Promise<Dynamic>;
	function text():js.lib.Promise<String>;
};