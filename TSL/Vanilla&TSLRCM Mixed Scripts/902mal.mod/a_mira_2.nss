// Prototypes
void sub2();
void sub1();

void sub2() {
	ApplyEffectToObject(0, EffectHeal(GetMaxHitPoints(GetFirstPC())), GetFirstPC(), 0.0);
	SetMinOneHP(GetFirstPC(), 0);
	DestroyObject(GetObjectByTag("Hanharr2", 0), 0.0, 0, 0.0, 0);
	AssignCommand(GetFirstPC(), DelayCommand(0.5, StartNewModule("902MAL", "FROM_901MAL", "", "", "", "", "", "")));
}

void sub1() {
	SwitchPlayerCharacter((-1));
}

void main() {
	object oHanharr2 = GetObjectByTag("Hanharr2", 0);
	SetGlobalFadeOut(0.5, 2.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	AssignCommand(oHanharr2, DelayCommand(3.0, sub1()));
	AssignCommand(oHanharr2, DelayCommand(3.2, sub2()));
}

