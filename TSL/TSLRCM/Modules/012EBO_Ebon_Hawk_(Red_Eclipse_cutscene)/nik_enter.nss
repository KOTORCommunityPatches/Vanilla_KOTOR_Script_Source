void main() {
	DestroyObject(GetObjectByTag("gas", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("gas", 1), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("gas", 2), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("gas", 3), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("gas", 4), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("gas", 5), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("gas", 6), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("gas", 7), 0.0, 0, 0.0, 0);
	SetGlobalFadeIn(0.0, 3.0, 0.0, 0.0, 0.0);
	object oRatrin = GetObjectByTag("Ratrin", 0);
	SetLockOrientationInDialog(oRatrin, 1);
	DelayCommand(0.2, AssignCommand(oRatrin, ActionStartConversation(GetFirstPC(), "ratrin", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}