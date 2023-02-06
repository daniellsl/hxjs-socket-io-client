package socket_io_client;

/**
	A Socket is the fundamental class for interacting with the server.
	
	A Socket belongs to a certain Namespace (by default /) and uses an underlying {@link Manager} to communicate.
**/
@:jsRequire("socket.io-client", "Socket") extern class Socket<ListenEvents, EmitEvents> extends socket_io.component_emitter.Emitter<ListenEvents, EmitEvents, SocketReservedEvents> {
	/**
		`Socket` constructor.
	**/
	function new(io:Manager<socket_io.component_emitter.DefaultEventsMap, socket_io.component_emitter.DefaultEventsMap>, nsp:String, ?opts:{ /** the authentication payload sent when connecting to the Namespace **/ @:optional var auth : ts.AnyOf2<haxe.DynamicAccess<Dynamic>, (cb:(data:Dynamic) -> Void) -> Void>; });
	final io : Manager<ListenEvents, EmitEvents>;
	/**
		A unique identifier for the session.
	**/
	var id : String;
	/**
		Whether the socket is currently connected to the server.
	**/
	var connected : Bool;
	/**
		Credentials that are sent when accessing a namespace.
	**/
	var auth : ts.AnyOf2<haxe.DynamicAccess<Dynamic>, (cb:(data:Dynamic) -> Void) -> Void>;
	/**
		Buffer for packets received before the CONNECT packet
	**/
	var receiveBuffer : Array<haxe.ds.ReadOnlyArray<Dynamic>>;
	/**
		Buffer for packets that will be sent once the socket is connected
	**/
	var sendBuffer : Array<socket_io_parser.Packet>;
	private final nsp : Dynamic;
	private var ids : Dynamic;
	private var acks : Dynamic;
	private var flags : Dynamic;
	@:optional
	private var subs : Dynamic;
	private var _anyListeners : Dynamic;
	private var _anyOutgoingListeners : Dynamic;
	/**
		Whether the socket is currently disconnected
	**/
	final disconnected : Bool;
	/**
		Subscribe to open, close and packet events
	**/
	private var subEvents : Dynamic;
	/**
		Whether the Socket will try to reconnect when its Manager connects or reconnects.
	**/
	final active : Bool;
	/**
		"Opens" the socket.
	**/
	function connect():Socket<ListenEvents, EmitEvents>;
	/**
		Alias for {@link connect()}.
	**/
	function open():Socket<ListenEvents, EmitEvents>;
	/**
		Sends a `message` event.
		
		This method mimics the WebSocket.send() method.
	**/
	function send(args:haxe.extern.Rest<Dynamic>):Socket<ListenEvents, EmitEvents>;
	/**
		Override `emit`.
		If the event is in `events`, it's emitted normally.
	**/
	function emit<Ev>(ev:Ev, args:haxe.extern.Rest<Any>):Socket<ListenEvents, EmitEvents>;
	private var _registerAckCallback : Dynamic;
	/**
		Sends a packet.
	**/
	private var packet : Dynamic;
	/**
		Called upon engine `open`.
	**/
	private var onopen : Dynamic;
	/**
		Called upon engine or manager `error`.
	**/
	private var onerror : Dynamic;
	/**
		Called upon engine `close`.
	**/
	private var onclose : Dynamic;
	/**
		Called with socket packet.
	**/
	private var onpacket : Dynamic;
	/**
		Called upon a server event.
	**/
	private var onevent : Dynamic;
	private var emitEvent : Dynamic;
	/**
		Produces an ack callback to emit with an event.
	**/
	private var ack : Dynamic;
	/**
		Called upon a server acknowlegement.
	**/
	private var onack : Dynamic;
	/**
		Called upon server connect.
	**/
	private var onconnect : Dynamic;
	/**
		Emit buffered events (received and emitted).
	**/
	private var emitBuffered : Dynamic;
	/**
		Called upon server disconnect.
	**/
	private var ondisconnect : Dynamic;
	/**
		Called upon forced client/server side disconnections,
		this method ensures the manager stops tracking us and
		that reconnections don't get triggered for this.
	**/
	private var destroy : Dynamic;
	/**
		Disconnects the socket manually. In that case, the socket will not try to reconnect.
		
		If this is the last active Socket instance of the {@link Manager}, the low-level connection will be closed.
	**/
	function disconnect():Socket<ListenEvents, EmitEvents>;
	/**
		Alias for {@link disconnect()}.
	**/
	function close():Socket<ListenEvents, EmitEvents>;
	/**
		Sets the compress flag.
	**/
	function compress(compress:Bool):Socket<ListenEvents, EmitEvents>;
	/**
		Sets a modifier for a subsequent event emission that the event message will be dropped when this socket is not
		ready to send messages.
	**/
	final volatile : Socket<ListenEvents, EmitEvents>;
	/**
		Sets a modifier for a subsequent event emission that the callback will be called with an error when the
		given number of milliseconds have elapsed without an acknowledgement from the server:
	**/
	function timeout(timeout:Float):Socket<ListenEvents, EmitEvents>;
	/**
		Adds a listener that will be fired when any event is emitted. The event name is passed as the first argument to the
		callback.
	**/
	function onAny(listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket<ListenEvents, EmitEvents>;
	/**
		Adds a listener that will be fired when any event is emitted. The event name is passed as the first argument to the
		callback. The listener is added to the beginning of the listeners array.
	**/
	function prependAny(listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket<ListenEvents, EmitEvents>;
	/**
		Removes the listener that will be fired when any event is emitted.
	**/
	function offAny(?listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket<ListenEvents, EmitEvents>;
	/**
		Returns an array of listeners that are listening for any event that is specified. This array can be manipulated,
		e.g. to remove listeners.
	**/
	function listenersAny():Array<(args:haxe.extern.Rest<Dynamic>) -> Void>;
	/**
		Adds a listener that will be fired when any event is emitted. The event name is passed as the first argument to the
		callback.
		
		Note: acknowledgements sent to the server are not included.
	**/
	function onAnyOutgoing(listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket<ListenEvents, EmitEvents>;
	/**
		Adds a listener that will be fired when any event is emitted. The event name is passed as the first argument to the
		callback. The listener is added to the beginning of the listeners array.
		
		Note: acknowledgements sent to the server are not included.
	**/
	function prependAnyOutgoing(listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket<ListenEvents, EmitEvents>;
	/**
		Removes the listener that will be fired when any event is emitted.
	**/
	function offAnyOutgoing(?listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket<ListenEvents, EmitEvents>;
	/**
		Returns an array of listeners that are listening for any event that is specified. This array can be manipulated,
		e.g. to remove listeners.
	**/
	function listenersAnyOutgoing():Array<(args:haxe.extern.Rest<Dynamic>) -> Void>;
	/**
		Notify the listeners for each packet sent
	**/
	private var notifyOutgoingListeners : Dynamic;
	/**
		Adds the `listener` function as an event listener for `ev`.
	**/
	function on<Ev>(ev:Ev, listener:socket_io.component_emitter.FallbackToUntypedListener<Dynamic>):Socket<ListenEvents, EmitEvents>;
	/**
		Adds a one-time `listener` function as an event listener for `ev`.
	**/
	function once<Ev>(ev:Ev, listener:socket_io.component_emitter.FallbackToUntypedListener<Dynamic>):Socket<ListenEvents, EmitEvents>;
	/**
		Removes the `listener` function as an event listener for `ev`.
	**/
	function off<Ev>(?ev:Ev, ?listener:socket_io.component_emitter.FallbackToUntypedListener<Dynamic>):Socket<ListenEvents, EmitEvents>;
	/**
		Emits a reserved event.
		
		This method is `protected`, so that only a class extending
		`StrictEventEmitter` can emit its own reserved events.
	**/
	private function emitReserved<Ev>(ev:Ev, args:haxe.extern.Rest<Any>):Socket<ListenEvents, EmitEvents>;
	/**
		Removes the `listener` function as an event listener for `ev`.
	**/
	function removeListener<Ev>(?ev:Ev, ?listener:socket_io.component_emitter.FallbackToUntypedListener<Dynamic>):Socket<ListenEvents, EmitEvents>;
	/**
		Removes all `listener` function as an event listener for `ev`.
	**/
	function removeAllListeners<Ev>(?ev:Ev):Socket<ListenEvents, EmitEvents>;
	static var prototype : Socket<Dynamic, Dynamic>;
}