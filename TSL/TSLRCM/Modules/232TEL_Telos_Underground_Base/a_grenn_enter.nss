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
		object oAirlockA = GetObjectByTag("AirlockA", 0);
		SetLocked(oAirlockA, 0);
		DelayCommand(1.0, AssignCommand(oAirlockA, ActionOpenDoor(oAirlockA)));
	}
	if ((nParam1 == 2)) {
		string1 = "201_gren";
		AssignCommand(GetObjectByTag(string1, 0), ActionMoveToObject(GetWaypointByTag(("wp_" + string1)), 0, 1.0));
		string1 = "tsf";
		int3 = 0;
		while ((int3 <= 2)) {
			string2 = IntToString(int3);
			DelayCommand((IntToFloat(int3) / 10), AssignCommand(GetObjectByTag(string1, int3), ActionMoveToObject(GetWaypointByTag(((("wp_" + string1) + "_") + string2)), 0, 1.0)));
			(int3++);
		}
	}
	if ((nParam1 == 3)) {
		DelayCommand(0.1, ActionStartConversation(GetObjectByTag("201_gren", 0), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	if ((nParam1 == 4)) {
		DelayCommand(0.1, StartNewModule("202TEL", "From_201TEL_tp", "", "", "", "", "", ""));
	}
}