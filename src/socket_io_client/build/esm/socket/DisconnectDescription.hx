package socket_io_client.build.esm.socket;

typedef DisconnectDescription = ts.AnyOf2<js.lib.Error, {
	var description : String;
	@:optional
	var context : ts.AnyOf2<js.html.CloseEvent, js.html.XMLHttpRequest>;
}>;