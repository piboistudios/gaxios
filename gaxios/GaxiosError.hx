package gaxios;

@:jsRequire("gaxios", "GaxiosError") extern class GaxiosError<T> extends js.lib.Error {
	function new(message:String, options:GaxiosOptions, response:GaxiosResponse<T>);
	@:optional
	var code : String;
	@:optional
	var response : GaxiosResponse<T>;
	var config : GaxiosOptions;
	static var prototype : GaxiosError<Dynamic>;
}