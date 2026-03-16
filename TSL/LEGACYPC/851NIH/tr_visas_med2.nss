void main() {
	if ((GetGlobalNumber("000_Visas_Dead") > 0)) {
		return;
	}
	if ((!GetIsPartyLeader(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 55)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 55, 1);
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	AssignCommand(oVisasMarr, ClearAllActions());
	AssignCommand(oVisasMarr, ActionJumpToObject(GetObjectByTag("sp_visas_meditation", 0), 1));
	AssignCommand(GetObjectByTag("Visas", 0), ActionStartConversation(GetFirstPC(), "851medit", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	int int4 = 0;
	int4 = 0;
	while ((int4 < 3)) {
		{
			object oVisasDoor = GetObjectByTag("VisasDoor", int4);
			AssignCommand(oVisasDoor, ActionOpenDoor(oVisasDoor));
		}
		(int4++);
	}
}

