/* libspire_pdu.vapi generated by valac 0.16.1, do not modify. */

namespace edwinspire {
	namespace PDU {
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class DCS_DataCodingMessageClass : edwinspire.PDU.IDataCodingScheme, edwinspire.PDU.Octet {
			public edwinspire.PDU.DCS_MESSAGE_CLASS MessageClass;
			public edwinspire.PDU.DCS_MessageCoding MessageCoding;
			public DCS_DataCodingMessageClass ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class DCS_GeneralDataCodingIndication : edwinspire.PDU.IDataCodingScheme, edwinspire.PDU.Octet {
			public bool HaveAMessageClassMeaning;
			public edwinspire.PDU.DCS_MESSAGE_CLASS MessageClass;
			public bool TextIsCompressed;
			public DCS_GeneralDataCodingIndication ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class DCS_MessageWaitingIndicationGroup : edwinspire.PDU.IDataCodingScheme, edwinspire.PDU.Octet {
			public edwinspire.PDU.DCS_MESSAGE_WAITING_INDICATION_GROUP Group;
			public edwinspire.PDU.DCS_INDICATION_TYPE IndicationType;
			public bool SetIndication;
			public DCS_MessageWaitingIndicationGroup ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class DCS_Reserved : edwinspire.PDU.IDataCodingScheme, edwinspire.PDU.Octet {
			public DCS_Reserved ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		[Description (blurb = "SMS entrantes", nick = "DELIVER")]
		public class DELIVER : GLib.Object {
			public DELIVER ();
			public void DECODE (string PDU);
			public void print_values ();
			[Description (blurb = "Data coding scheme", nick = "DCS")]
			public edwinspire.PDU.IDataCodingScheme DCS { get; private set; }
			[Description (blurb = "Primer Octeto", nick = "First Octet")]
			public edwinspire.PDU.FIRST_OCTET_DELIVER FO { get; private set; }
			public string Message { get; internal set; }
			[Description (blurb = "Protocol Identifier", nick = "PID")]
			public edwinspire.PDU.IProtocolIdentifier PID { get; private set; }
			public edwinspire.PDU.TP_SCTS SCTS { get; internal set; }
			[Description (blurb = "Informacion del SMSC", nick = "SMSC")]
			public edwinspire.PDU.PHONE_INFORMATION SMSC { get; private set; }
			[Description (blurb = "Informacion del Sender", nick = "Sender")]
			public edwinspire.PDU.PHONE_INFORMATION Sender { get; internal set; }
			public edwinspire.PDU.Octet UDL { get; private set; }
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class Datetime : GLib.Object {
			public Datetime (GLib.TimeZone tz, int year, int month, int day, int hour, int minute, double seconds);
			public void add_days (int days);
			public void add_full (int years, int months, int days, int hours = 0, int minutes = 0, double seconds = 0);
			public void add_hours (int hours);
			public void add_minutes (int Minutes);
			public void add_months (int months);
			public void add_seconds (double Seconds);
			public void add_weeks (int weeks);
			public void add_years (int years);
			public int compare (GLib.DateTime dt);
			public string format (string format);
			public Datetime.from_timeval_local (GLib.TimeVal tv);
			public Datetime.from_timeval_utc (GLib.TimeVal tv);
			public Datetime.from_unix_local (int64 t);
			public Datetime.from_unix_utc (int64 t);
			public Datetime.from_values (int year, int month, int day, int hour = 0, int minute = 0, double seconds = 0, int gmt = 0);
			public void get_ymd (out int year, out int month, out int day);
			public uint hash ();
			public Datetime.local (int year, int month, int day, int hour, int minute, double seconds);
			public Datetime.now (GLib.TimeZone tz);
			public Datetime.now_local ();
			public Datetime.now_utc ();
			public void set_values (int year, int month, int day, int hour = 0, int minute = 0, double seconds = 0, int gmt = 0);
			public void to_local ();
			public string to_string ();
			public bool to_timeval (out GLib.TimeVal tv);
			public void to_timezone (GLib.TimeZone tz);
			public int64 to_unix ();
			public void to_utc ();
			public Datetime.utc (int year, int month, int day, int hour, int minute, double seconds);
			public int Gmt { get; set; }
			public int day_of_month { get; set; }
			public int day_of_week { get; }
			public int day_of_year { get; }
			public int hour { get; set; }
			public bool is_daylight_savings { get; }
			public int microsecond { get; }
			public int minute { get; set; }
			public int month { get; set; }
			public int second { get; set; }
			public double seconds { get; }
			public string timezone_abbreviation { get; }
			public int week_numbering_year { get; }
			public int week_of_year { get; }
			public int year { get; set; }
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		[Description (blurb = "", nick = "FIRST OCTET DELIVER")]
		public class FIRST_OCTET_DELIVER : edwinspire.PDU.Octet {
			public FIRST_OCTET_DELIVER ();
			[Description (blurb = "Imprime los valores obtenidos", nick = "print_values")]
			public void print_values ();
			[Description (blurb = "More messages to send. This bit is set to 0 if there are more messages to send", nick = "TP_MMS")]
			public bool TP_MMS { get; private set; }
			[Description (blurb = "Message type indicator. Bits no 1 and 0 are both set to 0 to indicate that this PDU is an", nick = "TP_MTI")]
			public edwinspire.PDU.MESSAGE_TYPE_INDICATOR TP_MTI { get; private set; }
			[Description (blurb = "Reply path. Parameter indicating that reply path exists.", nick = "TP_RP")]
			public bool TP_RP { get; private set; }
			[Description (blurb = "Status report indication. This bit is set to 1 if a status report is going to be returned to the", nick = "TP_SRI")]
			public bool TP_SRI { get; private set; }
			[Description (blurb = "User data header indicator. This bit is set to 1 if the User Data field starts with a header", nick = "TP_UDHI")]
			public bool TP_UDHI { get; private set; }
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		[Description (blurb = "Datos correspondientes al primer octeto de un sms para enviar", nick = "First Octet Submit")]
		public class FIRST_OCTET_SUBMIT : edwinspire.PDU.Octet {
			public FIRST_OCTET_SUBMIT ();
			public void print_values ();
			public edwinspire.PDU.MESSAGE_TYPE_INDICATOR TP_MTI { get; set; }
			public bool TP_RD { get; set; }
			public bool TP_RP { get; set; }
			public bool TP_SRR { get; set; }
			public bool TP_UDHI { get; set; }
			public edwinspire.PDU.VALIDITY_PERIOD_FORMAT TP_VPF { get; set; }
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class Miscellaneous : GLib.Object {
			public Miscellaneous ();
			public static int ConvertBinToInt (string Binary);
			public static string ConvertIntToBin (int Number, uint Length);
			public static GLib.DateTime DateTimeFromStringISO8601 (string iso8601format);
			public static bool IsPair (int Num);
			public static string PathRun ();
			public static string StringTrim (string value);
			public static int hex2number (string buffer);
			public static string number2hex (int Decimal, uint Digits);
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class Octet : GLib.Object {
			[Description (blurb = "Setear o cambiar este campo antes de setear el valor del octeto", nick = "DigitBin")]
			public uint DigitBin;
			[Description (blurb = "Setear o cambiar este campo antes de setear el valor del octeto", nick = "DigitHex")]
			public uint DigitHex;
			public Octet (int dec = 0);
			public Octet.from_Bin (string bin);
			public Octet.from_hex (string hex);
			public string Bin { get; set; }
			public int Dec { get; set; }
			public string Hex { get; set; }
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		[Description (blurb = "Numero telefonico en formato PDU, codifica y decodifica", nick = "Phone PDU format")]
		public class PDU_PHONE : GLib.Object {
			public PDU_PHONE ();
			public static string PDUToPhone (string PhonePDU);
			public static string PhoneToPDU (string Phone);
			public static int len (string Phonepdu);
			public void print_values ();
			public string PDU { get; set; }
			public string TXT { get; set; }
			public edwinspire.PDU.Octet length { get; }
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		[Description (blurb = "Informacion acerca del numero telefonico: Type address, numero telefonico, codifica y decodifica en PDU", nick = "Phone PDU information")]
		public class PHONE_INFORMATION : edwinspire.PDU.PDU_PHONE {
			public PHONE_INFORMATION ();
			public void print ();
			public string PDU_Format { get; }
			public edwinspire.PDU.TYPE_ADDRESS TA { get; set; }
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class PID_InterWorking : edwinspire.PDU.IProtocolIdentifier, edwinspire.PDU.Octet {
			public PID_InterWorking ();
			public edwinspire.PDU.PID_TYPE_TELEMATIC_DEVICE InterworkingDevice { get; set; }
			public bool TelematicInterWorking { get; set; }
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class PID_MessageType : edwinspire.PDU.IProtocolIdentifier, edwinspire.PDU.Octet {
			public PID_MessageType ();
			public edwinspire.PDU.PID_SHORT_MESSAGE Message { get; set; }
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class PID_Reserved : edwinspire.PDU.IProtocolIdentifier, edwinspire.PDU.Octet {
			public PID_Reserved ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class PID_SCSpecificUse : edwinspire.PDU.IProtocolIdentifier, edwinspire.PDU.Octet {
			public PID_SCSpecificUse ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class SUBMIT : GLib.Object {
			public SUBMIT ();
			public void DECODE (string PDU);
			public string ENCODE ();
			public void FO_changed (GLib.ParamSpec pspec);
			public void print_values ();
			public edwinspire.PDU.IDataCodingScheme DCS { get; set; }
			public edwinspire.PDU.FIRST_OCTET_SUBMIT FO { get; set; }
			public edwinspire.PDU.TextPDUText Message { get; set; }
			public int Minutes_Validity { get; set; }
			public edwinspire.PDU.PHONE_INFORMATION PHONE { get; set; }
			public edwinspire.PDU.IProtocolIdentifier PID { get; set; }
			public edwinspire.PDU.PHONE_INFORMATION SMSC { get; set; }
			public edwinspire.PDU.Octet TP_MR { get; set; }
			public edwinspire.PDU.VALIDITY_PERIOD TP_VP { get; private set; }
			public int length { get; }
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class SUBMITwithDCSGeneralDataCodingIndication : edwinspire.PDU.SUBMIT {
			public SUBMITwithDCSGeneralDataCodingIndication (string phone, string message = "", bool statusreport = false, bool EnableMsgClass = false, edwinspire.PDU.DCS_MESSAGE_CLASS msgclass = DCS_MESSAGE_CLASS.TE_SPECIFIC);
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class TP_SCTS : edwinspire.PDU.Datetime {
			public TP_SCTS (GLib.TimeZone tz, int year, int month, int day, int hour, int minute, double seconds);
			public TP_SCTS.from_octets (string octets);
			public TP_SCTS.from_values (int year, int month, int day, int hour = 0, int minute = 0, double seconds = 0, int gmt = 0);
			public TP_SCTS.now_local ();
			public void print_values ();
			public string Octets { get; set; }
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class TYPE_ADDRESS : edwinspire.PDU.Octet {
			public TYPE_ADDRESS ();
			public void print_values ();
			public edwinspire.PDU.NUMBERING_PLAN_IDENTIFICATION NPI { get; set; }
			public edwinspire.PDU.TYPE_OF_NUMBER TON { get; set; }
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class TextConvert : GLib.Object {
			public TextConvert ();
			public static Gee.HashMap<int,int> Alphabet7bit_ASCII ();
			public static edwinspire.PDU.PDU_ALPHABET AutoPDUAlphabet (string Text);
			public static string ConvertASCIIToPDU8 (string Ascii);
			public static string ConvertASCIIToUCS2 (string Text);
			public static int ConvertCharPDUToASCII (int PDUValue);
			public static string ConvertPDU7toASCII (string Pdu);
			public static string ConvertPDU8toASCII (string Pdu8);
			public static string ConvertUCS2ToASCII (string UCS2);
			public static edwinspire.PDU.StringPDU7Bits StringToSevenBits (string Ascii);
			public static Gee.ArrayList<char> TextToArrayChar7Bit (string text);
			public static string trim (string value);
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public class TextPDUText : GLib.Object {
			public TextPDUText ();
			public static int CountUnichars (string text);
			public string ToPDU (string txt, edwinspire.PDU.PDU_ALPHABET Alp = PDU_ALPHABET.DEFAULT);
			public string ToTXT (string pdu, edwinspire.PDU.PDU_ALPHABET Alp);
			public void print_values ();
			public edwinspire.PDU.PDU_ALPHABET Alphabet { get; set; }
			public string PDU { get; set; }
			public string TXT { get; set; }
			public edwinspire.PDU.Octet UDL { get; }
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		[Description (blurb = "Periodo de valides de un sms saliente", nick = "Validity Period")]
		public class VALIDITY_PERIOD : GLib.Object {
			public VALIDITY_PERIOD ();
			public void DECODE (string Octets, edwinspire.PDU.VALIDITY_PERIOD_FORMAT VPF_);
			public string ENCODE ();
			public int Get_MINUTES ();
			public void Octets_set (string Octets, edwinspire.PDU.VALIDITY_PERIOD_FORMAT VPF_);
			public void Set_MINUTES (int Minutes, edwinspire.PDU.VALIDITY_PERIOD_FORMAT VPF_);
			public void Set_SCTS (edwinspire.PDU.TP_SCTS _SCTS_, edwinspire.PDU.VALIDITY_PERIOD_FORMAT VPF_);
			public void print_values ();
			[Description (blurb = "Octetos en absolute format en TP_SCTS", nick = "Set / Get Absolute Format")]
			public edwinspire.PDU.TP_SCTS Absolute { get; set; }
			[Description (blurb = "Octetos en absolute format en string", nick = "Set / Get absolute Format")]
			public string AbsoluteOctet { get; set; }
			[Description (blurb = "Octetos en formato ENHANCED TP_SCTS", nick = "Set / Get ENHANCED Format")]
			public edwinspire.PDU.TP_SCTS Enhanced { get; set; }
			[Description (blurb = "Tiempo de valides en minutos, setea automaticamente a formato relativo", nick = "Set / Get Minutes validity")]
			public int Minutes { get; set; }
			[Description (blurb = "Octeto en relative format", nick = "Set / Get Reltive Format")]
			public edwinspire.PDU.Octet Relative { get; set; }
			public edwinspire.PDU.TP_SCTS SCTS { get; private set; }
			public edwinspire.PDU.VALIDITY_PERIOD_FORMAT VPF { get; set; }
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public interface IDataCodingScheme : edwinspire.PDU.Octet {
			public static GLib.Type DecodeGroup (string Bin);
			public void OnChangeProperty (string propertyname);
			public abstract void print_values ();
			public abstract edwinspire.PDU.PDU_ALPHABET Alpha { get; set; }
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public interface IProtocolIdentifier : edwinspire.PDU.Octet {
			public static edwinspire.PDU.PID_GROUP DecodeGroup (string hex);
			public void OnChangeProperty (string propertyname);
			public abstract void print_values ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public struct StringPDU7Bits {
			public int Length;
			public string PDU;
			public StringPDU7Bits ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public enum DCS_CODING_GROUP_BITS {
			GENERAL_DATA_CODING,
			RESERVED,
			MESSAGE_WAIT_DISCARD_MESSAGE,
			MESSAGE_WAIT_STORE_MESSAGE_DEFAULT,
			MESSAGE_WAIT_STORE_MESSAGE_UCS2,
			DATA_CODING
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public enum DCS_INDICATION_TYPE {
			VOICE_MAIL_MESSAGE_WAITING,
			FAX_MESSAGE_WAITING,
			ELECTRONIC_MAIL_MESSAGE_WAITING,
			OTHER_MESSAGE_WAITING,
			UNKNOW;
			public string ToBin ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public enum DCS_MESSAGE_CLASS {
			IMMEDIATE_DISPLAY,
			ME_SPECIFIC,
			SIM_SPECIFIC,
			TE_SPECIFIC;
			public string ToBin ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public enum DCS_MESSAGE_WAITING_INDICATION_GROUP {
			DiscardMessage,
			StoreMessage_DefaultAlphabet,
			StoreMessage_UCS2Alphabet;
			public string ToBin ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public enum DCS_MessageCoding {
			Default,
			@8BitData
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public enum MESSAGE_TYPE_INDICATOR {
			SMS_DELIVER,
			SMS_SUBMIT,
			SMS_STATUS_REPORT_COMMAND,
			RESERVED;
			public string ToBin ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public enum NUMBERING_PLAN_IDENTIFICATION {
			UNKNOW,
			ISDN,
			DATA,
			TELEX,
			NATIONAL,
			PRIVATE,
			ERMES,
			RESERVED;
			public string ToBin ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public enum PDU_ALPHABET {
			DEFAULT,
			DATA8Bits,
			UCS2,
			RESERVED,
			UNKNOW;
			public string ToBin ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public enum PID_GROUP {
			Group0,
			Group1,
			Reserved,
			SCSpecificUse
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public enum PID_SHORT_MESSAGE {
			SHORT_MESSAGE_TYPE_0,
			REPLACE_SHORT_MESSAGE_TYPE_1,
			REPLACE_SHORT_MESSAGE_TYPE_2,
			REPLACE_SHORT_MESSAGE_TYPE_3,
			REPLACE_SHORT_MESSAGE_TYPE_4,
			REPLACE_SHORT_MESSAGE_TYPE_5,
			REPLACE_SHORT_MESSAGE_TYPE_6,
			REPLACE_SHORT_MESSAGE_TYPE_7,
			RESERVED,
			RETURN_CALL_MESSAGE,
			ME_DATA_DOWNLOAD,
			ME_DEPERSONALIZATION_SHORT_MESSAGE,
			SIM_DATA_DOWNLOAD,
			UNKNOW;
			public string ToBin ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public enum PID_TYPE_TELEMATIC_DEVICE {
			IMPLICIT,
			TELEX,
			TELEFAX_GROUP3,
			TELEFAX_GROUP4,
			VOICE_TELEPHONE,
			ERMES,
			NATIONAL_PAGING_SYSTEM,
			VIDEOTEX,
			TELETEX_CARRIER_UNSPECIFIED,
			TELETEX_PSPDN,
			TELETEX_CSPDN,
			TELETEX_PSTN,
			TELETEX_ISDN,
			UCI,
			RESERVED,
			MESSAGE_HANDLING_FACILITY,
			ANY_PUBLIC_X400_MESSAGE_HANDLING_SYSTEM,
			INTERNET_ELECTRONIC_MAIL,
			VALUES_SPECIFIC_TO_EACH_SC,
			A_GSM_MOBILE_STATION,
			UNKNOW;
			public string ToBin ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public enum TYPE_OF_NUMBER {
			UNKNOW,
			INTERNATIONAL,
			NATIONAL,
			NETWORK_SPECIFIC,
			SUBSCRIBER,
			ALPHANUMERIC,
			ABBREVIATED,
			RESERVED;
			public string ToBin ();
		}
		[CCode (cheader_filename = "libspire_pdu.h")]
		public enum VALIDITY_PERIOD_FORMAT {
			NO_PRESENT,
			ENHANCED,
			RELATIVE,
			ABSOLUTE;
			public string ToBin ();
		}
	}
}