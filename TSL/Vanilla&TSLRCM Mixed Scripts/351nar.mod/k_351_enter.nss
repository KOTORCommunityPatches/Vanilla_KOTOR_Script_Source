struct structtype1 {
	float float1;
	float float3;
};

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
	if (((GetGlobalNumber("351NAR_Party2") != 5) && (GetGlobalNumber("351NAR_Party1") != 5))) {
		CreateObject(1, "hk503", Location(Vector(68.01653, (-0.69984), 11.067), 90.0), 0);
		CreateObject(1, "hk502", Location(Vector(71.08228, (-0.012), 11.067), 90.0), 0);
		CreateObject(1, "hk501", Location(Vector(65.25763, (-0.40053), 11.067), 90.0), 0);
	}
	ApplyEffectToObject(0, EffectHeal(1000), GetPartyLeader(), 0.0);
	ApplyEffectToObject(0, EffectHeal(1000), GetPartyMemberByIndex(1), 0.0);
}

