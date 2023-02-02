void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	if ((GetGlobalNumber("502OND_End_First") != 1)) {
		return;
	}
	AurPostString("Kavar Trigger", 5, 5, 5.0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(0.5, AssignCommand(GetObjectByTag("kavar", 0), ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	SetLocalBoolean(OBJECT_SELF, 40, 1);
}
