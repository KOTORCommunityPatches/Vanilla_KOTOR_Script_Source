void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	object oSarc_door = GetObjectByTag("sarc_door", 0);
	SetLocked(oSarc_door, 0);
	AssignCommand(oSarc_door, ActionOpenDoor(oSarc_door));
	ChangeToStandardFaction(GetObjectByTag("sith_captain", 0), 5);
	ActionStartConversation(GetFirstPC(), "sithcapt", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
	object oSith_cs = GetObjectByTag("sith_cs", 0);
	ForceHeartbeat(oSith_cs);
	oSith_cs = GetObjectByTag("sith_cs", 1);
	ForceHeartbeat(oSith_cs);
}
