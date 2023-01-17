void main() {
	object oG_merc_pat = GetObjectByTag("g_merc_pat", 0);
	if ((oG_merc_pat != GetEnteringObject())) {
		return;
	}
	object oInvisible = GetObjectByTag("Invisible", 0);
	AurPostString("it's the merc", 5, 5, 5.0);
	AssignCommand(oInvisible, ActionStartConversation(GetFirstPC(), "merc_ambush", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

