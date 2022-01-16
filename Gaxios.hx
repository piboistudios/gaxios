@:jsRequire("gaxios") @valueModuleOnly extern class Gaxios {
	/**
		Make an HTTP request using the given options.
	**/
	static function request<T>(opts:gaxios.GaxiosOptions):js.lib.Promise<gaxios.GaxiosResponse<T>>;
	/**
		The default instance used when the `request` method is directly
		invoked.
	**/
	static final instance : gaxios.Gaxios;
}