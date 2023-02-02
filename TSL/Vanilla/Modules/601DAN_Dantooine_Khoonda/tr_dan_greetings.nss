void main() {
	if (((!GetLocalBoolean(OBJECT_SELF, 40)) && GetIsObjectValid(GetObjectByTag("npc_dillan", 0)))) {
		AssignCommand(GetObjectByTag("npc_dillan", 0), ActionStartConversation(GetFirstPC(), "dillan", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetLocalBoolean(OBJECT_SELF, 40, 1);
	}
}
