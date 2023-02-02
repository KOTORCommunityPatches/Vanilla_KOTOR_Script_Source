void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return;
	}
	if (GetGlobalBoolean("207TEL_Ramana_Bought")) {
		SetLocalBoolean(OBJECT_SELF, 36, 1);
		SetGlobalBoolean("207TEL_Ramana_Bought", 0);
		CreateObject(1, "203_ramana", GetLocation(GetObjectByTag("wp_ramana_sp", 0)), 0);
		object oRamana = GetObjectByTag("ramana", 0);
		AssignCommand(oRamana, ClearAllActions());
		AssignCommand(oRamana, ActionStartConversation(GetFirstPC(), "", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		if ((GetGlobalNumber("203TEL_Harra") == 5)) {
			SetLocalBoolean(OBJECT_SELF, 36, 1);
			SetGlobalNumber("203TEL_Harra", 6);
			object oDoton = GetObjectByTag("doton", 0);
			AssignCommand(oDoton, ClearAllActions());
			AssignCommand(oDoton, ActionStartConversation(GetFirstPC(), "", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}
