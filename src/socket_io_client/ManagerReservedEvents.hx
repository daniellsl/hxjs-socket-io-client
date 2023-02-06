package socket_io_client;

typedef ManagerReservedEvents = {
	dynamic function open():Void;
	dynamic function error(err:js.lib.Error):Void;
	dynamic function ping():Void;
	dynamic function packet(packet:socket_io_parser.Packet):Void;
	dynamic function close(reason:String, ?description:socket_io_client.build.esm.socket.DisconnectDescription):Void;
	dynamic function reconnect_failed():Void;
	dynamic function reconnect_attempt(attempt:Float):Void;
	dynamic function reconnect_error(err:js.lib.Error):Void;
	dynamic function reconnect(attempt:Float):Void;
};