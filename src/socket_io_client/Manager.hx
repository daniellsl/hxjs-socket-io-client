package socket_io_client;

@:jsRequire("socket.io-client", "Manager") extern class Manager<ListenEvents, EmitEvents> extends socket_io.component_emitter.Emitter<{ }, { }, ManagerReservedEvents> {
	/**
		`Manager` constructor.
	**/
	@:overload(function(?uri:String, ?opts:{ /** Should we force a new Manager for this connection? **/ @:optional var forceNew : Bool; /** Should we multiplex our connection (reuse existing Manager) ? **/ @:optional var multiplex : Bool; /** The path to get our client file from, in the case of the serverserving it **/ @:optional var path : String; /** Should we allow reconnections? **/ @:optional var reconnection : Bool; /** How many reconnection attempts should we try? **/ @:optional var reconnectionAttempts : Float; /** The time delay in milliseconds between reconnection attempts **/ @:optional var reconnectionDelay : Float; /** The max time delay in milliseconds between reconnection attempts **/ @:optional var reconnectionDelayMax : Float; /** Used in the exponential backoff jitter when reconnecting **/ @:optional var randomizationFactor : Float; /** The timeout in milliseconds for our connection attempt **/ @:optional var timeout : Float; /** Should we automatically connect? **/ @:optional var autoConnect : Bool; /** the parser to use. Defaults to an instance of the Parser that ships with socket.io. **/ @:optional var parser : Dynamic; /** The host that we're connecting to. Set from the URI passed when connecting **/ @:optional var host : String; /** The hostname for our connection. Set from the URI passed when connecting **/ @:optional var hostname : String; /** If this is a secure connection. Set from the URI passed when connecting **/ @:optional var secure : Bool; /** The port for our connection. Set from the URI passed when connecting **/ @:optional var port : ts.AnyOf2<String, Float>; /** Any query parameters in our uri. Set from the URI passed when connecting **/ @:optional var query : haxe.DynamicAccess<Dynamic>; /** `http.Agent` to use, defaults to `false` (NodeJS only) **/ @:optional var agent : ts.AnyOf2<String, Bool>; /** Whether the client should try to upgrade the transport fromlong-polling to something better. **/ @:optional var upgrade : Bool; /** Forces base 64 encoding for polling transport even when XHR2responseType is available and WebSocket even if the used standardsupports binary. **/ @:optional var forceBase64 : Bool; /** The param name to use as our timestamp key **/ @:optional var timestampParam : String; /** Whether to add the timestamp with each transport request. Note: thisis ignored if the browser is IE or Android, in which case requestsare always stamped **/ @:optional var timestampRequests : Bool; /** A list of transports to try (in order). Engine.io always attempts toconnect directly with the first one, provided the feature detection testfor it passes. **/ @:optional var transports : Array<String>; /** The port the policy server listens on **/ @:optional var policyPost : Float; /** If true and if the previous websocket connection to the server succeeded,the connection attempt will bypass the normal upgrade process and willinitially try websocket. A connection attempt following a transport errorwill use the normal upgrade process. It is recommended you turn this ononly when using SSL/TLS connections, or if you know that your network doesnot block websockets. **/ @:optional var rememberUpgrade : Bool; /** Are we only interested in transports that support binary? **/ @:optional var onlyBinaryUpgrades : Bool; /** Timeout for xhr-polling requests in milliseconds (0) (only for polling transport) **/ @:optional var requestTimeout : Float; /** Transport options for Node.js client (headers etc) **/ @:optional var transportOptions : Dynamic; /** (SSL) Certificate, Private key and CA certificates to use for SSL.Can be used in Node.js client environment to manually specifycertificate information. **/ @:optional var pfx : String; /** (SSL) Private key to use for SSL. Can be used in Node.js clientenvironment to manually specify certificate information. **/ @:optional var key : String; /** (SSL) A string or passphrase for the private key or pfx. Can beused in Node.js client environment to manually specify certificateinformation. **/ @:optional var passphrase : String; /** (SSL) Public x509 certificate to use. Can be used in Node.js clientenvironment to manually specify certificate information. **/ @:optional var cert : String; /** (SSL) An authority certificate or array of authority certificates tocheck the remote host against.. Can be used in Node.js clientenvironment to manually specify certificate information. **/ @:optional var ca : ts.AnyOf2<String, Array<String>>; /** (SSL) A string describing the ciphers to use or exclude. Consult the[cipher format list](http://www.openssl.org/docs/apps/ciphers.html#CIPHER_LIST_FORMAT) fordetails on the format.. Can be used in Node.js client environment tomanually specify certificate information. **/ @:optional var ciphers : String; /** (SSL) If true, the server certificate is verified against the list ofsupplied CAs. An 'error' event is emitted if verification fails.Verification happens at the connection level, before the HTTP requestis sent. Can be used in Node.js client environment to manually specifycertificate information. **/ @:optional var rejectUnauthorized : Bool; /** Headers that will be passed for each request to the server (via xhr-polling and via websockets).These values then can be used during handshake or for special proxies. **/ @:optional var extraHeaders : haxe.DynamicAccess<String>; /** Whether to include credentials (cookies, authorization headers, TLSclient certificates, etc.) with cross-origin XHR polling requests **/ @:optional var withCredentials : Bool; /** Whether to automatically close the connection whenever the beforeunload event is received. **/ @:optional var closeOnBeforeunload : Bool; /** Whether to always use the native timeouts. This allows the client toreconnect when the native timeout functions are overridden, such as whenmock clocks are installed. **/ @:optional var useNativeTimers : Bool; /** weather we should unref the reconnect timer when it iscreate automatically **/ @:optional var autoUnref : Bool; /** parameters of the WebSocket permessage-deflate extension (see ws module api docs). Set to false to disable. **/ @:optional var perMessageDeflate : { var threshold : Float; }; /** Either a single protocol string or an array of protocol strings. These strings are used to indicate sub-protocols,so that a single server can implement multiple WebSocket sub-protocols (for example, you might want one server tobe able to handle different types of interactions depending on the specified protocol) **/ @:optional var protocols : ts.AnyOf2<String, Array<String>>; }):Manager<ListenEvents, EmitEvents> { })
	@:overload(function(?uri:ts.AnyOf2<String, { /** Should we force a new Manager for this connection? **/ @:optional var forceNew : Bool; /** Should we multiplex our connection (reuse existing Manager) ? **/ @:optional var multiplex : Bool; /** The path to get our client file from, in the case of the serverserving it **/ @:optional var path : String; /** Should we allow reconnections? **/ @:optional var reconnection : Bool; /** How many reconnection attempts should we try? **/ @:optional var reconnectionAttempts : Float; /** The time delay in milliseconds between reconnection attempts **/ @:optional var reconnectionDelay : Float; /** The max time delay in milliseconds between reconnection attempts **/ @:optional var reconnectionDelayMax : Float; /** Used in the exponential backoff jitter when reconnecting **/ @:optional var randomizationFactor : Float; /** The timeout in milliseconds for our connection attempt **/ @:optional var timeout : Float; /** Should we automatically connect? **/ @:optional var autoConnect : Bool; /** the parser to use. Defaults to an instance of the Parser that ships with socket.io. **/ @:optional var parser : Dynamic; /** The host that we're connecting to. Set from the URI passed when connecting **/ @:optional var host : String; /** The hostname for our connection. Set from the URI passed when connecting **/ @:optional var hostname : String; /** If this is a secure connection. Set from the URI passed when connecting **/ @:optional var secure : Bool; /** The port for our connection. Set from the URI passed when connecting **/ @:optional var port : ts.AnyOf2<String, Float>; /** Any query parameters in our uri. Set from the URI passed when connecting **/ @:optional var query : haxe.DynamicAccess<Dynamic>; /** `http.Agent` to use, defaults to `false` (NodeJS only) **/ @:optional var agent : ts.AnyOf2<String, Bool>; /** Whether the client should try to upgrade the transport fromlong-polling to something better. **/ @:optional var upgrade : Bool; /** Forces base 64 encoding for polling transport even when XHR2responseType is available and WebSocket even if the used standardsupports binary. **/ @:optional var forceBase64 : Bool; /** The param name to use as our timestamp key **/ @:optional var timestampParam : String; /** Whether to add the timestamp with each transport request. Note: thisis ignored if the browser is IE or Android, in which case requestsare always stamped **/ @:optional var timestampRequests : Bool; /** A list of transports to try (in order). Engine.io always attempts toconnect directly with the first one, provided the feature detection testfor it passes. **/ @:optional var transports : Array<String>; /** The port the policy server listens on **/ @:optional var policyPost : Float; /** If true and if the previous websocket connection to the server succeeded,the connection attempt will bypass the normal upgrade process and willinitially try websocket. A connection attempt following a transport errorwill use the normal upgrade process. It is recommended you turn this ononly when using SSL/TLS connections, or if you know that your network doesnot block websockets. **/ @:optional var rememberUpgrade : Bool; /** Are we only interested in transports that support binary? **/ @:optional var onlyBinaryUpgrades : Bool; /** Timeout for xhr-polling requests in milliseconds (0) (only for polling transport) **/ @:optional var requestTimeout : Float; /** Transport options for Node.js client (headers etc) **/ @:optional var transportOptions : Dynamic; /** (SSL) Certificate, Private key and CA certificates to use for SSL.Can be used in Node.js client environment to manually specifycertificate information. **/ @:optional var pfx : String; /** (SSL) Private key to use for SSL. Can be used in Node.js clientenvironment to manually specify certificate information. **/ @:optional var key : String; /** (SSL) A string or passphrase for the private key or pfx. Can beused in Node.js client environment to manually specify certificateinformation. **/ @:optional var passphrase : String; /** (SSL) Public x509 certificate to use. Can be used in Node.js clientenvironment to manually specify certificate information. **/ @:optional var cert : String; /** (SSL) An authority certificate or array of authority certificates tocheck the remote host against.. Can be used in Node.js clientenvironment to manually specify certificate information. **/ @:optional var ca : ts.AnyOf2<String, Array<String>>; /** (SSL) A string describing the ciphers to use or exclude. Consult the[cipher format list](http://www.openssl.org/docs/apps/ciphers.html#CIPHER_LIST_FORMAT) fordetails on the format.. Can be used in Node.js client environment tomanually specify certificate information. **/ @:optional var ciphers : String; /** (SSL) If true, the server certificate is verified against the list ofsupplied CAs. An 'error' event is emitted if verification fails.Verification happens at the connection level, before the HTTP requestis sent. Can be used in Node.js client environment to manually specifycertificate information. **/ @:optional var rejectUnauthorized : Bool; /** Headers that will be passed for each request to the server (via xhr-polling and via websockets).These values then can be used during handshake or for special proxies. **/ @:optional var extraHeaders : haxe.DynamicAccess<String>; /** Whether to include credentials (cookies, authorization headers, TLSclient certificates, etc.) with cross-origin XHR polling requests **/ @:optional var withCredentials : Bool; /** Whether to automatically close the connection whenever the beforeunload event is received. **/ @:optional var closeOnBeforeunload : Bool; /** Whether to always use the native timeouts. This allows the client toreconnect when the native timeout functions are overridden, such as whenmock clocks are installed. **/ @:optional var useNativeTimers : Bool; /** weather we should unref the reconnect timer when it iscreate automatically **/ @:optional var autoUnref : Bool; /** parameters of the WebSocket permessage-deflate extension (see ws module api docs). Set to false to disable. **/ @:optional var perMessageDeflate : { var threshold : Float; }; /** Either a single protocol string or an array of protocol strings. These strings are used to indicate sub-protocols,so that a single server can implement multiple WebSocket sub-protocols (for example, you might want one server tobe able to handle different types of interactions depending on the specified protocol) **/ @:optional var protocols : ts.AnyOf2<String, Array<String>>; }>, ?opts:{ /** Should we force a new Manager for this connection? **/ @:optional var forceNew : Bool; /** Should we multiplex our connection (reuse existing Manager) ? **/ @:optional var multiplex : Bool; /** The path to get our client file from, in the case of the serverserving it **/ @:optional var path : String; /** Should we allow reconnections? **/ @:optional var reconnection : Bool; /** How many reconnection attempts should we try? **/ @:optional var reconnectionAttempts : Float; /** The time delay in milliseconds between reconnection attempts **/ @:optional var reconnectionDelay : Float; /** The max time delay in milliseconds between reconnection attempts **/ @:optional var reconnectionDelayMax : Float; /** Used in the exponential backoff jitter when reconnecting **/ @:optional var randomizationFactor : Float; /** The timeout in milliseconds for our connection attempt **/ @:optional var timeout : Float; /** Should we automatically connect? **/ @:optional var autoConnect : Bool; /** the parser to use. Defaults to an instance of the Parser that ships with socket.io. **/ @:optional var parser : Dynamic; /** The host that we're connecting to. Set from the URI passed when connecting **/ @:optional var host : String; /** The hostname for our connection. Set from the URI passed when connecting **/ @:optional var hostname : String; /** If this is a secure connection. Set from the URI passed when connecting **/ @:optional var secure : Bool; /** The port for our connection. Set from the URI passed when connecting **/ @:optional var port : ts.AnyOf2<String, Float>; /** Any query parameters in our uri. Set from the URI passed when connecting **/ @:optional var query : haxe.DynamicAccess<Dynamic>; /** `http.Agent` to use, defaults to `false` (NodeJS only) **/ @:optional var agent : ts.AnyOf2<String, Bool>; /** Whether the client should try to upgrade the transport fromlong-polling to something better. **/ @:optional var upgrade : Bool; /** Forces base 64 encoding for polling transport even when XHR2responseType is available and WebSocket even if the used standardsupports binary. **/ @:optional var forceBase64 : Bool; /** The param name to use as our timestamp key **/ @:optional var timestampParam : String; /** Whether to add the timestamp with each transport request. Note: thisis ignored if the browser is IE or Android, in which case requestsare always stamped **/ @:optional var timestampRequests : Bool; /** A list of transports to try (in order). Engine.io always attempts toconnect directly with the first one, provided the feature detection testfor it passes. **/ @:optional var transports : Array<String>; /** The port the policy server listens on **/ @:optional var policyPost : Float; /** If true and if the previous websocket connection to the server succeeded,the connection attempt will bypass the normal upgrade process and willinitially try websocket. A connection attempt following a transport errorwill use the normal upgrade process. It is recommended you turn this ononly when using SSL/TLS connections, or if you know that your network doesnot block websockets. **/ @:optional var rememberUpgrade : Bool; /** Are we only interested in transports that support binary? **/ @:optional var onlyBinaryUpgrades : Bool; /** Timeout for xhr-polling requests in milliseconds (0) (only for polling transport) **/ @:optional var requestTimeout : Float; /** Transport options for Node.js client (headers etc) **/ @:optional var transportOptions : Dynamic; /** (SSL) Certificate, Private key and CA certificates to use for SSL.Can be used in Node.js client environment to manually specifycertificate information. **/ @:optional var pfx : String; /** (SSL) Private key to use for SSL. Can be used in Node.js clientenvironment to manually specify certificate information. **/ @:optional var key : String; /** (SSL) A string or passphrase for the private key or pfx. Can beused in Node.js client environment to manually specify certificateinformation. **/ @:optional var passphrase : String; /** (SSL) Public x509 certificate to use. Can be used in Node.js clientenvironment to manually specify certificate information. **/ @:optional var cert : String; /** (SSL) An authority certificate or array of authority certificates tocheck the remote host against.. Can be used in Node.js clientenvironment to manually specify certificate information. **/ @:optional var ca : ts.AnyOf2<String, Array<String>>; /** (SSL) A string describing the ciphers to use or exclude. Consult the[cipher format list](http://www.openssl.org/docs/apps/ciphers.html#CIPHER_LIST_FORMAT) fordetails on the format.. Can be used in Node.js client environment tomanually specify certificate information. **/ @:optional var ciphers : String; /** (SSL) If true, the server certificate is verified against the list ofsupplied CAs. An 'error' event is emitted if verification fails.Verification happens at the connection level, before the HTTP requestis sent. Can be used in Node.js client environment to manually specifycertificate information. **/ @:optional var rejectUnauthorized : Bool; /** Headers that will be passed for each request to the server (via xhr-polling and via websockets).These values then can be used during handshake or for special proxies. **/ @:optional var extraHeaders : haxe.DynamicAccess<String>; /** Whether to include credentials (cookies, authorization headers, TLSclient certificates, etc.) with cross-origin XHR polling requests **/ @:optional var withCredentials : Bool; /** Whether to automatically close the connection whenever the beforeunload event is received. **/ @:optional var closeOnBeforeunload : Bool; /** Whether to always use the native timeouts. This allows the client toreconnect when the native timeout functions are overridden, such as whenmock clocks are installed. **/ @:optional var useNativeTimers : Bool; /** weather we should unref the reconnect timer when it iscreate automatically **/ @:optional var autoUnref : Bool; /** parameters of the WebSocket permessage-deflate extension (see ws module api docs). Set to false to disable. **/ @:optional var perMessageDeflate : { var threshold : Float; }; /** Either a single protocol string or an array of protocol strings. These strings are used to indicate sub-protocols,so that a single server can implement multiple WebSocket sub-protocols (for example, you might want one server tobe able to handle different types of interactions depending on the specified protocol) **/ @:optional var protocols : ts.AnyOf2<String, Array<String>>; }):Manager<ListenEvents, EmitEvents> { })
	function new(opts:{ /** Should we force a new Manager for this connection? **/ @:optional var forceNew : Bool; /** Should we multiplex our connection (reuse existing Manager) ? **/ @:optional var multiplex : Bool; /** The path to get our client file from, in the case of the serverserving it **/ @:optional var path : String; /** Should we allow reconnections? **/ @:optional var reconnection : Bool; /** How many reconnection attempts should we try? **/ @:optional var reconnectionAttempts : Float; /** The time delay in milliseconds between reconnection attempts **/ @:optional var reconnectionDelay : Float; /** The max time delay in milliseconds between reconnection attempts **/ @:optional var reconnectionDelayMax : Float; /** Used in the exponential backoff jitter when reconnecting **/ @:optional var randomizationFactor : Float; /** The timeout in milliseconds for our connection attempt **/ @:optional var timeout : Float; /** Should we automatically connect? **/ @:optional var autoConnect : Bool; /** the parser to use. Defaults to an instance of the Parser that ships with socket.io. **/ @:optional var parser : Dynamic; /** The host that we're connecting to. Set from the URI passed when connecting **/ @:optional var host : String; /** The hostname for our connection. Set from the URI passed when connecting **/ @:optional var hostname : String; /** If this is a secure connection. Set from the URI passed when connecting **/ @:optional var secure : Bool; /** The port for our connection. Set from the URI passed when connecting **/ @:optional var port : ts.AnyOf2<String, Float>; /** Any query parameters in our uri. Set from the URI passed when connecting **/ @:optional var query : haxe.DynamicAccess<Dynamic>; /** `http.Agent` to use, defaults to `false` (NodeJS only) **/ @:optional var agent : ts.AnyOf2<String, Bool>; /** Whether the client should try to upgrade the transport fromlong-polling to something better. **/ @:optional var upgrade : Bool; /** Forces base 64 encoding for polling transport even when XHR2responseType is available and WebSocket even if the used standardsupports binary. **/ @:optional var forceBase64 : Bool; /** The param name to use as our timestamp key **/ @:optional var timestampParam : String; /** Whether to add the timestamp with each transport request. Note: thisis ignored if the browser is IE or Android, in which case requestsare always stamped **/ @:optional var timestampRequests : Bool; /** A list of transports to try (in order). Engine.io always attempts toconnect directly with the first one, provided the feature detection testfor it passes. **/ @:optional var transports : Array<String>; /** The port the policy server listens on **/ @:optional var policyPost : Float; /** If true and if the previous websocket connection to the server succeeded,the connection attempt will bypass the normal upgrade process and willinitially try websocket. A connection attempt following a transport errorwill use the normal upgrade process. It is recommended you turn this ononly when using SSL/TLS connections, or if you know that your network doesnot block websockets. **/ @:optional var rememberUpgrade : Bool; /** Are we only interested in transports that support binary? **/ @:optional var onlyBinaryUpgrades : Bool; /** Timeout for xhr-polling requests in milliseconds (0) (only for polling transport) **/ @:optional var requestTimeout : Float; /** Transport options for Node.js client (headers etc) **/ @:optional var transportOptions : Dynamic; /** (SSL) Certificate, Private key and CA certificates to use for SSL.Can be used in Node.js client environment to manually specifycertificate information. **/ @:optional var pfx : String; /** (SSL) Private key to use for SSL. Can be used in Node.js clientenvironment to manually specify certificate information. **/ @:optional var key : String; /** (SSL) A string or passphrase for the private key or pfx. Can beused in Node.js client environment to manually specify certificateinformation. **/ @:optional var passphrase : String; /** (SSL) Public x509 certificate to use. Can be used in Node.js clientenvironment to manually specify certificate information. **/ @:optional var cert : String; /** (SSL) An authority certificate or array of authority certificates tocheck the remote host against.. Can be used in Node.js clientenvironment to manually specify certificate information. **/ @:optional var ca : ts.AnyOf2<String, Array<String>>; /** (SSL) A string describing the ciphers to use or exclude. Consult the[cipher format list](http://www.openssl.org/docs/apps/ciphers.html#CIPHER_LIST_FORMAT) fordetails on the format.. Can be used in Node.js client environment tomanually specify certificate information. **/ @:optional var ciphers : String; /** (SSL) If true, the server certificate is verified against the list ofsupplied CAs. An 'error' event is emitted if verification fails.Verification happens at the connection level, before the HTTP requestis sent. Can be used in Node.js client environment to manually specifycertificate information. **/ @:optional var rejectUnauthorized : Bool; /** Headers that will be passed for each request to the server (via xhr-polling and via websockets).These values then can be used during handshake or for special proxies. **/ @:optional var extraHeaders : haxe.DynamicAccess<String>; /** Whether to include credentials (cookies, authorization headers, TLSclient certificates, etc.) with cross-origin XHR polling requests **/ @:optional var withCredentials : Bool; /** Whether to automatically close the connection whenever the beforeunload event is received. **/ @:optional var closeOnBeforeunload : Bool; /** Whether to always use the native timeouts. This allows the client toreconnect when the native timeout functions are overridden, such as whenmock clocks are installed. **/ @:optional var useNativeTimers : Bool; /** weather we should unref the reconnect timer when it iscreate automatically **/ @:optional var autoUnref : Bool; /** parameters of the WebSocket permessage-deflate extension (see ws module api docs). Set to false to disable. **/ @:optional var perMessageDeflate : { var threshold : Float; }; /** Either a single protocol string or an array of protocol strings. These strings are used to indicate sub-protocols,so that a single server can implement multiple WebSocket sub-protocols (for example, you might want one server tobe able to handle different types of interactions depending on the specified protocol) **/ @:optional var protocols : ts.AnyOf2<String, Array<String>>; });
	/**
		The Engine.IO client instance
	**/
	var engine : Dynamic; // TODO: var engine : engine_io_client.Socket;
	var _autoConnect : Bool;
	var _readyState : String;
	var _reconnecting : Bool;
	private final uri : Dynamic;
	var opts : {
		/**
			Should we force a new Manager for this connection?
		**/
		@:optional
		var forceNew : Bool;
		/**
			Should we multiplex our connection (reuse existing Manager) ?
		**/
		@:optional
		var multiplex : Bool;
		/**
			The path to get our client file from, in the case of the server
			serving it
		**/
		@:optional
		var path : String;
		/**
			Should we allow reconnections?
		**/
		@:optional
		var reconnection : Bool;
		/**
			How many reconnection attempts should we try?
		**/
		@:optional
		var reconnectionAttempts : Float;
		/**
			The time delay in milliseconds between reconnection attempts
		**/
		@:optional
		var reconnectionDelay : Float;
		/**
			The max time delay in milliseconds between reconnection attempts
		**/
		@:optional
		var reconnectionDelayMax : Float;
		/**
			Used in the exponential backoff jitter when reconnecting
		**/
		@:optional
		var randomizationFactor : Float;
		/**
			The timeout in milliseconds for our connection attempt
		**/
		@:optional
		var timeout : Float;
		/**
			Should we automatically connect?
		**/
		@:optional
		var autoConnect : Bool;
		/**
			the parser to use. Defaults to an instance of the Parser that ships with socket.io.
		**/
		@:optional
		var parser : Dynamic;
		/**
			The host that we're connecting to. Set from the URI passed when connecting
		**/
		@:optional
		var host : String;
		/**
			The hostname for our connection. Set from the URI passed when connecting
		**/
		@:optional
		var hostname : String;
		/**
			If this is a secure connection. Set from the URI passed when connecting
		**/
		@:optional
		var secure : Bool;
		/**
			The port for our connection. Set from the URI passed when connecting
		**/
		@:optional
		var port : ts.AnyOf2<String, Float>;
		/**
			Any query parameters in our uri. Set from the URI passed when connecting
		**/
		@:optional
		var query : haxe.DynamicAccess<Dynamic>;
		/**
			`http.Agent` to use, defaults to `false` (NodeJS only)
		**/
		@:optional
		var agent : ts.AnyOf2<String, Bool>;
		/**
			Whether the client should try to upgrade the transport from
			long-polling to something better.
		**/
		@:optional
		var upgrade : Bool;
		/**
			Forces base 64 encoding for polling transport even when XHR2
			responseType is available and WebSocket even if the used standard
			supports binary.
		**/
		@:optional
		var forceBase64 : Bool;
		/**
			The param name to use as our timestamp key
		**/
		@:optional
		var timestampParam : String;
		/**
			Whether to add the timestamp with each transport request. Note: this
			is ignored if the browser is IE or Android, in which case requests
			are always stamped
		**/
		@:optional
		var timestampRequests : Bool;
		/**
			A list of transports to try (in order). Engine.io always attempts to
			connect directly with the first one, provided the feature detection test
			for it passes.
		**/
		@:optional
		var transports : Array<String>;
		/**
			The port the policy server listens on
		**/
		@:optional
		var policyPost : Float;
		/**
			If true and if the previous websocket connection to the server succeeded,
			the connection attempt will bypass the normal upgrade process and will
			initially try websocket. A connection attempt following a transport error
			will use the normal upgrade process. It is recommended you turn this on
			only when using SSL/TLS connections, or if you know that your network does
			not block websockets.
		**/
		@:optional
		var rememberUpgrade : Bool;
		/**
			Are we only interested in transports that support binary?
		**/
		@:optional
		var onlyBinaryUpgrades : Bool;
		/**
			Timeout for xhr-polling requests in milliseconds (0) (only for polling transport)
		**/
		@:optional
		var requestTimeout : Float;
		/**
			Transport options for Node.js client (headers etc)
		**/
		@:optional
		var transportOptions : Dynamic;
		/**
			(SSL) Certificate, Private key and CA certificates to use for SSL.
			Can be used in Node.js client environment to manually specify
			certificate information.
		**/
		@:optional
		var pfx : String;
		/**
			(SSL) Private key to use for SSL. Can be used in Node.js client
			environment to manually specify certificate information.
		**/
		@:optional
		var key : String;
		/**
			(SSL) A string or passphrase for the private key or pfx. Can be
			used in Node.js client environment to manually specify certificate
			information.
		**/
		@:optional
		var passphrase : String;
		/**
			(SSL) Public x509 certificate to use. Can be used in Node.js client
			environment to manually specify certificate information.
		**/
		@:optional
		var cert : String;
		/**
			(SSL) An authority certificate or array of authority certificates to
			check the remote host against.. Can be used in Node.js client
			environment to manually specify certificate information.
		**/
		@:optional
		var ca : ts.AnyOf2<String, Array<String>>;
		/**
			(SSL) A string describing the ciphers to use or exclude. Consult the
			[cipher format list]
			(http://www.openssl.org/docs/apps/ciphers.html#CIPHER_LIST_FORMAT) for
			details on the format.. Can be used in Node.js client environment to
			manually specify certificate information.
		**/
		@:optional
		var ciphers : String;
		/**
			(SSL) If true, the server certificate is verified against the list of
			supplied CAs. An 'error' event is emitted if verification fails.
			Verification happens at the connection level, before the HTTP request
			is sent. Can be used in Node.js client environment to manually specify
			certificate information.
		**/
		@:optional
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
		@:optional
		var withCredentials : Bool;
		/**
			Whether to automatically close the connection whenever the beforeunload event is received.
		**/
		@:optional
		var closeOnBeforeunload : Bool;
		/**
			Whether to always use the native timeouts. This allows the client to
			reconnect when the native timeout functions are overridden, such as when
			mock clocks are installed.
		**/
		@:optional
		var useNativeTimers : Bool;
		/**
			weather we should unref the reconnect timer when it is
			create automatically
		**/
		@:optional
		var autoUnref : Bool;
		/**
			parameters of the WebSocket permessage-deflate extension (see ws module api docs). Set to false to disable.
		**/
		@:optional
		var perMessageDeflate : {
			var threshold : Float;
		};
		/**
			Either a single protocol string or an array of protocol strings. These strings are used to indicate sub-protocols,
			so that a single server can implement multiple WebSocket sub-protocols (for example, you might want one server to
			be able to handle different types of interactions depending on the specified protocol)
		**/
		@:optional
		var protocols : ts.AnyOf2<String, Array<String>>;
	};
	private var nsps : Dynamic;
	private var subs : Dynamic;
	private var backoff : Dynamic;
	private var setTimeoutFn : Dynamic;
	private var _reconnection : Dynamic;
	private var _reconnectionAttempts : Dynamic;
	private var _reconnectionDelay : Dynamic;
	private var _randomizationFactor : Dynamic;
	private var _reconnectionDelayMax : Dynamic;
	private var _timeout : Dynamic;
	private var encoder : Dynamic;
	private var decoder : Dynamic;
	private var skipReconnect : Dynamic;
	/**
		Sets the `reconnection` config.
	**/
	@:overload(function():Bool { })
	@:overload(function(?v:Bool):ts.AnyOf2<Bool, Manager<ListenEvents, EmitEvents>> { })
	function reconnection(v:Bool):Manager<ListenEvents, EmitEvents>;
	/**
		Sets the reconnection attempts config.
	**/
	@:overload(function():Float { })
	@:overload(function(?v:Float):ts.AnyOf2<Float, Manager<ListenEvents, EmitEvents>> { })
	function reconnectionAttempts(v:Float):Manager<ListenEvents, EmitEvents>;
	/**
		Sets the delay between reconnections.
	**/
	@:overload(function():Float { })
	@:overload(function(?v:Float):ts.AnyOf2<Float, Manager<ListenEvents, EmitEvents>> { })
	function reconnectionDelay(v:Float):Manager<ListenEvents, EmitEvents>;
	/**
		Sets the randomization factor
	**/
	@:overload(function():Float { })
	@:overload(function(?v:Float):ts.AnyOf2<Float, Manager<ListenEvents, EmitEvents>> { })
	function randomizationFactor(v:Float):Manager<ListenEvents, EmitEvents>;
	/**
		Sets the maximum delay between reconnections.
	**/
	@:overload(function():Float { })
	@:overload(function(?v:Float):ts.AnyOf2<Float, Manager<ListenEvents, EmitEvents>> { })
	function reconnectionDelayMax(v:Float):Manager<ListenEvents, EmitEvents>;
	/**
		Sets the connection timeout. `false` to disable
	**/
	@:overload(function():ts.AnyOf2<Float, Bool> { })
	@:overload(function(?v:ts.AnyOf2<Float, Bool>):ts.AnyOf3<Float, Bool, Manager<ListenEvents, EmitEvents>> { })
	function timeout(v:ts.AnyOf2<Float, Bool>):Manager<ListenEvents, EmitEvents>;
	/**
		Starts trying to reconnect if reconnection is enabled and we have not
		started reconnecting yet
	**/
	private var maybeReconnectOnOpen : Dynamic;
	/**
		Sets the current transport `socket`.
	**/
	function open(?fn:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Manager<ListenEvents, EmitEvents>;
	/**
		Alias for open()
	**/
	function connect(?fn:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Manager<ListenEvents, EmitEvents>;
	/**
		Called upon transport open.
	**/
	private var onopen : Dynamic;
	/**
		Called upon a ping.
	**/
	private var onping : Dynamic;
	/**
		Called with data.
	**/
	private var ondata : Dynamic;
	/**
		Called when parser fully decodes a packet.
	**/
	private var ondecoded : Dynamic;
	/**
		Called upon socket error.
	**/
	private var onerror : Dynamic;
	/**
		Creates a new socket for the given `nsp`.
	**/
	function socket(nsp:String, ?opts:{ /** the authentication payload sent when connecting to the Namespace **/ @:optional var auth : ts.AnyOf2<haxe.DynamicAccess<Dynamic>, (cb:(data:Dynamic) -> Void) -> Void>; }):Socket<socket_io.component_emitter.DefaultEventsMap, socket_io.component_emitter.DefaultEventsMap>;
	/**
		Called upon a socket close.
	**/
	function _destroy(socket:Socket<socket_io.component_emitter.DefaultEventsMap, socket_io.component_emitter.DefaultEventsMap>):Void;
	/**
		Writes a packet.
	**/
	function _packet(packet:{ @:optional var type : socket_io_parser.PacketType; @:optional var nsp : String; @:optional var data : Dynamic; @:optional var id : Float; @:optional var attachments : Float; @:optional var query : String; @:optional var options : Dynamic; }):Void;
	/**
		Clean up transport subscriptions and packet buffer.
	**/
	private var cleanup : Dynamic;
	/**
		Close the current socket.
	**/
	function _close():Void;
	/**
		Alias for close()
	**/
	private var disconnect : Dynamic;
	/**
		Called upon engine close.
	**/
	private var onclose : Dynamic;
	/**
		Attempt a reconnection.
	**/
	private var reconnect : Dynamic;
	/**
		Called upon successful reconnect.
	**/
	private var onreconnect : Dynamic;
	/**
		Adds the `listener` function as an event listener for `ev`.
	**/
	function on<Ev>(ev:Ev, listener:socket_io.component_emitter.FallbackToUntypedListener<Dynamic>):Manager<ListenEvents, EmitEvents>;
	/**
		Adds a one-time `listener` function as an event listener for `ev`.
	**/
	function once<Ev>(ev:Ev, listener:socket_io.component_emitter.FallbackToUntypedListener<Dynamic>):Manager<ListenEvents, EmitEvents>;
	/**
		Removes the `listener` function as an event listener for `ev`.
	**/
	function off<Ev>(?ev:Ev, ?listener:socket_io.component_emitter.FallbackToUntypedListener<Dynamic>):Manager<ListenEvents, EmitEvents>;
	/**
		Emits an event.
	**/
	function emit<Ev>(ev:Ev, args:haxe.extern.Rest<Any>):Manager<ListenEvents, EmitEvents>;
	/**
		Emits a reserved event.
		
		This method is `protected`, so that only a class extending
		`StrictEventEmitter` can emit its own reserved events.
	**/
	private function emitReserved<Ev>(ev:Ev, args:haxe.extern.Rest<Any>):Manager<ListenEvents, EmitEvents>;
	/**
		Removes the `listener` function as an event listener for `ev`.
	**/
	function removeListener<Ev>(?ev:Ev, ?listener:socket_io.component_emitter.FallbackToUntypedListener<Dynamic>):Manager<ListenEvents, EmitEvents>;
	/**
		Removes all `listener` function as an event listener for `ev`.
	**/
	function removeAllListeners<Ev>(?ev:Ev):Manager<ListenEvents, EmitEvents>;
	static var prototype : Manager<Dynamic, Dynamic>;
}