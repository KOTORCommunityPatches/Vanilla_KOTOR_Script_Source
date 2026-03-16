void main() {
	object oEntering = GetEnteringObject();
	if ((GetFirstPC() != oEntering)) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	if ((GetJournalEntry("khoondad") == 0)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	SetGlobalFadeIn(1.0, 0.5, 0.0, 0.0, 0.0);
	object oNpc_terena = GetObjectByTag("npc_terena", 0);
	AssignCommand(oNpc_terena, ClearAllActions());
	AssignCommand(oEntering, ClearAllActions());
	AssignCommand(oEntering, ActionJumpToObject(GetObjectByTag("wp_kh_pc1", 0), 1));
	DelayCommand(0.1, AssignCommand(oNpc_terena, ActionStartConversation(oEntering, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	DelayCommand(0.2, AssignCommand(oEntering, ActionForceMoveToObject(GetObjectByTag("wp_kh_pc2", 0), 0, 1.0, 30.0)));
}

