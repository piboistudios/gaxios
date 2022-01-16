package gaxios;

/**
	Configuration for the Gaxios `request` method.
**/
typedef RetryConfig = {
	/**
		The number of times to retry the request.  Defaults to 3.
	**/
	@:optional
	var retry : Float;
	/**
		The number of retries already attempted.
	**/
	@:optional
	var currentRetryAttempt : Float;
	/**
		The amount of time to initially delay the retry, in ms.  Defaults to 100ms.
	**/
	@:optional
	var retryDelay : Float;
	/**
		The HTTP Methods that will be automatically retried.
		Defaults to ['GET','PUT','HEAD','OPTIONS','DELETE']
	**/
	@:optional
	var httpMethodsToRetry : Array<String>;
	/**
		The HTTP response status codes that will automatically be retried.
		Defaults to: [[100, 199], [429, 429], [500, 599]]
	**/
	@:optional
	var statusCodesToRetry : Array<Array<Float>>;
	/**
		Function to invoke when a retry attempt is made.
	**/
	@:optional
	dynamic function onRetryAttempt(err:GaxiosError<Dynamic>):ts.AnyOf2<ts.Undefined, js.lib.Promise<ts.Undefined>>;
	/**
		Function to invoke which determines if you should retry
	**/
	@:optional
	dynamic function shouldRetry(err:GaxiosError<Dynamic>):ts.AnyOf2<Bool, js.lib.Promise<Bool>>;
	/**
		When there is no response, the number of retries to attempt. Defaults to 2.
	**/
	@:optional
	var noResponseRetries : Float;
};