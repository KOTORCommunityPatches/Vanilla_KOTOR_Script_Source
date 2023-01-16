// Prototypes
void sub2();
void sub1();

void sub2() {
	StartNewModule("303NAR", "FROM_VISQUIS_304NAR", "", "", "", "", "", "");
}

void sub1() {
	int int1 = 62;
	object oNPC;
	effect efNext;
	int nPartyCount = GetPartyMemberCount();
	int int4 = 0;
	while ((int4 < nPartyCount)) {
		oNPC = GetPartyMemberByIndex(int4);
		efNext = GetFirstEffect(oNPC);
		while (GetIsEffectValid(efNext)) {
			if ((GetEffectType(efNext) == int1)) {
				RemoveEffect(oNPC, efNext);
			}
			efNext = GetNextEffect(oNPC);
		}
		(int4++);
	}
}

void main() {
	SetPlayerRestrictMode(0);
	SetGlobalBoolean("G_PER_In_Space_Suit", 0);
	NoClicksFor(1.5);
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(1.0, sub1());
	SwitchPlayerCharacter((-1));
	SetGlobalNumber("304NAR_Visquis_Meet", 1);
	DelayCommand(2.0, sub2());
}

