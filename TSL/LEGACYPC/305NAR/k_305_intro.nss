void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (GetLoadFromSaveGame()) {
		return;
	}
	if ((GetGlobalNumber("305NAR_Intro") == 1)) {
		return;
	}
	object oVisquis = GetObjectByTag("Visquis", 0);
	object oHanharr = GetObjectByTag("Hanharr", 0);
	object oMira = GetObjectByTag("Mira", 0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	ChangeToStandardFaction(oHanharr, 5);
	AssignCommand(oMira, ClearAllActions());
	AssignCommand(oMira, ActionPlayAnimation(30, 1.0, (-1.0)));
	AssignCommand(oVisquis, ClearAllActions());
	AssignCommand(oHanharr, ClearAllActions());
	DelayCommand(0.3, AssignCommand(oVisquis, ActionStartConversation(oEntering, "305han", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

