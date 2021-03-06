/* libspire_uhttp.vapi generated by valac.exe 0.20.1, do not modify. */

namespace edwinspire {
	namespace uHttp {
		[CCode (cheader_filename = "libspire_uhttp.h")]
		public class CacheableAddress : edwinspire.utils.FilesLinesArray {
			public Gee.HashMap<string,edwinspire.utils.BinaryData> cache;
			public CacheableAddress ();
			public bool is_cacheable (string file_name);
			public void load_config ();
			public edwinspire.utils.BinaryData return_file (string file_name);
		}
		[CCode (cheader_filename = "libspire_uhttp.h")]
		public class FormRequest : GLib.Object {
			public string path_file_tmp;
			public FormRequest ();
			public void decode (edwinspire.uHttp.RequestMethod method, Gee.HashMap<string,string> header, string? query, uint8[] data);
			public string to_string ();
			public edwinspire.uHttp.GET get_request { get; private set; }
			public edwinspire.uHttp.POST post_request { get; private set; }
		}
		[CCode (cheader_filename = "libspire_uhttp.h")]
		public class GET : edwinspire.uHttp.iFormValues, GLib.Object {
			public GET ();
			public void decode (string query_section);
		}
		[CCode (cheader_filename = "libspire_uhttp.h")]
		public class PHP_Support : edwinspire.utils.FileFunctions {
			public string Server_Addr;
			public string Server_Name;
			public string Server_Protocol;
			public string Server_Software;
			public PHP_Support ();
			public static bool is_script (string file, ref string new_name);
			public string run_script (string script, string document_root, string tmp_dir, ref edwinspire.uHttp.Request request);
		}
		[CCode (cheader_filename = "libspire_uhttp.h")]
		public class POST : edwinspire.uHttp.iFormValues, GLib.Object {
			public string path_file_tmp;
			public POST ();
			public void decode (Gee.HashMap<string,string> header, uint8[] data);
			[Description (blurb = "Boundary", nick = "Multi Part Form Boundary")]
			public string boundary { get; private set; }
			public bool is_multipart_form_data { get; private set; }
			public signal void file_uploaded (edwinspire.utils.BinaryData bin, string filename);
		}
		[CCode (cheader_filename = "libspire_uhttp.h")]
		public class POSTMultipartBlock : GLib.Object {
			public string path_file_tmp;
			public POSTMultipartBlock ();
			public string Filename ();
			public string Name ();
			public string Value ();
			public Gee.HashMap<string,string> all_values ();
			public static GLib.DataInputStream create_DataInputStream_from_data (uint8[] data);
			public void decode (uint8[] block);
			public Gee.HashMap<string,string> Header { get; private set; }
			public Gee.HashMap<string,string> Params { get; private set; }
			public signal void file_uploaded (edwinspire.utils.BinaryData bin, string filename);
		}
		[CCode (cheader_filename = "libspire_uhttp.h")]
		[Description (blurb = "", nick = "HTTP Request")]
		public class Request : GLib.Object {
			public edwinspire.uHttp.FormRequest Form;
			public Request ();
			public void from_lines (string lines);
			public void print ();
			public int ContentLength { get; }
			public uint8[] Data { get; set; }
			public Gee.HashMap<string,string> Header { get; private set; }
			public edwinspire.uHttp.RequestMethod Method { get; private set; }
			public string Path { get; private set; }
			public bool isWebSocketHandshake { get; private set; }
			public string url_query { get; private set; }
		}
		[CCode (cheader_filename = "libspire_uhttp.h")]
		[Description (blurb = "Response from server", nick = "HTTP Response")]
		public class Response : GLib.Object {
			public uint8[] Data;
			public Gee.HashMap<string,string> Header;
			public edwinspire.uHttp.StatusCode Status;
			public Response ();
			public static string HttpError (string error, string description = "", string title = "uHTTP Micro Web Server");
			public string ToString ();
		}
		[CCode (cheader_filename = "libspire_uhttp.h")]
		[Description (blurb = "Micro embebed HTTP Web Server", nick = "HTTP Server")]
		public class uHttpServer : GLib.Object {
			[Description (blurb = " Data Config uHTTP", nick = "Config uHTTP")]
			public edwinspire.uHttp.uHttpServerConfigFile Config;
			public int heartbeatseconds;
			[Description (blurb = "", nick = "Constructor uHttpServer")]
			public uHttpServer (int max_threads = 100);
			public static string EnumToXml (GLib.Type typeenum, bool fieldtextasbase64 = true);
			[Description (blurb = "Crea una Url unica automaticamente", nick = "GenUrl")]
			public static string GenUrl (string root = "/", string value = "Sf54+-dsfk%6md&bfpJ");
			public static uint8[] LoadFile (string Path);
			public uint8[] LoadServerFile (string path);
			public string PathLocalFile (string Filex);
			public static string ReadFile (string path);
			public string ReadServerFile (string path);
			public virtual bool connection_handler_virtual (edwinspire.uHttp.Request request, GLib.DataOutputStream dos);
			public static string get_extension_file (string file_name);
			[Description (blurb = "Run on MainLoop", nick = "Run Server")]
			public virtual void run ();
			[Description (blurb = "Run without MainLoop", nick = "Run Server")]
			public void run_without_mainloop ();
			public long save_file_into_temp_dir (string file, uint8[] data, bool replace = false);
			public long sendEvent (string data, GLib.DataOutputStream dos);
			public void sendEventHeader (GLib.DataOutputStream dos);
			[Description (blurb = "", nick = "Server Response")]
			public void serve_response (edwinspire.uHttp.Response response, GLib.DataOutputStream dos);
			public long upload_file (string path, string file, uint8[] data, bool replace = false);
			public long upload_file_on_documentroot (string subpath_file, uint8[] data, bool replace = false);
			public void upload_file_signal (edwinspire.utils.BinaryData binary, string filename);
			public long writeData (uint8[] data_, GLib.DataOutputStream dos);
			[Description (blurb = "Señal se dispara cuando una página no es encontrada en el servidor", nick = "Signal Request URL No Found")]
			public signal void NoFoundURL (edwinspire.uHttp.Request request);
			public signal void heartbeat (int seconds);
		}
		[CCode (cheader_filename = "libspire_uhttp.h")]
		public class uHttpServerConfigFile : edwinspire.utils.KeyValueFile {
			public edwinspire.uHttp.CacheableAddress Cache;
			public uHttpServerConfigFile ();
			public void load_config ();
		}
		[CCode (cheader_filename = "libspire_uhttp.h")]
		public interface iFormValues : GLib.Object {
			public Gee.HashMap<string,string> as_hasmap ();
			public static string get_data_as_string_valid_unichars (uint8[] d);
			public string get_value (string name, int i = 0);
			public bool has_key (string name, int i = 0);
			public string next_name_free (string name);
			public string set_value (string name, string value);
			public void set_value_direct (string name, string value);
			public string to_string ();
			public abstract Gee.HashMap<string,string> internal_hashmap { get; private set; }
		}
		[CCode (cheader_filename = "libspire_uhttp.h")]
		[Description (blurb = "", nick = "HTTP Version")]
		public enum HTTPVersion {
			@1_0,
			@1_1
		}
		[CCode (cheader_filename = "libspire_uhttp.h")]
		[Description (blurb = "", nick = "HTTP Request Method")]
		public enum RequestMethod {
			UNKNOW,
			GET,
			POST,
			HEAD,
			PUT,
			DELETE,
			OPTIONS,
			CONNECT
		}
		[CCode (cheader_filename = "libspire_uhttp.h")]
		[Description (blurb = "", nick = "HTTP Status Code")]
		public enum StatusCode {
			NONE,
			CONTINUE,
			SWITCHING_PROTOCOLS,
			PROCESSING,
			OK,
			CREATED,
			ACCEPTED,
			NON_AUTHORITATIVE,
			NO_CONTENT,
			RESET_CONTENT,
			PARTIAL_CONTENT,
			MULTI_STATUS,
			MULTIPLE_CHOICES,
			MOVED_PERMANENTLY,
			FOUND,
			MOVED_TEMPORARILY,
			SEE_OTHER,
			NOT_MODIFIED,
			USE_PROXY,
			NOT_APPEARING_IN_THIS_PROTOCOL,
			TEMPORARY_REDIRECT,
			BAD_REQUEST,
			UNAUTHORIZED,
			PAYMENT_REQUIRED,
			FORBIDDEN,
			NOT_FOUND,
			METHOD_NOT_ALLOWED,
			NOT_ACCEPTABLE,
			PROXY_AUTHENTICATION_REQUIRED,
			PROXY_UNAUTHORIZED,
			REQUEST_TIMEOUT,
			CONFLICT,
			GONE,
			LENGTH_REQUIRED,
			PRECONDITION_FAILED,
			REQUEST_ENTITY_TOO_LARGE,
			REQUEST_URI_TOO_LONG,
			UNSUPPORTED_MEDIA_TYPE,
			REQUESTED_RANGE_NOT_SATISFIABLE,
			INVALID_RANGE,
			EXPECTATION_FAILED,
			UNPROCESSABLE_ENTITY,
			LOCKED,
			FAILED_DEPENDENCY,
			INTERNAL_SERVER_ERROR,
			NOT_IMPLEMENTED,
			BAD_GATEWAY,
			SERVICE_UNAVAILABLE,
			GATEWAY_TIMEOUT,
			HTTP_VERSION_NOT_SUPPORTED,
			INSUFFICIENT_STORAGE,
			NOT_EXTENDED
		}
	}
}
