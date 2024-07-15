void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	object oVash_container = GetObjectByTag("vash_container", 0);
	if ((!GetIsObjectValid(oVash_container))) {
		AurPostString("Vash invalid", 5, 5, 5.0);
		return;
	}
	if ((!GetLocalBoolean(oVash_container, 40))) {
		SetLocalBoolean(oVash_container, 40, 1);
		SetGlobalNumber("702KOR_Vash", 1);
		SetGlobalNumber("000_Jedi_Found", (GetGlobalNumber("000_Jedi_Found") + 1));
		AurPostString("Starting Conversation", 5, 5, 5.0);
		AssignCommand(oVash_container, ClearAllActions());
		AssignCommand(oVash_container, ActionStartConversation(GetFirstPC(), "vash", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

