void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	if ((!GetIsObjectValid(GetObjectByTag("npc_gerevick", 0)))) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	AssignCommand(GetObjectByTag("npc_gerevick", 0), ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
