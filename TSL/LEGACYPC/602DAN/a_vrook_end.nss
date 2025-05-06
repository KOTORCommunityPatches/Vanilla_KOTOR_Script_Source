void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	object oPC = GetFirstPC();
	object oNpc_zherron = GetObjectByTag("npc_zherron", 0);
	object oNpc_terena = GetObjectByTag("npc_terena", 0);
	if (GetIsObjectValid(oNpc_zherron)) {
		DelayCommand(1.0, DestroyObject(oNpc_zherron, 0.0, 0, 0.0, 0));
	}
	if (GetIsObjectValid(oNpc_terena)) {
		DelayCommand(1.0, DestroyObject(oNpc_terena, 0.0, 0, 0.0, 0));
	}
	ExecuteScript("a_clean_up", oPC, 0xFFFFFFFF);
	int nGlobal = GetGlobalNumber("000_Vrook_Dead");
	if (nGlobal) {
		SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
		return;
	}
	else {
		SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
		object oNpc_vrook = GetObjectByTag("npc_vrook", 0);
		DelayCommand(0.1, AssignCommand(oPC, ClearAllActions()));
		DelayCommand(0.1, AssignCommand(oNpc_vrook, ClearAllActions()));
		DelayCommand(1.0, AssignCommand(oNpc_vrook, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}

