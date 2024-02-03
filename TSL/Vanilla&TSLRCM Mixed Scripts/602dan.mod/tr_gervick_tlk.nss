void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 37)) {
		return;
	}
	if (((GetGlobalNumber("601DAN_Jedi_Exposed") > 0) && (GetGlobalNumber("604DAN_Vrook_Status") == 0))) {
		SetLocalBoolean(OBJECT_SELF, 37, 1);
		CreateObject(1, "g_merc_holo", GetLocation(GetObjectByTag("sp_merc_holo", 0)), 0);
		AssignCommand(GetObjectByTag("npc_gerevick", 0), ActionStartConversation(GetFirstPC(), "gerevick2", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

