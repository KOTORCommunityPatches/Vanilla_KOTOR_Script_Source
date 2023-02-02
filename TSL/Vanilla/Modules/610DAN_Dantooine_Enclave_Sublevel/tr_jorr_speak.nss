void main() {
	AurPostString("tr_jorr_speak: executing..", 5, 5, 3.0);
	object oNpc_jorran = GetObjectByTag("npc_jorran", 0);
	if (GetLocalBoolean(oNpc_jorran, 51)) {
		return;
	}
	SetKeepStealthInDialog(1);
	AurPostString("tr_jorr_speak: starting conversation..", 5, 6, 3.0);
	AssignCommand(oNpc_jorran, ClearAllActions());
	AssignCommand(oNpc_jorran, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
