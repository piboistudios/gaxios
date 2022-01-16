package gaxios;

/**
	Request options that are used to form the request.
**/
typedef GaxiosOptions = {
	/**
		Optional method to override making the actual HTTP request. Useful
		for writing tests.
	**/
	@:optional
	dynamic function adapter<T>(options:GaxiosOptions, defaultAdapter:(options:GaxiosOptions) -> GaxiosPromise<T>):GaxiosPromise<T>;
	@:optional
	var url : String;
	@:optional
	var baseUrl : String;
	@:optional
	var baseURL : String;
	@:optional
	var method : String;
	@:optional
	var headers : Headers;
	@:optional
	var data : Dynamic;
	@:optional
	var body : Dynamic;
	/**
		The maximum size of the http response content in bytes allowed.
	**/
	@:optional
	var maxContentLength : Float;
	/**
		The maximum number of redirects to follow. Defaults to 20.
	**/
	@:optional
	var maxRedirects : Float;
	@:optional
	var follow : Float;
	@:optional
	var params : Dynamic;
	@:optional
	dynamic function paramsSerializer(params:{ }):String;
	@:optional
	var timeout : Float;
	@:optional
	dynamic function onUploadProgress(progressEvent:Dynamic):Void;
	@:optional
	var responseType : String;
	@:optional
	var agent : ts.AnyOf2<node.http.Agent, (parsedUrl:node.url.URL) -> node.http.Agent>;
	@:optional
	dynamic function validateStatus(status:Float):Bool;
	@:optional
	var retryConfig : RetryConfig;
	@:optional
	var retry : Bool;
	@:optional
	var signal : abort_controller.AbortSignal;
	@:optional
	var size : Float;
	/**
		Implementation of `fetch` to use when making the API call. By default,
		will use the browser context if available, and fall back to `node-fetch`
		in node.js otherwise.
	**/
	@:optional
	dynamic function fetchImplementation(input:Dynamic, ?init:gaxios.build.src.common.FetchRequestInit):js.lib.Promise<gaxios.build.src.common.FetchResponse>;
	@:optional
	var cert : String;
	@:optional
	var key : String;
};