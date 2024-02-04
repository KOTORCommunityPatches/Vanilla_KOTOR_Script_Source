// Prototypes
void sub2();
void sub1();

void sub2() {
	SetGlobalFadeOut(3.0, 0.5, 0.0, 0.0, 0.0);
	AssignCommand(GetObjectByTag("BaoDur", 0), ActionJumpToLocation(Location(Vector(64.13808, 25.90077, 1.8), 303.63025)));
	DelayCommand(3.5, AssignCommand(GetFirstPC(), ActionJumpToLocation(Location(Vector(63.85465, 28.03239, 1.8), 303.63025))));
	SetGlobalFadeIn(4.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(4.0, ActionResumeConversation());
}

void sub1() {
	AssignCommand(GetObjectByTag("nak_fakbao", 0), ActionJumpToLocation(Location(Vector(33.68354, 31.15456, 1.755), 156.19005)));
	AssignCommand(GetFirstPC(), ActionJumpToLocation(Location(Vector(29.63081, 30.05182, 1.85057), 53.02277)));
}

void main() {
	object oNak_fakbao = GetObjectByTag("nak_fakbao", 0);
	effect efHeal = EffectHeal((GetMaxHitPoints(oNak_fakbao) - 1));
	ApplyEffectToObject(0, efHeal, oNak_fakbao, 0.0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	object oPC = GetFirstPC();
	object oTrain_remote = CreateObject(1, "train_remote", Location(Vector(27.27368, 35.68989, 1.86088), 328.07672), 0);
	DelayCommand(0.5, sub1());
	SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
	ActionPauseConversation();
	SetLightsaberPowered(oNak_fakbao, 1, 1, 1);
	DelayCommand(5.0, AssignCommand(oTrain_remote, ActionAttack(oNak_fakbao, 0)));
	DelayCommand(4.8, AssignCommand(oNak_fakbao, ActionPlayAnimation(10100, 1.0, 1.0)));
	DelayCommand(8.0, SetLightsaberPowered(oNak_fakbao, 1, 1, 1));
	DelayCommand(9.0, AssignCommand(oTrain_remote, ActionAttack(oNak_fakbao, 0)));
	DelayCommand(8.8, AssignCommand(oNak_fakbao, ActionPlayAnimation(10100, 1.0, 1.0)));
	DelayCommand(11.0, sub2());
}