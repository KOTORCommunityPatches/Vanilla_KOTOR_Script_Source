void main() {
	object oPC = GetFirstPC();
	if (((GetGlobalNumber("903_Atton_Sion") != 2) && IsAvailableCreature(0))) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(oPC, ClearAllEffects());
		DelayCommand(0.1, ClearAllActions());
		object oAtton = GetObjectByTag("Atton", 0);
		AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "904atton", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0);
	}
	else {
		if (((GetGlobalNumber("903_Atton_Sion") == 2) && IsAvailableCreature(0))) {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oPC, ClearAllEffects());
			object object6 = SpawnAvailableNPC(0, GetLocation(GetObjectByTag("WP_ATTON_DEAD", 0)));
			object object9 = GetObjectByTag("atton", 0);
			AssignCommand(object9, ActionStartConversation(oPC, "904atton", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0);
		}
		else {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			object oP_kreia = CreateObject(1, "p_kreia", GetLocation(oPC), 0);
			AssignCommand(oP_kreia, ActionStartConversation(oPC, "end_game", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}