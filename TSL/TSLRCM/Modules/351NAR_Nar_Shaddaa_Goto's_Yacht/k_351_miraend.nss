void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	if ((GetEnteringObject() != GetPartyLeader())) {
		return;
	}
	if ((GetGlobalNumber("351NAR_Ebon_Released") < 1)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	SetGlobalNumber("351NAR_G0T0_Ship", 1);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	PlayMovie("NarMov07", 0);
	StartNewModule("007EBO", "FROM_351NAR", "", "", "", "", "", "");
}