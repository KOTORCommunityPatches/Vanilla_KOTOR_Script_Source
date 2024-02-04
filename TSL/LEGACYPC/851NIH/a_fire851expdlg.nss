void main() {
	object oZuka = GetObjectByTag("Zuka", 0);
	SetGlobalNumber("851NIH_Bomb_Ravager", 1);
	object oG_mandalor003 = CreateObject(1, "g_mandalor003", GetLocation(GetObjectByTag("wp_deton_mand", 0)), 0);
	AssignCommand(oZuka, ClearAllActions());
	AssignCommand(oZuka, ActionStartConversation(GetFirstPC(), "851exp", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

