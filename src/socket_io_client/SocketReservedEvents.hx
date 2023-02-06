package socket_io_client;

typedef SocketReservedEvents = {
	dynamic function connect():Void;
	dynamic function connect_error(err:js.lib.Error):Void;
	dynamic function disconnect(reason:socket_io_client.socket.DisconnectReason, ?description:socket_io_client.build.esm.socket.DisconnectDescription):Void;
};