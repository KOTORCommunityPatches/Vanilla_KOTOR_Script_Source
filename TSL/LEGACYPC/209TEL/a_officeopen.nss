void main() {
	AssignCommand(GetObjectByTag("merc_leader", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("merc_leader", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

