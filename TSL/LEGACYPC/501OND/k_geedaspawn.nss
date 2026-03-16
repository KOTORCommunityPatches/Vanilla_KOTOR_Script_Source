// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if ((GetGlobalNumber("506OND_End") == 0)) {
			object oWP_spawn_geeda = GetObjectByTag("WP_spawn_geeda", 0);
			location location1 = GetLocation(oWP_spawn_geeda);
			object oGeeda = CreateObject(1, "geeda", location1, 0);
			string string1 = "WP_geedagoods_0";
			int int2 = 1;
			while ((int2 <= 4)) {
				{
					string string2 = (string1 + IntToString(int2));
					object object8 = GetObjectByTag(string2, 0);
					location location3 = GetLocation(object8);
					object oGeedagoods = CreateObject(64, "geedagoods", location3, 0);
					(int2++);
				}
			}
		}
	}
}

