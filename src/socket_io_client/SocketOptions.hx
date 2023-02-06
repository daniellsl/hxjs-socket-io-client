package socket_io_client;

typedef SocketOptions = {
	/**
		the authentication payload sent when connecting to the Namespace
	**/
	var auth : ts.AnyOf2<haxe.DynamicAccess<Dynamic>, (cb:(data:Dynamic) -> Void) -> Void>;
};