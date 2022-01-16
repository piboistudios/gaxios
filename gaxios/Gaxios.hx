package gaxios;

@:jsRequire("gaxios", "Gaxios") extern class Gaxios {
	/**
		The Gaxios class is responsible for making HTTP requests.
	**/
	function new(?defaults:GaxiosOptions);
	private var agentCache : js.lib.Map<String, ts.AnyOf2<node.http.Agent, (parsedUrl:node.url.URL) -> node.http.Agent>>;
	/**
		Default HTTP options that will be used for every HTTP request.
	**/
	var defaults : GaxiosOptions;
	/**
		Perform an HTTP request with the given options.
	**/
	function request<T>(?opts:GaxiosOptions):GaxiosPromise<T>;
	private var _defaultAdapter : Dynamic;
	/**
		Internal, retryable version of the `request` method.
	**/
	private function _request<T>(?opts:GaxiosOptions):GaxiosPromise<T>;
	private var getResponseData : Dynamic;
	/**
		Validates the options, and merges them with defaults.
	**/
	private var validateOpts : Dynamic;
	/**
		By default, throw for any non-2xx status code
	**/
	private var validateStatus : Dynamic;
	/**
		Encode a set of key/value pars into a querystring format (?foo=bar&baz=boo)
	**/
	private var paramsSerializer : Dynamic;
	private var translateResponse : Dynamic;
	static var prototype : Gaxios;
}