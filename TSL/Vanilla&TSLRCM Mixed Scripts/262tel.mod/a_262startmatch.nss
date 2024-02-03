void main() {
	SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oP_handmaiden009 = GetObjectByTag("SisterDojo", 0);
	if ((!GetIsObjectValid(oP_handmaiden009))) {
		oP_handmaiden009 = CreateObject(1, "p_handmaiden009", GetLocation(GetObjectByTag("wp_dojo_sister1", 0)), 0);
		DelayCommand(0.8, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0));
	}
	AssignCommand(oNPC, ClearAllActions());
	AssignCommand(object5, ClearAllActions());
	AssignCommand(oP_handmaiden009, ClearAllActions());
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ClearAllEffects());
	DelayCommand(0.6, AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("wp_dojo_pc", 0), 1)));
	AssignCommand(oNPC, ActionJumpToObject(GetObjectByTag("wp_dojo_npc1", 0), 1));
	AssignCommand(object5, ActionJumpToObject(GetObjectByTag("wp_dojo_npc2", 0), 1));
	GiveItem(GetItemInSlot(1, oPC), oPC);
	DelayCommand(0.7, AssignCommand(oP_handmaiden009, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

