void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	string string3;
	object object1;
	if ((sParam == "")) {
		sParam = "wp_pc";
	}
	SetPartyLeader(0xFFFFFFFF);
	int int8 = 1;
	while ((int8 < 4)) {
		{
			object oNPC = GetPartyMemberByIndex((int8 - 1));
			if (GetIsObjectValid(oNPC)) {
			string3 = (sParam + IntToString(int8));
			object1 = GetObjectByTag(string3, 0);
			if (GetIsObjectValid(object1)) {
				DelayCommand(IntToFloat((nParam2 + (nParam3 * int8))), AssignCommand(oNPC, ClearAllActions()));
				if ((nParam1 == 2)) {
					DelayCommand(IntToFloat((nParam2 + (nParam3 * int8))), AssignCommand(oNPC, ActionJumpToLocation(GetLocation(object1))));
				}
				else {
					DelayCommand(IntToFloat((nParam2 + (nParam3 * int8))), AssignCommand(oNPC, ActionForceMoveToLocation(GetLocation(object1), nParam1, 30.0)));
				}
			}
			}
		}
		(int8++);
	}
}

