// Prototypes
void sub1();

void sub1() {
	SetGlobalBoolean("PER_TURNINTO_T3M4", 1);
	effect effect1 = EffectCutSceneParalyze();
	object oNPC = GetPartyMemberByIndex(0);
	ApplyEffectToObject(1, effect1, oNPC, 4.0);
	StartNewModule("106PER", "", "", "", "", "", "", "");
}

void main() {
	DelayCommand(0.1, SetGlobalFadeOut(0.0, 0.75, 0.0, 0.0, 0.0));
	DelayCommand(1.0, sub1());
}