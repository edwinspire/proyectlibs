/* libspire_uhttp.h generated by valac 0.16.1, the Vala compiler, do not modify */


#ifndef ___HOME_EDWINSPIRE_DOCUMENTOS_DESARROLLOSOFTWARE_PROYECTOSSOFTWARE_NG_PROYECTS_LIBSPIRE_UHTTP_BIN_LNX_LIBSPIRE_UHTTP_H__
#define ___HOME_EDWINSPIRE_DOCUMENTOS_DESARROLLOSOFTWARE_PROYECTOSSOFTWARE_NG_PROYECTS_LIBSPIRE_UHTTP_BIN_LNX_LIBSPIRE_UHTTP_H__

#include <glib.h>
#include <glib-object.h>
#include <stdlib.h>
#include <string.h>
#include <gee.h>
#include <gio/gio.h>
#include "libspire_utilities.h"

G_BEGIN_DECLS


#define EDWINSPIRE_UHTTP_TYPE_POST_MULTIPART_BLOCK (edwinspire_uhttp_post_multipart_block_get_type ())
#define EDWINSPIRE_UHTTP_POST_MULTIPART_BLOCK(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), EDWINSPIRE_UHTTP_TYPE_POST_MULTIPART_BLOCK, edwinspireuHttpPOSTMultipartBlock))
#define EDWINSPIRE_UHTTP_POST_MULTIPART_BLOCK_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), EDWINSPIRE_UHTTP_TYPE_POST_MULTIPART_BLOCK, edwinspireuHttpPOSTMultipartBlockClass))
#define EDWINSPIRE_UHTTP_IS_POST_MULTIPART_BLOCK(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), EDWINSPIRE_UHTTP_TYPE_POST_MULTIPART_BLOCK))
#define EDWINSPIRE_UHTTP_IS_POST_MULTIPART_BLOCK_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), EDWINSPIRE_UHTTP_TYPE_POST_MULTIPART_BLOCK))
#define EDWINSPIRE_UHTTP_POST_MULTIPART_BLOCK_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), EDWINSPIRE_UHTTP_TYPE_POST_MULTIPART_BLOCK, edwinspireuHttpPOSTMultipartBlockClass))

typedef struct _edwinspireuHttpPOSTMultipartBlock edwinspireuHttpPOSTMultipartBlock;
typedef struct _edwinspireuHttpPOSTMultipartBlockClass edwinspireuHttpPOSTMultipartBlockClass;
typedef struct _edwinspireuHttpPOSTMultipartBlockPrivate edwinspireuHttpPOSTMultipartBlockPrivate;

#define EDWINSPIRE_UHTTP_TYPE_IFORM_VALUES (edwinspire_uhttp_iform_values_get_type ())
#define EDWINSPIRE_UHTTP_IFORM_VALUES(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), EDWINSPIRE_UHTTP_TYPE_IFORM_VALUES, edwinspireuHttpiFormValues))
#define EDWINSPIRE_UHTTP_IS_IFORM_VALUES(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), EDWINSPIRE_UHTTP_TYPE_IFORM_VALUES))
#define EDWINSPIRE_UHTTP_IFORM_VALUES_GET_INTERFACE(obj) (G_TYPE_INSTANCE_GET_INTERFACE ((obj), EDWINSPIRE_UHTTP_TYPE_IFORM_VALUES, edwinspireuHttpiFormValuesIface))

typedef struct _edwinspireuHttpiFormValues edwinspireuHttpiFormValues;
typedef struct _edwinspireuHttpiFormValuesIface edwinspireuHttpiFormValuesIface;

#define EDWINSPIRE_UHTTP_TYPE_GET (edwinspire_uhttp_get_get_type ())
#define EDWINSPIRE_UHTTP_GET(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), EDWINSPIRE_UHTTP_TYPE_GET, edwinspireuHttpGET))
#define EDWINSPIRE_UHTTP_GET_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), EDWINSPIRE_UHTTP_TYPE_GET, edwinspireuHttpGETClass))
#define EDWINSPIRE_UHTTP_IS_GET(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), EDWINSPIRE_UHTTP_TYPE_GET))
#define EDWINSPIRE_UHTTP_IS_GET_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), EDWINSPIRE_UHTTP_TYPE_GET))
#define EDWINSPIRE_UHTTP_GET_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), EDWINSPIRE_UHTTP_TYPE_GET, edwinspireuHttpGETClass))

typedef struct _edwinspireuHttpGET edwinspireuHttpGET;
typedef struct _edwinspireuHttpGETClass edwinspireuHttpGETClass;
typedef struct _edwinspireuHttpGETPrivate edwinspireuHttpGETPrivate;

#define EDWINSPIRE_UHTTP_TYPE_POST (edwinspire_uhttp_post_get_type ())
#define EDWINSPIRE_UHTTP_POST(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), EDWINSPIRE_UHTTP_TYPE_POST, edwinspireuHttpPOST))
#define EDWINSPIRE_UHTTP_POST_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), EDWINSPIRE_UHTTP_TYPE_POST, edwinspireuHttpPOSTClass))
#define EDWINSPIRE_UHTTP_IS_POST(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), EDWINSPIRE_UHTTP_TYPE_POST))
#define EDWINSPIRE_UHTTP_IS_POST_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), EDWINSPIRE_UHTTP_TYPE_POST))
#define EDWINSPIRE_UHTTP_POST_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), EDWINSPIRE_UHTTP_TYPE_POST, edwinspireuHttpPOSTClass))

typedef struct _edwinspireuHttpPOST edwinspireuHttpPOST;
typedef struct _edwinspireuHttpPOSTClass edwinspireuHttpPOSTClass;
typedef struct _edwinspireuHttpPOSTPrivate edwinspireuHttpPOSTPrivate;

#define EDWINSPIRE_UHTTP_TYPE_FORM_REQUEST (edwinspire_uhttp_form_request_get_type ())
#define EDWINSPIRE_UHTTP_FORM_REQUEST(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), EDWINSPIRE_UHTTP_TYPE_FORM_REQUEST, edwinspireuHttpFormRequest))
#define EDWINSPIRE_UHTTP_FORM_REQUEST_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), EDWINSPIRE_UHTTP_TYPE_FORM_REQUEST, edwinspireuHttpFormRequestClass))
#define EDWINSPIRE_UHTTP_IS_FORM_REQUEST(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), EDWINSPIRE_UHTTP_TYPE_FORM_REQUEST))
#define EDWINSPIRE_UHTTP_IS_FORM_REQUEST_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), EDWINSPIRE_UHTTP_TYPE_FORM_REQUEST))
#define EDWINSPIRE_UHTTP_FORM_REQUEST_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), EDWINSPIRE_UHTTP_TYPE_FORM_REQUEST, edwinspireuHttpFormRequestClass))

typedef struct _edwinspireuHttpFormRequest edwinspireuHttpFormRequest;
typedef struct _edwinspireuHttpFormRequestClass edwinspireuHttpFormRequestClass;
typedef struct _edwinspireuHttpFormRequestPrivate edwinspireuHttpFormRequestPrivate;

#define EDWINSPIRE_UHTTP_TYPE_REQUEST_METHOD (edwinspire_uhttp_request_method_get_type ())

#define EDWINSPIRE_UHTTP_TYPE_HTTP_VERSION (edwinspire_uhttp_http_version_get_type ())

#define EDWINSPIRE_UHTTP_TYPE_STATUS_CODE (edwinspire_uhttp_status_code_get_type ())

#define EDWINSPIRE_UHTTP_TYPE_REQUEST (edwinspire_uhttp_request_get_type ())
#define EDWINSPIRE_UHTTP_REQUEST(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), EDWINSPIRE_UHTTP_TYPE_REQUEST, edwinspireuHttpRequest))
#define EDWINSPIRE_UHTTP_REQUEST_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), EDWINSPIRE_UHTTP_TYPE_REQUEST, edwinspireuHttpRequestClass))
#define EDWINSPIRE_UHTTP_IS_REQUEST(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), EDWINSPIRE_UHTTP_TYPE_REQUEST))
#define EDWINSPIRE_UHTTP_IS_REQUEST_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), EDWINSPIRE_UHTTP_TYPE_REQUEST))
#define EDWINSPIRE_UHTTP_REQUEST_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), EDWINSPIRE_UHTTP_TYPE_REQUEST, edwinspireuHttpRequestClass))

typedef struct _edwinspireuHttpRequest edwinspireuHttpRequest;
typedef struct _edwinspireuHttpRequestClass edwinspireuHttpRequestClass;
typedef struct _edwinspireuHttpRequestPrivate edwinspireuHttpRequestPrivate;

#define EDWINSPIRE_UHTTP_TYPE_RESPONSE (edwinspire_uhttp_response_get_type ())
#define EDWINSPIRE_UHTTP_RESPONSE(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), EDWINSPIRE_UHTTP_TYPE_RESPONSE, edwinspireuHttpResponse))
#define EDWINSPIRE_UHTTP_RESPONSE_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), EDWINSPIRE_UHTTP_TYPE_RESPONSE, edwinspireuHttpResponseClass))
#define EDWINSPIRE_UHTTP_IS_RESPONSE(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), EDWINSPIRE_UHTTP_TYPE_RESPONSE))
#define EDWINSPIRE_UHTTP_IS_RESPONSE_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), EDWINSPIRE_UHTTP_TYPE_RESPONSE))
#define EDWINSPIRE_UHTTP_RESPONSE_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), EDWINSPIRE_UHTTP_TYPE_RESPONSE, edwinspireuHttpResponseClass))

typedef struct _edwinspireuHttpResponse edwinspireuHttpResponse;
typedef struct _edwinspireuHttpResponseClass edwinspireuHttpResponseClass;
typedef struct _edwinspireuHttpResponsePrivate edwinspireuHttpResponsePrivate;

#define EDWINSPIRE_UHTTP_TYPE_CACHEABLE_ADDRESS (edwinspire_uhttp_cacheable_address_get_type ())
#define EDWINSPIRE_UHTTP_CACHEABLE_ADDRESS(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), EDWINSPIRE_UHTTP_TYPE_CACHEABLE_ADDRESS, edwinspireuHttpCacheableAddress))
#define EDWINSPIRE_UHTTP_CACHEABLE_ADDRESS_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), EDWINSPIRE_UHTTP_TYPE_CACHEABLE_ADDRESS, edwinspireuHttpCacheableAddressClass))
#define EDWINSPIRE_UHTTP_IS_CACHEABLE_ADDRESS(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), EDWINSPIRE_UHTTP_TYPE_CACHEABLE_ADDRESS))
#define EDWINSPIRE_UHTTP_IS_CACHEABLE_ADDRESS_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), EDWINSPIRE_UHTTP_TYPE_CACHEABLE_ADDRESS))
#define EDWINSPIRE_UHTTP_CACHEABLE_ADDRESS_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), EDWINSPIRE_UHTTP_TYPE_CACHEABLE_ADDRESS, edwinspireuHttpCacheableAddressClass))

typedef struct _edwinspireuHttpCacheableAddress edwinspireuHttpCacheableAddress;
typedef struct _edwinspireuHttpCacheableAddressClass edwinspireuHttpCacheableAddressClass;
typedef struct _edwinspireuHttpCacheableAddressPrivate edwinspireuHttpCacheableAddressPrivate;

#define EDWINSPIRE_UHTTP_TYPE_UHTTP_SERVER_CONFIG_FILE (edwinspire_uhttp_uhttp_server_config_file_get_type ())
#define EDWINSPIRE_UHTTP_UHTTP_SERVER_CONFIG_FILE(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), EDWINSPIRE_UHTTP_TYPE_UHTTP_SERVER_CONFIG_FILE, edwinspireuHttpuHttpServerConfigFile))
#define EDWINSPIRE_UHTTP_UHTTP_SERVER_CONFIG_FILE_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), EDWINSPIRE_UHTTP_TYPE_UHTTP_SERVER_CONFIG_FILE, edwinspireuHttpuHttpServerConfigFileClass))
#define EDWINSPIRE_UHTTP_IS_UHTTP_SERVER_CONFIG_FILE(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), EDWINSPIRE_UHTTP_TYPE_UHTTP_SERVER_CONFIG_FILE))
#define EDWINSPIRE_UHTTP_IS_UHTTP_SERVER_CONFIG_FILE_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), EDWINSPIRE_UHTTP_TYPE_UHTTP_SERVER_CONFIG_FILE))
#define EDWINSPIRE_UHTTP_UHTTP_SERVER_CONFIG_FILE_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), EDWINSPIRE_UHTTP_TYPE_UHTTP_SERVER_CONFIG_FILE, edwinspireuHttpuHttpServerConfigFileClass))

typedef struct _edwinspireuHttpuHttpServerConfigFile edwinspireuHttpuHttpServerConfigFile;
typedef struct _edwinspireuHttpuHttpServerConfigFileClass edwinspireuHttpuHttpServerConfigFileClass;
typedef struct _edwinspireuHttpuHttpServerConfigFilePrivate edwinspireuHttpuHttpServerConfigFilePrivate;

#define EDWINSPIRE_UHTTP_TYPE_UHTTP_SERVER (edwinspire_uhttp_uhttp_server_get_type ())
#define EDWINSPIRE_UHTTP_UHTTP_SERVER(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), EDWINSPIRE_UHTTP_TYPE_UHTTP_SERVER, edwinspireuHttpuHttpServer))
#define EDWINSPIRE_UHTTP_UHTTP_SERVER_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), EDWINSPIRE_UHTTP_TYPE_UHTTP_SERVER, edwinspireuHttpuHttpServerClass))
#define EDWINSPIRE_UHTTP_IS_UHTTP_SERVER(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), EDWINSPIRE_UHTTP_TYPE_UHTTP_SERVER))
#define EDWINSPIRE_UHTTP_IS_UHTTP_SERVER_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), EDWINSPIRE_UHTTP_TYPE_UHTTP_SERVER))
#define EDWINSPIRE_UHTTP_UHTTP_SERVER_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), EDWINSPIRE_UHTTP_TYPE_UHTTP_SERVER, edwinspireuHttpuHttpServerClass))

typedef struct _edwinspireuHttpuHttpServer edwinspireuHttpuHttpServer;
typedef struct _edwinspireuHttpuHttpServerClass edwinspireuHttpuHttpServerClass;
typedef struct _edwinspireuHttpuHttpServerPrivate edwinspireuHttpuHttpServerPrivate;

#define EDWINSPIRE_UHTTP_TYPE_PHP_SUPPORT (edwinspire_uhttp_php_support_get_type ())
#define EDWINSPIRE_UHTTP_PHP_SUPPORT(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), EDWINSPIRE_UHTTP_TYPE_PHP_SUPPORT, edwinspireuHttpPHP_Support))
#define EDWINSPIRE_UHTTP_PHP_SUPPORT_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), EDWINSPIRE_UHTTP_TYPE_PHP_SUPPORT, edwinspireuHttpPHP_SupportClass))
#define EDWINSPIRE_UHTTP_IS_PHP_SUPPORT(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), EDWINSPIRE_UHTTP_TYPE_PHP_SUPPORT))
#define EDWINSPIRE_UHTTP_IS_PHP_SUPPORT_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), EDWINSPIRE_UHTTP_TYPE_PHP_SUPPORT))
#define EDWINSPIRE_UHTTP_PHP_SUPPORT_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), EDWINSPIRE_UHTTP_TYPE_PHP_SUPPORT, edwinspireuHttpPHP_SupportClass))

typedef struct _edwinspireuHttpPHP_Support edwinspireuHttpPHP_Support;
typedef struct _edwinspireuHttpPHP_SupportClass edwinspireuHttpPHP_SupportClass;
typedef struct _edwinspireuHttpPHP_SupportPrivate edwinspireuHttpPHP_SupportPrivate;

struct _edwinspireuHttpPOSTMultipartBlock {
	GObject parent_instance;
	edwinspireuHttpPOSTMultipartBlockPrivate * priv;
	gchar* path_file_tmp;
};

struct _edwinspireuHttpPOSTMultipartBlockClass {
	GObjectClass parent_class;
};

struct _edwinspireuHttpiFormValuesIface {
	GTypeInterface parent_iface;
	GeeHashMap* (*get_internal_hashmap) (edwinspireuHttpiFormValues* self);
	void (*set_internal_hashmap) (edwinspireuHttpiFormValues* self, GeeHashMap* value);
};

struct _edwinspireuHttpGET {
	GObject parent_instance;
	edwinspireuHttpGETPrivate * priv;
};

struct _edwinspireuHttpGETClass {
	GObjectClass parent_class;
};

struct _edwinspireuHttpPOST {
	GObject parent_instance;
	edwinspireuHttpPOSTPrivate * priv;
	gchar* path_file_tmp;
};

struct _edwinspireuHttpPOSTClass {
	GObjectClass parent_class;
};

struct _edwinspireuHttpFormRequest {
	GObject parent_instance;
	edwinspireuHttpFormRequestPrivate * priv;
	gchar* path_file_tmp;
};

struct _edwinspireuHttpFormRequestClass {
	GObjectClass parent_class;
};

typedef enum  {
	EDWINSPIRE_UHTTP_REQUEST_METHOD_UNKNOW,
	EDWINSPIRE_UHTTP_REQUEST_METHOD_GET,
	EDWINSPIRE_UHTTP_REQUEST_METHOD_POST,
	EDWINSPIRE_UHTTP_REQUEST_METHOD_HEAD,
	EDWINSPIRE_UHTTP_REQUEST_METHOD_PUT,
	EDWINSPIRE_UHTTP_REQUEST_METHOD_DELETE,
	EDWINSPIRE_UHTTP_REQUEST_METHOD_OPTIONS,
	EDWINSPIRE_UHTTP_REQUEST_METHOD_CONNECT
} edwinspireuHttpRequestMethod;

typedef enum  {
	EDWINSPIRE_UHTTP_HTTP_VERSION_1_0,
	EDWINSPIRE_UHTTP_HTTP_VERSION_1_1
} edwinspireuHttpHTTPVersion;

typedef enum  {
	EDWINSPIRE_UHTTP_STATUS_CODE_NONE,
	EDWINSPIRE_UHTTP_STATUS_CODE_CONTINUE,
	EDWINSPIRE_UHTTP_STATUS_CODE_SWITCHING_PROTOCOLS,
	EDWINSPIRE_UHTTP_STATUS_CODE_PROCESSING,
	EDWINSPIRE_UHTTP_STATUS_CODE_OK,
	EDWINSPIRE_UHTTP_STATUS_CODE_CREATED,
	EDWINSPIRE_UHTTP_STATUS_CODE_ACCEPTED,
	EDWINSPIRE_UHTTP_STATUS_CODE_NON_AUTHORITATIVE,
	EDWINSPIRE_UHTTP_STATUS_CODE_NO_CONTENT,
	EDWINSPIRE_UHTTP_STATUS_CODE_RESET_CONTENT,
	EDWINSPIRE_UHTTP_STATUS_CODE_PARTIAL_CONTENT,
	EDWINSPIRE_UHTTP_STATUS_CODE_MULTI_STATUS,
	EDWINSPIRE_UHTTP_STATUS_CODE_MULTIPLE_CHOICES,
	EDWINSPIRE_UHTTP_STATUS_CODE_MOVED_PERMANENTLY,
	EDWINSPIRE_UHTTP_STATUS_CODE_FOUND,
	EDWINSPIRE_UHTTP_STATUS_CODE_MOVED_TEMPORARILY,
	EDWINSPIRE_UHTTP_STATUS_CODE_SEE_OTHER,
	EDWINSPIRE_UHTTP_STATUS_CODE_NOT_MODIFIED,
	EDWINSPIRE_UHTTP_STATUS_CODE_USE_PROXY,
	EDWINSPIRE_UHTTP_STATUS_CODE_NOT_APPEARING_IN_THIS_PROTOCOL,
	EDWINSPIRE_UHTTP_STATUS_CODE_TEMPORARY_REDIRECT,
	EDWINSPIRE_UHTTP_STATUS_CODE_BAD_REQUEST,
	EDWINSPIRE_UHTTP_STATUS_CODE_UNAUTHORIZED,
	EDWINSPIRE_UHTTP_STATUS_CODE_PAYMENT_REQUIRED,
	EDWINSPIRE_UHTTP_STATUS_CODE_FORBIDDEN,
	EDWINSPIRE_UHTTP_STATUS_CODE_NOT_FOUND,
	EDWINSPIRE_UHTTP_STATUS_CODE_METHOD_NOT_ALLOWED,
	EDWINSPIRE_UHTTP_STATUS_CODE_NOT_ACCEPTABLE,
	EDWINSPIRE_UHTTP_STATUS_CODE_PROXY_AUTHENTICATION_REQUIRED,
	EDWINSPIRE_UHTTP_STATUS_CODE_PROXY_UNAUTHORIZED,
	EDWINSPIRE_UHTTP_STATUS_CODE_REQUEST_TIMEOUT,
	EDWINSPIRE_UHTTP_STATUS_CODE_CONFLICT,
	EDWINSPIRE_UHTTP_STATUS_CODE_GONE,
	EDWINSPIRE_UHTTP_STATUS_CODE_LENGTH_REQUIRED,
	EDWINSPIRE_UHTTP_STATUS_CODE_PRECONDITION_FAILED,
	EDWINSPIRE_UHTTP_STATUS_CODE_REQUEST_ENTITY_TOO_LARGE,
	EDWINSPIRE_UHTTP_STATUS_CODE_REQUEST_URI_TOO_LONG,
	EDWINSPIRE_UHTTP_STATUS_CODE_UNSUPPORTED_MEDIA_TYPE,
	EDWINSPIRE_UHTTP_STATUS_CODE_REQUESTED_RANGE_NOT_SATISFIABLE,
	EDWINSPIRE_UHTTP_STATUS_CODE_INVALID_RANGE,
	EDWINSPIRE_UHTTP_STATUS_CODE_EXPECTATION_FAILED,
	EDWINSPIRE_UHTTP_STATUS_CODE_UNPROCESSABLE_ENTITY,
	EDWINSPIRE_UHTTP_STATUS_CODE_LOCKED,
	EDWINSPIRE_UHTTP_STATUS_CODE_FAILED_DEPENDENCY,
	EDWINSPIRE_UHTTP_STATUS_CODE_INTERNAL_SERVER_ERROR,
	EDWINSPIRE_UHTTP_STATUS_CODE_NOT_IMPLEMENTED,
	EDWINSPIRE_UHTTP_STATUS_CODE_BAD_GATEWAY,
	EDWINSPIRE_UHTTP_STATUS_CODE_SERVICE_UNAVAILABLE,
	EDWINSPIRE_UHTTP_STATUS_CODE_GATEWAY_TIMEOUT,
	EDWINSPIRE_UHTTP_STATUS_CODE_HTTP_VERSION_NOT_SUPPORTED,
	EDWINSPIRE_UHTTP_STATUS_CODE_INSUFFICIENT_STORAGE,
	EDWINSPIRE_UHTTP_STATUS_CODE_NOT_EXTENDED
} edwinspireuHttpStatusCode;

struct _edwinspireuHttpRequest {
	GObject parent_instance;
	edwinspireuHttpRequestPrivate * priv;
	edwinspireuHttpFormRequest* Form;
};

struct _edwinspireuHttpRequestClass {
	GObjectClass parent_class;
};

struct _edwinspireuHttpResponse {
	GObject parent_instance;
	edwinspireuHttpResponsePrivate * priv;
	guint8* Data;
	gint Data_length1;
	edwinspireuHttpStatusCode Status;
	GeeHashMap* Header;
};

struct _edwinspireuHttpResponseClass {
	GObjectClass parent_class;
};

struct _edwinspireuHttpCacheableAddress {
	edwinspireutilsFilesLinesArray parent_instance;
	edwinspireuHttpCacheableAddressPrivate * priv;
	GeeHashMap* cache;
};

struct _edwinspireuHttpCacheableAddressClass {
	edwinspireutilsFilesLinesArrayClass parent_class;
};

struct _edwinspireuHttpuHttpServerConfigFile {
	edwinspireutilsKeyValueFile parent_instance;
	edwinspireuHttpuHttpServerConfigFilePrivate * priv;
	edwinspireuHttpCacheableAddress* Cache;
};

struct _edwinspireuHttpuHttpServerConfigFileClass {
	edwinspireutilsKeyValueFileClass parent_class;
};

struct _edwinspireuHttpuHttpServer {
	GObject parent_instance;
	edwinspireuHttpuHttpServerPrivate * priv;
	gint heartbeatseconds;
	edwinspireuHttpuHttpServerConfigFile* Config;
};

struct _edwinspireuHttpuHttpServerClass {
	GObjectClass parent_class;
	void (*run) (edwinspireuHttpuHttpServer* self);
	gboolean (*connection_handler_virtual) (edwinspireuHttpuHttpServer* self, edwinspireuHttpRequest* request, GDataOutputStream* dos);
};

struct _edwinspireuHttpPHP_Support {
	edwinspireutilsFileFunctions parent_instance;
	edwinspireuHttpPHP_SupportPrivate * priv;
	gchar* Server_Addr;
	gchar* Server_Name;
	gchar* Server_Software;
	gchar* Server_Protocol;
};

struct _edwinspireuHttpPHP_SupportClass {
	edwinspireutilsFileFunctionsClass parent_class;
};


GType edwinspire_uhttp_post_multipart_block_get_type (void) G_GNUC_CONST;
edwinspireuHttpPOSTMultipartBlock* edwinspire_uhttp_post_multipart_block_new (void);
edwinspireuHttpPOSTMultipartBlock* edwinspire_uhttp_post_multipart_block_construct (GType object_type);
GeeHashMap* edwinspire_uhttp_post_multipart_block_all_values (edwinspireuHttpPOSTMultipartBlock* self);
gchar* edwinspire_uhttp_post_multipart_block_Name (edwinspireuHttpPOSTMultipartBlock* self);
gchar* edwinspire_uhttp_post_multipart_block_Filename (edwinspireuHttpPOSTMultipartBlock* self);
gchar* edwinspire_uhttp_post_multipart_block_Value (edwinspireuHttpPOSTMultipartBlock* self);
GDataInputStream* edwinspire_uhttp_post_multipart_block_create_DataInputStream_from_data (guint8* data, int data_length1);
void edwinspire_uhttp_post_multipart_block_decode (edwinspireuHttpPOSTMultipartBlock* self, guint8* block, int block_length1);
GeeHashMap* edwinspire_uhttp_post_multipart_block_get_Header (edwinspireuHttpPOSTMultipartBlock* self);
GeeHashMap* edwinspire_uhttp_post_multipart_block_get_Params (edwinspireuHttpPOSTMultipartBlock* self);
GType edwinspire_uhttp_iform_values_get_type (void) G_GNUC_CONST;
gchar* edwinspire_uhttp_iform_values_set_value (edwinspireuHttpiFormValues* self, const gchar* name, const gchar* value);
void edwinspire_uhttp_iform_values_set_value_direct (edwinspireuHttpiFormValues* self, const gchar* name, const gchar* value);
gchar* edwinspire_uhttp_iform_values_next_name_free (edwinspireuHttpiFormValues* self, const gchar* name);
gchar* edwinspire_uhttp_iform_values_get_value (edwinspireuHttpiFormValues* self, const gchar* name, gint i);
gboolean edwinspire_uhttp_iform_values_has_key (edwinspireuHttpiFormValues* self, const gchar* name, gint i);
GeeHashMap* edwinspire_uhttp_iform_values_as_hasmap (edwinspireuHttpiFormValues* self);
gchar* edwinspire_uhttp_iform_values_to_string (edwinspireuHttpiFormValues* self);
gchar* edwinspire_uhttp_iform_values_get_data_as_string_valid_unichars (guint8* d, int d_length1);
GeeHashMap* edwinspire_uhttp_iform_values_get_internal_hashmap (edwinspireuHttpiFormValues* self);
GType edwinspire_uhttp_get_get_type (void) G_GNUC_CONST;
edwinspireuHttpGET* edwinspire_uhttp_get_new (void);
edwinspireuHttpGET* edwinspire_uhttp_get_construct (GType object_type);
void edwinspire_uhttp_get_decode (edwinspireuHttpGET* self, const gchar* query_section);
GType edwinspire_uhttp_post_get_type (void) G_GNUC_CONST;
edwinspireuHttpPOST* edwinspire_uhttp_post_new (void);
edwinspireuHttpPOST* edwinspire_uhttp_post_construct (GType object_type);
void edwinspire_uhttp_post_decode (edwinspireuHttpPOST* self, GeeHashMap* header, guint8* data, int data_length1);
gboolean edwinspire_uhttp_post_get_is_multipart_form_data (edwinspireuHttpPOST* self);
const gchar* edwinspire_uhttp_post_get_boundary (edwinspireuHttpPOST* self);
GType edwinspire_uhttp_form_request_get_type (void) G_GNUC_CONST;
edwinspireuHttpFormRequest* edwinspire_uhttp_form_request_new (void);
edwinspireuHttpFormRequest* edwinspire_uhttp_form_request_construct (GType object_type);
gchar* edwinspire_uhttp_form_request_to_string (edwinspireuHttpFormRequest* self);
GType edwinspire_uhttp_request_method_get_type (void) G_GNUC_CONST;
void edwinspire_uhttp_form_request_decode (edwinspireuHttpFormRequest* self, edwinspireuHttpRequestMethod method, GeeHashMap* header, const gchar* query, guint8* data, int data_length1);
edwinspireuHttpGET* edwinspire_uhttp_form_request_get_get_request (edwinspireuHttpFormRequest* self);
edwinspireuHttpPOST* edwinspire_uhttp_form_request_get_post_request (edwinspireuHttpFormRequest* self);
GType edwinspire_uhttp_http_version_get_type (void) G_GNUC_CONST;
GType edwinspire_uhttp_status_code_get_type (void) G_GNUC_CONST;
GType edwinspire_uhttp_request_get_type (void) G_GNUC_CONST;
edwinspireuHttpRequest* edwinspire_uhttp_request_new (void);
edwinspireuHttpRequest* edwinspire_uhttp_request_construct (GType object_type);
void edwinspire_uhttp_request_from_lines (edwinspireuHttpRequest* self, const gchar* lines);
void edwinspire_uhttp_request_print (edwinspireuHttpRequest* self);
edwinspireuHttpRequestMethod edwinspire_uhttp_request_get_Method (edwinspireuHttpRequest* self);
const gchar* edwinspire_uhttp_request_get_Path (edwinspireuHttpRequest* self);
const gchar* edwinspire_uhttp_request_get_url_query (edwinspireuHttpRequest* self);
GeeHashMap* edwinspire_uhttp_request_get_Header (edwinspireuHttpRequest* self);
gboolean edwinspire_uhttp_request_get_isWebSocketHandshake (edwinspireuHttpRequest* self);
gint edwinspire_uhttp_request_get_ContentLength (edwinspireuHttpRequest* self);
guint8* edwinspire_uhttp_request_get_Data (edwinspireuHttpRequest* self, int* result_length1);
void edwinspire_uhttp_request_set_Data (edwinspireuHttpRequest* self, guint8* value, int value_length1);
GType edwinspire_uhttp_response_get_type (void) G_GNUC_CONST;
edwinspireuHttpResponse* edwinspire_uhttp_response_new (void);
edwinspireuHttpResponse* edwinspire_uhttp_response_construct (GType object_type);
gchar* edwinspire_uhttp_response_ToString (edwinspireuHttpResponse* self);
gchar* edwinspire_uhttp_response_HttpError (const gchar* _error_, const gchar* description, const gchar* title);
GType edwinspire_uhttp_cacheable_address_get_type (void) G_GNUC_CONST;
edwinspireuHttpCacheableAddress* edwinspire_uhttp_cacheable_address_new (void);
edwinspireuHttpCacheableAddress* edwinspire_uhttp_cacheable_address_construct (GType object_type);
void edwinspire_uhttp_cacheable_address_load_config (edwinspireuHttpCacheableAddress* self);
gboolean edwinspire_uhttp_cacheable_address_is_cacheable (edwinspireuHttpCacheableAddress* self, const gchar* file_name);
edwinspireutilsBinaryData* edwinspire_uhttp_cacheable_address_return_file (edwinspireuHttpCacheableAddress* self, const gchar* file_name);
GType edwinspire_uhttp_uhttp_server_config_file_get_type (void) G_GNUC_CONST;
edwinspireuHttpuHttpServerConfigFile* edwinspire_uhttp_uhttp_server_config_file_new (void);
edwinspireuHttpuHttpServerConfigFile* edwinspire_uhttp_uhttp_server_config_file_construct (GType object_type);
void edwinspire_uhttp_uhttp_server_config_file_load_config (edwinspireuHttpuHttpServerConfigFile* self);
GType edwinspire_uhttp_uhttp_server_get_type (void) G_GNUC_CONST;
edwinspireuHttpuHttpServer* edwinspire_uhttp_uhttp_server_new (gint max_threads);
edwinspireuHttpuHttpServer* edwinspire_uhttp_uhttp_server_construct (GType object_type, gint max_threads);
gchar* edwinspire_uhttp_uhttp_server_EnumToXml (GType typeenum, gboolean fieldtextasbase64);
void edwinspire_uhttp_uhttp_server_run (edwinspireuHttpuHttpServer* self);
void edwinspire_uhttp_uhttp_server_run_without_mainloop (edwinspireuHttpuHttpServer* self);
glong edwinspire_uhttp_uhttp_server_upload_file_on_documentroot (edwinspireuHttpuHttpServer* self, const gchar* subpath_file, guint8* data, int data_length1, gboolean replace);
glong edwinspire_uhttp_uhttp_server_upload_file (edwinspireuHttpuHttpServer* self, const gchar* path, const gchar* file, guint8* data, int data_length1, gboolean replace);
glong edwinspire_uhttp_uhttp_server_save_file_into_temp_dir (edwinspireuHttpuHttpServer* self, const gchar* file, guint8* data, int data_length1, gboolean replace);
gchar* edwinspire_uhttp_uhttp_server_GenUrl (const gchar* root, const gchar* value);
gboolean edwinspire_uhttp_uhttp_server_connection_handler_virtual (edwinspireuHttpuHttpServer* self, edwinspireuHttpRequest* request, GDataOutputStream* dos);
void edwinspire_uhttp_uhttp_server_upload_file_signal (edwinspireuHttpuHttpServer* self, edwinspireutilsBinaryData* binary, const gchar* filename);
void edwinspire_uhttp_uhttp_server_serve_response (edwinspireuHttpuHttpServer* self, edwinspireuHttpResponse* response, GDataOutputStream* dos);
glong edwinspire_uhttp_uhttp_server_writeData (edwinspireuHttpuHttpServer* self, guint8* data_, int data__length1, GDataOutputStream* dos);
void edwinspire_uhttp_uhttp_server_sendEventHeader (edwinspireuHttpuHttpServer* self, GDataOutputStream* dos);
glong edwinspire_uhttp_uhttp_server_sendEvent (edwinspireuHttpuHttpServer* self, const gchar* data, GDataOutputStream* dos);
gchar* edwinspire_uhttp_uhttp_server_PathLocalFile (edwinspireuHttpuHttpServer* self, const gchar* Filex);
gchar* edwinspire_uhttp_uhttp_server_ReadFile (const gchar* path);
guint8* edwinspire_uhttp_uhttp_server_LoadServerFile (edwinspireuHttpuHttpServer* self, const gchar* path, int* result_length1);
gchar* edwinspire_uhttp_uhttp_server_ReadServerFile (edwinspireuHttpuHttpServer* self, const gchar* path);
guint8* edwinspire_uhttp_uhttp_server_LoadFile (const gchar* Path, int* result_length1);
gchar* edwinspire_uhttp_uhttp_server_get_extension_file (const gchar* file_name);
GType edwinspire_uhttp_php_support_get_type (void) G_GNUC_CONST;
edwinspireuHttpPHP_Support* edwinspire_uhttp_php_support_new (void);
edwinspireuHttpPHP_Support* edwinspire_uhttp_php_support_construct (GType object_type);
gboolean edwinspire_uhttp_php_support_is_script (const gchar* file, gchar** new_name);
gchar* edwinspire_uhttp_php_support_run_script (edwinspireuHttpPHP_Support* self, const gchar* script, const gchar* document_root, const gchar* tmp_dir, edwinspireuHttpRequest** request);


G_END_DECLS

#endif