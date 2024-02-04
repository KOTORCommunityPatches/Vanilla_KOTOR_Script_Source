void main() {
	object oVictim = GetObjectByTag("Victim", 0);
	object oHitman = GetObjectByTag("Hitman", 0);
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			DestroyObject(oVictim, 0.0, 0, 0.0, 0);
			DestroyObject(oHitman, 0.0, 0, 0.0, 0);
			SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
			break;
		case 1:
			AssignCommand(oVictim, ActionMoveToObject(GetObjectByTag("WP_victim", 0), 1, 1.0));
			DelayCommand(1.5, DestroyObject(oVictim, 0.0, 0, 0.0, 0));
			break;
	}
}