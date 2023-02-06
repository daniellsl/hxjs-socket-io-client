package socket_io_client;

typedef ManagerOptions = {
	/**
		Should we force a new Manager for this connection?
	**/
	var forceNew : Bool;
	/**
		Should we multiplex our connection (reuse existing Manager) ?
	**/
	var multiplex : Bool;
	/**
		The path to get our client file from, in the case of the server
		serving it
	**/
	var path : String;
	/**
		Should we allow reconnections?
	**/
	var reconnection : Bool;
	/**
		How many reconnection attempts should we try?
	**/
	var reconnectionAttempts : Float;
	/**
		The time delay in milliseconds between reconnection attempts
	**/
	var reconnectionDelay : Float;
	/**
		The max time delay in milliseconds between reconnection attempts
	**/
	var reconnectionDelayMax : Float;
	/**
		Used in the exponential backoff jitter when reconnecting
	**/
	var randomizationFactor : Float;
	/**
		The timeout in milliseconds for our connection attempt
	**/
	var timeout : Float;
	/**
		Should we automatically connect?
	**/
	var autoConnect : Bool;
	/**
		the parser to use. Defaults to an instance of the Parser that ships with socket.io.
	**/
	var parser : Dynamic;
	/**
		The host that we're connecting to. Set from the URI passed when connecting
	**/
	var host : String;
	/**
		The hostname for our connection. Set from the URI passed when connecting
	**/
	var hostname : String;
	/**
		If this is a secure connection. Set from the URI passed when connecting
	**/
	var secure : Bool;
	/**
		The port for our connection. Set from the URI passed when connecting
	**/
	var port : ts.AnyOf2<String, Float>;
	/**
		Any query parameters in our uri. Set from the URI passed when connecting
	**/
	var query : haxe.DynamicAccess<Dynamic>;
	/**
		`http.Agent` to use, defaults to `false` (NodeJS only)
	**/
	var agent : ts.AnyOf2<String, Bool>;
	/**
		Whether the client should try to upgrade the transport from
		long-polling to something better.
	**/
	var upgrade : Bool;
	/**
		Forces base 64 encoding for polling transport even when XHR2
		responseType is available and WebSocket even if the used standard
		supports binary.
	**/
	var forceBase64 : Bool;
	/**
		The param name to use as our timestamp key
	**/
	var timestampParam : String;
	/**
		Whether to add the timestamp with each transport request. Note: this
		is ignored if the browser is IE or Android, in which case requests
		are always stamped
	**/
	var timestampRequests : Bool;
	/**
		A list of transports to try (in order). Engine.io always attempts to
		connect directly with the first one, provided the feature detection test
		for it passes.
	**/
	var transports : Array<String>;
	/**
		The port the policy server listens on
	**/
	var policyPost : Float;
	/**
		If true and if the previous websocket connection to the server succeeded,
		the connection attempt will bypass the normal upgrade process and will
		initially try websocket. A connection attempt following a transport error
		will use the normal upgrade process. It is recommended you turn this on
		only when using SSL/TLS connections, or if you know that your network does
		not block websockets.
	**/
	var rememberUpgrade : Bool;
	/**
		Are we only interested in transports that support binary?
	**/
	var onlyBinaryUpgrades : Bool;
	/**
		Timeout for xhr-polling requests in milliseconds (0) (only for polling transport)
	**/
	var requestTimeout : Float;
	/**
		Transport options for Node.js client (headers etc)
	**/
	var transportOptions : Dynamic;
	/**
		(SSL) Certificate, Private key and CA certificates to use for SSL.
		Can be used in Node.js client environment to manually specify
		certificate information.
	**/
	var pfx : String;
	/**
		(SSL) Private key to use for SSL. Can be used in Node.js client
		environment to manually specify certificate information.
	**/
	var key : String;
	/**
		(SSL) A string or passphrase for the private key or pfx. Can be
		used in Node.js client environment to manually specify certificate
		information.
	**/
	var passphrase : String;
	/**
		(SSL) Public x509 certificate to use. Can be used in Node.js client
		environment to manually specify certificate information.
	**/
	var cert : String;
	/**
		(SSL) An authority certificate or array of authority certificates to
		check the remote host against.. Can be used in Node.js client
		environment to manually specify certificate information.
	**/
	var ca : ts.AnyOf2<String, Array<String>>;
	/**
		(SSL) A string describing the ciphers to use or exclude. Consult the
		[cipher format list]
		(http://www.openssl.org/docs/apps/ciphers.html#CIPHER_LIST_FORMAT) for
		details on the format.. Can be used in Node.js client environment to
		manually specify certificate information.
	**/
	var ciphers : String;
	/**
		(SSL) If true, the server certificate is verified against the list of
		supplied CAs. An 'error' event is emitted if verification fails.
		Verification happens at the connection level, before the HTTP request
		is sent. Can be used in Node.js client environment to manually specify
		certificate information.
	**/
	var rejectUnauthorized : Bool;
	/**
		Headers that will be passed for each request to the server (via xhr-polling and via websockets).
		These values then can be used during handshake or for special proxies.
	**/
	@:optional
	var extraHeaders : haxe.DynamicAccess<String>;
	/**
		Whether to include credentials (cookies, authorization headers, TLS
		client certificates, etc.) with cross-origin XHR polling requests
	**/
	var withCredentials : Bool;
	/**
		Whether to automatically close the connection whenever the beforeunload event is received.
	**/
	var closeOnBeforeunload : Bool;
	/**
		Whether to always use the native timeouts. This allows the client to
		reconnect when the native timeout functions are overridden, such as when
		mock clocks are installed.
	**/
	var useNativeTimers : Bool;
	/**
		weather we should unref the reconnect timer when it is
		create automatically
	**/
	var autoUnref : Bool;
	/**
		parameters of the WebSocket permessage-deflate extension (see ws module api docs). Set to false to disable.
	**/
	var perMessageDeflate : {
		var threshold : Float;
	};
	/**
		Either a single protocol string or an array of protocol strings. These strings are used to indicate sub-protocols,
		so that a single server can implement multiple WebSocket sub-protocols (for example, you might want one server to
		be able to handle different types of interactions depending on the specified protocol)
	**/
	var protocols : ts.AnyOf2<String, Array<String>>;
};