void main() {
	int nParam1 = GetScriptParameter(1);
	object object1;
	string string1;
	object object2;
	int int3;
	string string2;
	if ((nParam1 == 1)) {
		string1 = "n_repoff001";
		CreateObject(1, string1, GetLocation(GetWaypointByTag(string1)), 0);
		string1 = "n_repsold001";
		CreateObject(1, string1, GetLocation(GetWaypointByTag((string1 + "_0"))), 0);
		CreateObject(1, string1, GetLocation(GetWaypointByTag((string1 + "_1"))), 0);
		CreateObject(1, string1, GetLocation(GetWaypointByTag((string1 + "_2"))), 0);
		object oAirlock1a = GetObjectByTag("Airlock1a", 0);
		SetLocked(oAirlock1a, 0);
		SetLocalBoolean(GetObjectByTag("TermAirlock1", 0), 30, 1);
		DelayCommand(0.1, AssignCommand(oAirlock1a, ActionOpenDoor(oAirlock1a)));
	}
	else {
		if ((nParam1 == 2)) {
			string1 = "201_gren";
			AssignCommand(GetObjectByTag(string1, 0), ActionForceMoveToObject(GetObjectByTag(("wp_" + string1), 0), 0, 1.0, 30.0));
			string1 = "tsf";
			int3 = 0;
			while ((int3 <= 2)) {
				string2 = IntToString(int3);
				DelayCommand((IntToFloat(int3) / 10), AssignCommand(GetObjectByTag(string1, int3), ActionForceMoveToObject(GetObjectByTag(((("wp_" + string1) + "_") + string2), 0), 0, 1.0, 30.0)));
				(int3++);
			}
		}
		else {
			if ((nParam1 == 3)) {
				DelayCommand(0.1, ActionStartConversation(GetObjectByTag("201_gren", 0), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			else {
				if ((nParam1 == 4)) {
					SetNPCSelectability(8, 0);
					DestroyObject(GetObjectByTag("handmaiden", 0), 0.0, 0, 0.0, 0);
					DelayCommand(0.1, StartNewModule("202TEL", "From_201TEL_tp", "", "", "", "", "", ""));
				}
				else {
					if ((nParam1 == 5)) {
						DestroyObject(GetObjectByTag("201_Gren", 0), 0.0, 1, 0.0, 0);
						object oTSF = GetObjectByTag("TSF", 0);
						object object23 = GetObjectByTag("TSF", 1);
						object object25 = GetObjectByTag("TSF", 2);
						DestroyObject(oTSF, 0.0, 1, 0.0, 0);
						DestroyObject(object23, 0.0, 1, 0.0, 0);
						DestroyObject(object25, 0.0, 1, 0.0, 0);
						DestroyObject(GetObjectByTag("atton", 0), 0.0, 1, 0.0, 0);
						DestroyObject(GetObjectByTag("kreia", 0), 0.0, 1, 0.0, 0);
						DestroyObject(GetObjectByTag("t3m4", 0), 0.0, 1, 0.0, 0);
					}
				}
			}
		}
	}
}
