void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	if ((GetGlobalNumber("203TEL_DroidInt_1") == 3)) {
		if (GetLocalBoolean(OBJECT_SELF, 36)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 36, 1);
		object oIthorian = GetObjectByTag("Ithorian", 0);
		SetLocalBoolean(oIthorian, 45, 1);
		AssignCommand(oIthorian, ActionOpenDoor(oIthorian));
		string string1 = "c_drdith";
		CreateObject(1, string1, GetLocation(GetObjectByTag("WP_DRDITH1", 0)), 0);
		AssignCommand(GetObjectByTag(" 204_Habat", 0), ClearAllActions());
		AssignCommand(GetObjectByTag("204_Habat", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	if (((GetGlobalNumber("203TEL_Habat") == 11) && (!GetLocalBoolean(OBJECT_SELF, 40)))) {
		SetLocalBoolean(OBJECT_SELF, 36, 1);
		SetLocalBoolean(OBJECT_SELF, 40, 1);
		AssignCommand(GetObjectByTag("204_Habat", 0), ClearAllActions());
		AssignCommand(GetObjectByTag("204_Habat", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

