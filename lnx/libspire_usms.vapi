/* libspire_usms.vapi generated by valac 0.16.1, do not modify. */

namespace edwinspire {
	namespace uSMS {
		[CCode (cheader_filename = "libspire_usms.h")]
		public class AddressTable : edwinspire.uSMS.PostgreSQLConnection {
			public AddressTable ();
			public string fun_address_edit_xml (int inidaddress, int inidlocation, double ingeox, double ingeoy, string f1, string f2, string f3, string f4, string f5, string f6, string f7, string f8, string f9, string f10, string ints, bool fieldtextasbase64 = true);
			public string fun_address_edit_xml_from_hashmap (Gee.HashMap<string,string> data, bool fieldtextasbase64 = true);
			public string fun_view_address_byid_xml (int idaddress, bool fieldtextasbase64 = true);
			public static edwinspire.uSMS.AddressRowData rowdata_from_hashmap (Gee.HashMap<string,string> data);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class AttachmentsTable : edwinspire.uSMS.PostgreSQLConnection {
			public AttachmentsTable ();
			public int insert (string name_file, string md5);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class Device : edwinspire.GSM.MODEM.ModemGSM {
			public int IdPort;
			public edwinspire.uSMS.SIMRow SIM;
			public uint TimeWindowSleep;
			public Device ();
			public void DetectCallID (string phone);
			public void Kill ();
			public void SetPort (edwinspire.uSMS.SerialPortConf sp);
			public void get_sim ();
			[Description (blurb = "Inserta un evento en la bitacora del proceso", nick = "log")]
			public int64 log (GLib.LogLevelFlags level, string log);
			public edwinspire.uSMS.ProcessCtrl Ctrl { get; set; }
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class GroupsTable : edwinspire.uSMS.PostgreSQLConnection {
			public GroupsTable ();
			public string fun_groups_edit_xml (int idgroup, bool enable, string name, string note, string ts, bool fieldtextasbase64 = true);
			public string fun_groups_edit_xml_from_hashmap (Gee.HashMap<string,string> data, bool fieldtextasbase64 = true);
			public string fun_groups_remove_selected_xml (string idgroups, bool fieldtextasbase64 = true);
			public string fun_view_groups_xml (bool fieldtextasbase64 = true);
			public string fun_view_idgroup_name_xml (bool fieldtextasbase64 = true);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class LocationLevel : edwinspire.uSMS.PostgreSQLConnection {
			public LocationLevel ();
			public string fun_location_level_edit_xml_from_hashmap (Gee.HashMap<string,string> data, bool fieldtextasbase64 = true);
			public string fun_location_level_remove_selected_xml (int level, string ids, bool fieldtextasbase64 = true);
			public string fun_view_location_level_xml (Gee.HashMap<string,string> data, bool fieldtextasbase64 = true);
			public string fun_view_locations_ids_from_idlocation_xml (int idlocation);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class NotificationsTable : edwinspire.uSMS.PostgresuSMS {
			public NotificationsTable ();
			public string fun_view_notifications_xml (int lastidnotify, bool fieldtextasbase64 = true);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class PhoneTable : edwinspire.uSMS.PostgreSQLConnection {
			public PhoneTable ();
			public edwinspire.uSMS.PhoneTableRow[] byIdContact (int idcontact);
			public string byIdContact_Xml (int idcontact, bool fieldtextasbase64 = true);
			public string byId_Xml (int idphone, bool fieldtextasbase64 = true);
			public string fun_contact_phones_edit_xml (int idphone, int inidlocation, double ingeox, double ingeoy, string f1, string f2, string f3, string f4, string f5, string f6, string f7, string f8, string f9, string f10, string ints, bool fieldtextasbase64 = true);
			public string fun_phones_address_edit_xml_from_hashmap (Gee.HashMap<string,string> data, bool fieldtextasbase64 = true);
			public string fun_phones_table_xml (int inidphone, int inidcontact, bool inenable, string inphone, int intypephone, int inidprovider, string inphone_ext, int inidaddress, int inubiphone, string innote, string ints, bool fieldtextasbase64 = true);
			public string fun_phones_table_xml_from_hashmap (Gee.HashMap<string,string> data, bool fieldtextasbase64 = true);
			public string fun_view_contacts_phones_with_search_xml (string contact_phone_search, string exclude_idphones, bool fieldtextasbase64 = true);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class PostgreSQLConnection : edwinspire.pgSQL.PostgreSqldb {
			public PostgreSQLConnection ();
			public void GetParamCnx ();
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class PostgresuSMS : edwinspire.uSMS.PostgreSQLConnection {
			public PostgresuSMS ();
			public int fun_currentportsproviders_insertupdate (int inidport, string inport, string incimi, string inimei);
			public int fun_get_idsim (string phone);
			public bool fun_portmodem_update (int inidport, string inport, string incimi, string inimei, string inmanufacturer, string inmodel, string inrevision);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class ProcessControldb : GLib.Object {
			public edwinspire.uSMS.ProcessCtrl Ctrl;
			public string Date;
			public int Id;
			public string Note;
			public ProcessControldb (int id = 0, edwinspire.uSMS.ProcessCtrl ctrl = ProcessCtrl.None, string note = "", string date = "2000-01-01 00:00");
			public ProcessControldb.from_string (string? id, string? ctrl, string? note = "", string? date = "2000-01-01 00:00");
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class ProviderTable : edwinspire.uSMS.PostgreSQLConnection {
			public ProviderTable ();
			public string fun_provider_edit_xml (int inidprovider, bool inenable, string inname, string innote, string ints, bool fieldtextasbase64 = true);
			public string fun_provider_edit_xml_from_hashmap (Gee.HashMap<string,string> data, bool fieldtextasbase64 = true);
			public string fun_view_provider_table_xml (bool fieldtextasbase64 = true);
			public string idname_Xml (bool fieldtextasbase64 = true);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class SMSOutRow : edwinspire.GSM.MODEM.Submit {
			public SMSOutRow ();
			public int MaxSlices { get; set; }
			public edwinspire.PDU.DCS_MESSAGE_CLASS MessageClass { get; set; }
			public bool StatusReport { get; set; }
			public int attempts { get; set; }
			public GLib.DateTime dateload { get; set; }
			public GLib.DateTime dateprocess { get; set; }
			public GLib.DateTime datetosend { get; set; }
			public bool enableMessageClass { get; set; }
			public int flag1 { get; set; }
			public int flag2 { get; set; }
			public int flag3 { get; set; }
			public int flag4 { get; set; }
			public int flag5 { get; set; }
			public int idphone { get; set; }
			public int idport { get; set; }
			public int idprovider { get; set; }
			public int idprovidersent { get; set; }
			public int idsmstype { get; set; }
			public int maxtimelive { get; set; }
			public int messageclass { get; set; }
			public string note { get; set; }
			public string phone { get; set; }
			public int priority { get; set; }
			public int process { get; set; }
			public int retryonfail { get; set; }
			public int slices { get; set; }
			public int slicessent { get; set; }
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class SQLiteNotificationRow {
			public string body;
			public int id;
			public string img;
			public string note;
			public string snd;
			public int timeout;
			public string title;
			public int urgency;
			public SQLiteNotificationRow ();
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class SQliteNotificationsDb : GLib.Object {
			public SQliteNotificationsDb ();
			public void build_table_notifications ();
			public string notifications_data_to_xml (edwinspire.uSMS.SQLiteNotificationRow lastRow);
			public int64 notifications_insert (string title, string body = "", int urgency = 0, int timeout = 10, string img = "", string snd = "", string note = "");
			public int64 notifications_insert_from_hashmap (Gee.HashMap<string,string> data);
			public edwinspire.uSMS.SQLiteNotificationRow notifications_last ();
			public Gee.ArrayList<edwinspire.uSMS.SQLiteNotificationRow> notifications_next (int last);
			public string notifications_next_xml (int last);
			public string notifications_row_to_xml (edwinspire.uSMS.SQLiteNotificationRow lastRow);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class SerialPortConf : edwinspire.Ports.Configure {
			public SerialPortConf ();
			public SerialPortConf.with_args (int id, bool enable, string port, int baudrate, int databits, edwinspire.Ports.Parity parity, edwinspire.Ports.StopBits stopbits, edwinspire.Ports.HandShaking HS, string note = "", Gee.ArrayList<GLib.LogLevelFlags> llevel);
			public int Id { get; set; }
			public Gee.ArrayList<GLib.LogLevelFlags> LogLevel { get; set; }
			public string Note { get; set; }
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class TableCallIn : edwinspire.uSMS.PostgresuSMS {
			public TableCallIn ();
			public int fun_incomingcalls_insert_online (int inidport, edwinspire.uSMS.OnIncomingCall inOnIncomingCall, string inphone, string innote = "");
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class TableChangedTable : edwinspire.uSMS.PostgreSQLConnection {
			public Gee.HashMap<string,string> old_ts;
			public Gee.HashMap<string,bool> status;
			public TableChangedTable ();
			public bool is_changed ();
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class TableCity : edwinspire.uSMS.PostgreSQLConnection {
			public TableCity ();
			public string fun_location_city_edit_xml_from_hashmap (Gee.HashMap<string,string> data, bool fieldtextasbase64 = true);
			public string fun_location_city_remove_selected_xml (string ids, bool fieldtextasbase64 = true);
			public string fun_view_city_by_idstate_xml (int idcountry, bool fieldtextasbase64 = true);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class TableContacts : edwinspire.uSMS.PostgreSQLConnection {
			public TableContacts ();
			public Gee.HashMap<int,string> NameAndId_All ();
			public string NameAndId_All_Xml (bool fieldtextasbase64 = true);
			public string NameAndId_Search_Xml (string text, bool fieldtextasbase64 = true);
			public string byId_Xml (int idcontact, bool fieldtextasbase64 = true);
			public string fun_contact_address_edit_xml (int idcontact, int inidlocation, double ingeox, double ingeoy, string f1, string f2, string f3, string f4, string f5, string f6, string f7, string f8, string f9, string f10, string ints, bool fieldtextasbase64 = true);
			public string fun_contact_address_edit_xml_from_hashmap (Gee.HashMap<string,string> data, bool fieldtextasbase64 = true);
			public string fun_contact_change_groups_xml (int idcontact, int idgroup, bool belong, bool fieldtextasbase64 = true);
			public string fun_contacts_edit_xml (int inidcontact, bool inenable, string intitle, string infirstname, string inlastname, int ingender, string inbirthday, int intypeofid, string inidentification, string inweb, string inemail1, string inemail2, int inidaddress, string innote, bool fieldtextasbase64 = true);
			public string fun_contacts_edit_xml_from_hashmap (Gee.HashMap<string,string> data, bool fieldtextasbase64 = true);
			public string fun_view_contacts_groups_xml (int idcontact, bool fieldtextasbase64 = true);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class TableIncomingCalls : edwinspire.uSMS.PostgreSQLConnection {
			public TableIncomingCalls ();
			public string fun_view_incomingcalls_xml (string datestart, string dateend, bool fieldtextasbase64 = true);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class TableLocationLevel1 : edwinspire.uSMS.PostgreSQLConnection {
			public TableLocationLevel1 ();
			public string fun_location_level1_edit_xml_from_hashmap (Gee.HashMap<string,string> data, bool fieldtextasbase64 = true);
			public string fun_location_level1_remove_selected_xml (string ids, bool fieldtextasbase64 = true);
			public string fun_view_location_level1_xml (bool fieldtextasbase64 = true);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class TableOutgoing : edwinspire.uSMS.PostgresuSMS {
			public TableOutgoing ();
			public Gee.HashMap<string,edwinspire.pgSQL.PgField> ToSend (int IdSIM);
			public int fun_outgoing_new (int idowner, int inidphone, string inphone, string inmsg, GLib.DateTime indatetosend = new GLib.DateTime.now_local (), int inpriority = 5, int inidprovider = 0, int inidsim = 0, int inidsmstype = 0, bool inreport = false, bool inenablemsgclass = false, edwinspire.PDU.DCS_MESSAGE_CLASS inmsgclass = edwinspire.PDU.DCS_MESSAGE_CLASS.TE_SPECIFIC, string innote = "");
			public int fun_outgoing_new_now (int idowner, int inidphone, string inphone, string inmsg, int inpriority = 5, int inidprovider = 0, int inidsim = 0, int inidsmstype = 0, bool inreport = false, bool inenablemsgclass = false, edwinspire.PDU.DCS_MESSAGE_CLASS inmsgclass = edwinspire.PDU.DCS_MESSAGE_CLASS.TE_SPECIFIC, string innote = "");
			public string fun_outgoing_new_now_xml (int idowner, int inidphone, string inphone, string inmsg, int inpriority = 5, int inidprovider = 0, int inidsim = 0, int inidsmstype = 0, bool inreport = false, bool inenablemsgclass = false, edwinspire.PDU.DCS_MESSAGE_CLASS inmsgclass = edwinspire.PDU.DCS_MESSAGE_CLASS.TE_SPECIFIC, string innote = "", bool fieldtextasbase64 = true);
			public string fun_outgoing_new_now_xml_from_hashmap (Gee.HashMap<string,string> Data);
			public string fun_outgoing_new_xml (int idowner, int inidphone, string inphone, string inmsg, GLib.DateTime indatetosend = new GLib.DateTime.now_local (), int inpriority = 5, int inidprovider = 0, int inidsim = 0, int inidsmstype = 0, bool inreport = false, bool inenablemsgclass = false, edwinspire.PDU.DCS_MESSAGE_CLASS inmsgclass = edwinspire.PDU.DCS_MESSAGE_CLASS.TE_SPECIFIC, string innote = "", bool fieldtextasbase64 = true);
			public string fun_outgoing_new_xml_from_hashmap (Gee.HashMap<string,string> Data);
			public string fun_view_outgoing_view_filter_xml (string start, string end, int rows, bool fieldtextasbase64 = true);
			public int log (int idsmsout, int idsim, edwinspire.uSMS.SMSOutStatus status, int parts, int part);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class TablePostgres : GLib.Object {
			public TablePostgres ();
			public static int64 InsertRow (edwinspire.uSMS.TableRowPostgres row);
			public static edwinspire.uSMS.TableRowPostgres LastRowEnabled ();
			public static string LastRowEnabledXML ();
			public static int64 UpdateFromWeb (Gee.HashMap<string,string> Form);
			public static int64 UpdateRow (edwinspire.uSMS.TableRowPostgres row);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class TableProcessControl : GLib.Object {
			public TableProcessControl ();
			public static Gee.ArrayList<edwinspire.uSMS.ProcessControldb> All ();
			public static int64 Insert (edwinspire.uSMS.ProcessControldb row);
			public static edwinspire.uSMS.ProcessControldb Last ();
			public static edwinspire.uSMS.ProcessControldb RowById (int Id);
			[Description (blurb = "", nick = "Update row")]
			public static bool Update (edwinspire.uSMS.ProcessControldb contrl);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class TableProvider : edwinspire.uSMS.PostgresuSMS {
			public TableProvider ();
			public int IdProviderFromCIMI (string cimi);
			public string fun_provider_delete_selection_xml (string idproviders, bool fieldtextasbase64 = true);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class TableSIM : edwinspire.uSMS.PostgresuSMS {
			public TableSIM ();
			public edwinspire.uSMS.SIMRow byId (int id);
			public edwinspire.uSMS.SIMRow byPhone (string phone);
			public edwinspire.uSMS.SIMRow fun_sim_getrow (string phone);
			public string fun_sim_table_edit_xml (int idsim, int idprovider, bool enable, bool enable_sendsms, string phone, bool smsout_request_reports, int smsout_retryonfail, int smsout_max_length, bool smsout_enabled_other_providers, int on_incommingcall, int dtmf_tone, int dtmf_tone_time, string note, bool fieldtextasbase64 = true);
			public string fun_sim_table_edit_xml_from_hashmap (Gee.HashMap<string,string> Form);
			public string fun_view_sim_idname_xml (bool fieldtextasbase64 = true);
			public string fun_view_sim_xml (bool fieldtextasbase64 = true);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class TableSMSIn : edwinspire.uSMS.PostgreSQLConnection {
			public TableSMSIn ();
			public int fun_smsin_insert (int inidport, edwinspire.GSM.MODEM.SMS_Status instatus, edwinspire.PDU.Datetime indatesms, string inphone, string inmsj, string innote = "");
			public string fun_view_smsin_table_filter_xml (string start, string end, int rows, bool fieldtextasbase64 = true);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class TableSector : edwinspire.uSMS.PostgreSQLConnection {
			public TableSector ();
			public string fun_location_sector_edit_xml_from_hashmap (Gee.HashMap<string,string> data, bool fieldtextasbase64 = true);
			public string fun_location_sector_remove_selected_xml (string ids, bool fieldtextasbase64 = true);
			public string fun_view_sector_by_idcity_xml (int idcity, bool fieldtextasbase64 = true);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class TableSerialPort : GLib.Object {
			public TableSerialPort ();
			public static Gee.ArrayList<edwinspire.uSMS.SerialPortConf> All ();
			public static string AllXml ();
			public static bool Delete (uint IdPort);
			public static Gee.ArrayList<edwinspire.uSMS.SerialPortConf> Enables ();
			public static int64 Insert (edwinspire.uSMS.SerialPortConf row);
			public static int64 InsertUpdate (edwinspire.uSMS.SerialPortConf row);
			public static int64 InsertUpdateFromWeb (Gee.HashMap<string,string> postData);
			public static bool Update (edwinspire.uSMS.SerialPortConf row);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class TableState : edwinspire.uSMS.PostgreSQLConnection {
			public TableState ();
			public string fun_location_state_edit_xml_from_hashmap (Gee.HashMap<string,string> data, bool fieldtextasbase64 = true);
			public string fun_location_state_remove_selected_xml (string ids, bool fieldtextasbase64 = true);
			public string fun_view_state_by_idcountry_xml (int idcountry, bool fieldtextasbase64 = true);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class TableSubSector : edwinspire.uSMS.PostgreSQLConnection {
			public TableSubSector ();
			public string fun_location_subsector_edit_xml_from_hashmap (Gee.HashMap<string,string> data, bool fieldtextasbase64 = true);
			public string fun_location_subsector_remove_selected_xml (string ids, bool fieldtextasbase64 = true);
			public string fun_view_subsector_by_idsector_xml (int idsector, bool fieldtextasbase64 = true);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public class uSMSServer : edwinspire.uHttp.uHttpServer {
			public uSMSServer ();
			public int[] attach_files (Gee.ArrayList<edwinspire.uHttp.MultiPartFormDataPart> Parts, bool replace = false, string parameter_file_name = "filename");
			public override bool connection_handler_virtual (edwinspire.uHttp.Request request, GLib.DataOutputStream dos);
			public virtual bool connection_handler_virtual_usms (edwinspire.uHttp.Request request, GLib.DataOutputStream dos);
			public void runuSMS ();
			public bool save_file_on_uploads_folder (string file_name, uint8[] data, string md5, bool replace = false);
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public struct AddressRowData {
			public int idaddress;
			public int idlocation;
			public double geox;
			public double geoy;
			public string f1;
			public string f2;
			public string f3;
			public string f4;
			public string f5;
			public string f6;
			public string f7;
			public string f8;
			public string f9;
			public string f10;
			public string ts;
			public AddressRowData.@default ();
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public struct PhoneTableRow {
			public int IdPhone;
			public int IdContact;
			public bool Enable;
			public string Phone;
			public int Type;
			public int IdProvider;
			public string Note;
			public double GeoX;
			public double GeoY;
			public string IdAddress;
			public string PhoneExt;
			public int UbiPhone;
			public string Address;
			public string TimeStamp;
			public PhoneTableRow ();
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public struct SIMRow {
			public int id;
			public int idprovider;
			public bool enable;
			public string phone;
			public bool smsout_request_reports;
			public int smsout_retryonfail;
			public int smsout_max_length;
			public bool smsout_enabled_other_providers;
			public edwinspire.uSMS.OnIncomingCall action;
			public string note;
			public bool enable_sendsms;
			public bool enable_readsms;
			public edwinspire.Ports.DTMF dtmf_tone;
			public int dtmf_tone_time;
			public SIMRow ();
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public struct TableRowPostgres {
			public edwinspire.pgSQL.ConnectionParameters Parameters;
			public string Note;
			public int64 Id;
			public bool Enable;
			public TableRowPostgres ();
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public enum OnIncomingCall {
			Ignore,
			Answer,
			Refuse
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		[Description (blurb = "Control del proceso del servidor usmsd", nick = "Proccess Control")]
		public enum ProcessCtrl {
			[Description (blurb = "", nick = "None")]
			None,
			[Description (blurb = "", nick = "Run")]
			Run,
			[Description (blurb = "", nick = "Running")]
			Running,
			[Description (blurb = "", nick = "Sleep")]
			Sleep,
			[Description (blurb = "", nick = "Sleeping")]
			Sleeping,
			[Description (blurb = "", nick = "Restart")]
			Restart,
			[Description (blurb = "", nick = "Restarting")]
			Restarting,
			[Description (blurb = "", nick = "Kill")]
			Kill,
			[Description (blurb = "", nick = "Killed")]
			Killed
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public enum SMSOutStatus {
			unknown,
			UnSent,
			Sent,
			SentIncomplete,
			Locked,
			Disallowed,
			LifetimeExpired,
			StartSending,
			EndsSending
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public enum SMSType {
			unknown,
			report,
			system,
			manual,
			owner
		}
		[CCode (cheader_filename = "libspire_usms.h")]
		public const string FILE_CONF;
		[CCode (cheader_filename = "libspire_usms.h")]
		public const string VERSION;
	}
}
