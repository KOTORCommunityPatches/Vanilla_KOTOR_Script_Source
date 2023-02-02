void main() {
	object oChamp = GetObjectByTag("champ", 0);
	AssignCommand(oChamp, ClearAllActions());
	AssignCommand(oChamp, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
