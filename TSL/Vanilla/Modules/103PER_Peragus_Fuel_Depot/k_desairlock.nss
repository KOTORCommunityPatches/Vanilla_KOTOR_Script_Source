// Prototypes
void sub1();

void sub1() {
	AurPostString("k_desairlock: Console was hit", 5, 15, 10.0);
	object oDroCon = GetObjectByTag("DroCon", 0);
	object oAirlockInv = GetObjectByTag("AirlockInv", 0);
	if (GetIsObjectValid(oAirlockInv)) {
		AssignCommand(GetFirstPC(), ClearAllActions());
		AssignCommand(GetFirstPC(), PlayAnimation(19, 1.0, 1.0));
		AssignCommand(oAirlockInv, ClearAllActions());
		AssignCommand(oAirlockInv, ActionStartConversation(GetPCSpeaker(), "airlock", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	DestroyObject(oDroCon, 0.0, 1, 0.0, 0);
}

void main() {
	object oDroCon = GetObjectByTag("DroCon", 0);
	effect efVisual = EffectVisualEffect(3003, 0);
	location location1 = GetLocation(oDroCon);
	DelayCommand(1.5, ApplyEffectAtLocation(0, efVisual, location1, 0.0));
	DelayCommand(2.0, sub1());
	object oSpeaker = GetPCSpeaker();
	object oMainInv = GetObjectByTag("MainInv", 0);
	if ((GetIsObjectValid(oMainInv) == 0)) {
		oMainInv = OBJECT_SELF;
	}
	ChangeToStandardFaction(oMainInv, 1);
	AssignCommand(oSpeaker, ClearAllActions());
	AssignCommand(oSpeaker, ActionAttack(oMainInv, 0));
}
