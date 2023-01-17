// Prototypes
void sub3();
void sub2();
void sub1();

void sub3() {
	AurPostString("Starting GOTO", 5, 6, 5.0);
	SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
	AssignCommand(GetObjectByTag("GotoHolo", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("GotoHolo", 0), ActionStartConversation(GetFirstPC(), "gotocut1", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

void sub2() {
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("wp_pc", 0), 1));
}

void sub1() {
	AurPostString("Switching To PC", 5, 5, 5.0);
	SwitchPlayerCharacter((-1));
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	if (GetLoadFromSaveGame()) {
		return;
	}
	if (GetGlobalBoolean("351NAR_FIRST_TIME")) {
		AurPostString("Running enter script", 5, 3, 4.0);
		SetGlobalBoolean("351NAR_FIRST_TIME", 0);
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		SetGlobalNumber("800DRO_Console_56", 1);
		SetGlobalNumber("351NAR_Power", 10);
		SetGlobalNumber("800DRO_Count_01", 2);
		DelayCommand(0.5, sub1());
		DelayCommand(1.0, sub2());
		DelayCommand(2.0, sub3());
	}
}

