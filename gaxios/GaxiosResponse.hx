package gaxios;

typedef GaxiosResponse<T> = {
	var config : GaxiosOptions;
	var data : T;
	var status : Float;
	var statusText : String;
	var headers : Headers;
	var request : gaxios.build.src.common.GaxiosXMLHttpRequest;
};