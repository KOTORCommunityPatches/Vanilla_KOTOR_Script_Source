// Prototypes
void sub1();

void sub1() {
	StopRumblePattern(8);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			SetGlobalBoolean("PER_TURNINTO_T3M4", 1);
			SetGlobalNumber("105PER_T3_END", 1);
			CreateObject(64, "stmventi001", GetLocation(GetObjectByTag("WP_T3_SMOKE", 0)), 0);
			DelayCommand(1.0, AssignCommand(GetFirstPC(), ClearAllEffects()));
			DelayCommand(1.0, AssignCommand(GetObjectByTag("HK50AMBUSH", 0), ClearAllEffects()));
			DelayCommand(1.0, sub1());
			break;
		case 2:
			break;
	}
}