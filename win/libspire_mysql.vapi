/* libspire_mysql.vapi generated by valac.exe 0.12.0, do not modify. */

[CCode (cprefix = "edwinspire", lower_case_cprefix = "edwinspire_")]
namespace edwinspire {
	[CCode (cprefix = "edwinspireLibMySQL", lower_case_cprefix = "edwinspire_lib_my_sql_")]
	namespace LibMySQL {
		[CCode (cheader_filename = "libspire_mysql.h")]
		public class MySQL : GLib.Object {
			public string DataBase;
			public string Host;
			public string Password;
			public uint Port;
			public string Uid;
			public MySQL ();
			public void Close ();
			public bool ExecuteNonQuery (string Query);
			public ulong ExecuteNonQuery_Affected_Rows (string Query);
			public Gee.ArrayList<Gee.HashMap<string,string>> ExecuteReaderNameFields (string Query, string Table);
			public Gee.ArrayList<Gee.HashMap> ExecuteReaderNumFields (string Query);
			public int GetInt (Gee.HashMap<uint,string> Rowx, uint Field);
			public ulong INSERT_REPLACE (string Query);
			public bool Open ();
			public bool QuerySend (string Query);
			public string ServerInfo ();
			public Gee.HashMap<string,string> StoreProcedure (string Query);
			public bool IsOpen { get; }
		}
		[CCode (cheader_filename = "libspire_mysql.h")]
		public class QueryBuilder : GLib.Object {
			public QueryBuilder ();
			public void clear ();
			public QueryBuilder.expr (string Expr);
			public GLib.DateTime get_DateTime (string Name_);
			public bool get_bool (string Name_);
			public double get_double (string Name_);
			public float get_float (string Name_);
			public int get_int (string Name_);
			public long get_long (string Name_);
			public string get_mysql_function (string Name_);
			public string get_string (string Name_);
			public ulong get_ulong (string Name_);
			public string query ();
			public void set_DateTime (string Name, GLib.DateTime value_);
			public void set_bool (string Name, bool value_);
			public void set_double (string Name, double value_);
			public void set_float (string Name, float value_);
			public void set_int (string Name, int value_);
			public void set_long (string Name, long value_);
			public void set_mysql_function (string Name, string function_name);
			public void set_string (string Name, string value_);
			public void set_uint (string Name, uint value_);
			public void set_ulong (string Name, ulong value_);
			public string Exp { get; set; }
		}
	}
}