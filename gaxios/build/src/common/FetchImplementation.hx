package gaxios.build.src.common;

typedef FetchImplementation = ts.AnyOf2<(input:Dynamic) -> js.lib.Promise<FetchResponse>, (input:Dynamic, init:FetchRequestInit) -> js.lib.Promise<FetchResponse>>;