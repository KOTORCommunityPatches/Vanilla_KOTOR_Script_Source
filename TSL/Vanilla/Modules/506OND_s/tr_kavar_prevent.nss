// Prototypes
void sub1(object objectParam1, object objectParam2, float floatParam3);

void sub1(object objectParam1, object objectParam2, float floatParam3) {
	if ((!GetIsObjectValid(objectParam1))) {
		return;
	}
	{
		effect efPush = EffectForcePushTargeted(GetLocation(objectParam2), 0);
		effect efVisual = EffectVisualEffect(3002, 0);
		effect effect5 = EffectVisualEffect(1017, 0);
		effect effect7 = EffectCutSceneStunned();
		ApplyEffectToObject(0, efPush, objectParam1, 0.0);
		ApplyEffectToObject(1, efVisual, objectParam1, floatParam3);
		ApplyEffectToObject(1, effect5, objectParam1, floatParam3);
		DelayCommand(1.5, ApplyEffectToObject(1, effect7, objectParam1, floatParam3));
	}
}

void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((!GetLocalBoolean(GetObjectByTag("tr_kavar_enter", 0), 34))) {
		return;
	}
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	object oWP_MASTER_CUT_PC1 = GetObjectByTag("WP_MASTER_CUT_PC1", 0);
	object oWP_MASTER_CUT_PC2 = GetObjectByTag("WP_MASTER_CUT_PC2", 0);
	object oWP_MASTER_CUT_PC3 = GetObjectByTag("WP_MASTER_CUT_PC3", 0);
	object oWP_MASTER_CUT_MASTER = GetObjectByTag("WP_MASTER_CUT_MASTER", 0);
	object oNPC = GetPartyMemberByIndex(0);
	object object14 = GetPartyMemberByIndex(1);
	object object16 = GetPartyMemberByIndex(2);
	object oKavar = GetObjectByTag("kavar", 0);
	if (GetIsObjectValid(oKavar)) {
		AssignCommand(oKavar, ClearAllActions());
		AssignCommand(oKavar, ClearAllEffects());
		AssignCommand(oKavar, ActionJumpToLocation(GetLocation(oWP_MASTER_CUT_MASTER)));
	}
	if (GetIsObjectValid(oNPC)) {
		AssignCommand(oNPC, ClearAllActions());
		AssignCommand(oNPC, ActionJumpToLocation(GetLocation(oWP_MASTER_CUT_PC1)));
	}
	if (GetIsObjectValid(object14)) {
		AssignCommand(object14, ClearAllActions());
		AssignCommand(object14, ActionJumpToLocation(GetLocation(oWP_MASTER_CUT_PC2)));
	}
	if (GetIsObjectValid(object16)) {
		AssignCommand(object16, ClearAllActions());
		AssignCommand(object16, ActionJumpToLocation(GetLocation(oWP_MASTER_CUT_PC3)));
	}
	SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
	effect efVisual = EffectVisualEffect(3001, 0);
	DelayCommand(1.0, AssignCommand(oKavar, ApplyEffectToObject(1, efVisual, OBJECT_SELF, 1.5)));
	DelayCommand(1.0, AssignCommand(oKavar, ActionCastFakeSpellAtObject(46, oNPC, 0)));
	DelayCommand(1.6, sub1(oNPC, oKavar, 6.0));
	DelayCommand(1.6, sub1(object14, oKavar, 6.0));
	DelayCommand(1.6, sub1(object16, oKavar, 6.0));
	DelayCommand(5.5, SetFakeCombatState(oNPC, 0));
	DelayCommand(5.5, SetFakeCombatState(object14, 0));
	DelayCommand(5.5, SetFakeCombatState(object16, 0));
	DelayCommand(1.0, AssignCommand(GetFirstPC(), ActionBarkString(128414)));
}

