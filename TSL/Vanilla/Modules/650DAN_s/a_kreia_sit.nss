void main() {
	int nParam1 = GetScriptParameter(1);
	object oKreia = GetObjectByTag("Kreia", 0);
	SetLockOrientationInDialog(oKreia, 1);
	AssignCommand(oKreia, PlayAnimation(10316, 1.0, (-1.0)));
	if (nParam1) {
		SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0);
	}
}

