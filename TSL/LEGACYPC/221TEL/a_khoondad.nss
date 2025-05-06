// Prototypes
object sub2(string stringParam1, int intParam2);
void sub1(int intParam1, string stringParam2);

object sub2(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void sub1(int intParam1, string stringParam2) {
	sub2("mercgun", intParam1);
	sub2("mercgun", (intParam1 + 1));
	sub2("mercgun", (intParam1 + 2));
	sub2("mercgun", (intParam1 + 3));
	{
		int nLen = GetStringLength("mercgun");
		object oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, 1);
		string string1;
		while (GetIsObjectValid(oAreaObject)) {
		string1 = GetStringLeft(GetTag(oAreaObject), nLen);
		if ((string1 == "mercgun")) {
			AssignCommand(oAreaObject, ActionMoveToObject(GetWaypointByTag(stringParam2), 1, 1.0));
		}
		oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
		}
	}
}

void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	object oPC = GetFirstPC();
	object oAreaObject;
	int nLen;
	string string1;
	switch (nParam1) {
		case 0:
			nLen = GetStringLength("khound");
			oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, 1);
			while (GetIsObjectValid(oAreaObject)) {
				string1 = GetStringLeft(GetTag(oAreaObject), nLen);
				if ((((string1 == "khound") || (string1 == "kinrat")) || (string1 == "g_kinr"))) {
					DestroyObject(oAreaObject, 0.0, 0, 0.0, 0);
				}
				oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
			}
			break;
		case 1:
			AssignCommand(oPC, ActionJumpToObject(GetWaypointByTag("wp_garage_pc"), 1));
			sub1(11, "wp_garage_pc");
			DelayCommand(9.0, sub1(11, "wp_garage_pc"));
			break;
		case 5:
			if ((GetGlobalNumber("601DAN_1Squad") == 0)) {
				SetGlobalNumber("601DAN_1Squad", 1);
				SetGlobalNumber("601DAN_2Squad", 2);
				SetGlobalNumber("601DAN_3Squad", 4);
			}
			break;
		case 6:
			SetGlobalNumber((("601DAN_" + IntToString(nParam2)) + "Squad"), nParam3);
			SetLocalBoolean(OBJECT_SELF, (49 + nParam3), 1);
			break;
		case 10:
			AssignCommand(oPC, ActionJumpToObject(GetWaypointByTag("wp_speech_pc"), 1));
			AssignCommand(GetObjectByTag("npc_zherron", 0), ActionJumpToObject(GetWaypointByTag("wp_speech_zherron"), 1));
			nLen = 1;
			while ((nLen <= 6)) {
				sub2("g_militia", nLen);
				(nLen++);
			}
			break;
		case 11:
			nLen = 1;
			while ((nLen <= nParam2)) {
				AssignCommand(GetObjectByTag("g_militia", nLen), ActionPlayAnimation(108, 1.0, 0.0));
				(nLen++);
			}
			break;
		case 20:
	}
}

