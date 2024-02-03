// Prototypes
void sub2();
void sub1();

void sub2() {
	int nPartyCount = GetPartyMemberCount();
	int int3;
	effect effect1 = EffectDisguise(279);
	int3 = 0;
	while ((int3 < nPartyCount)) {
		{
			object oNPC = GetPartyMemberByIndex(int3);
			ApplyEffectToObject(2, effect1, oNPC, 0.0);
		}
		(int3++);
	}
}

void sub1() {
	object oMira = GetObjectByTag("Mira", 0);
	DestroyObject(oMira, 0.0, 0, 0.0, 0);
	AddAvailableNPCByTemplate(7, "p_mira");
	SwitchPlayerCharacter(7);
}

void main() {
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(1.0, sub1());
	object oInvisoKreia = GetObjectByTag("InvisoKreia", 0);
	AssignCommand(oInvisoKreia, DelayCommand(1.1, SetPlayerRestrictMode(1)));
	AssignCommand(oInvisoKreia, DelayCommand(1.1, SetGlobalBoolean("G_PER_In_Space_Suit", 1)));
	NoClicksFor(1.5);
	AssignCommand(oInvisoKreia, DelayCommand(1.5, sub2()));
	AssignCommand(oInvisoKreia, DelayCommand(2.5, StartNewModule("304NAR", "", "", "", "", "", "", "")));
}

