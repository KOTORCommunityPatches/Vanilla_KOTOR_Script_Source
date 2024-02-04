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
	object oPC = GetFirstPC();
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			AurPostString("case 0: vrook comes out", 5, 5, 5.0);
			ClearAllEffects();
			ClearAllActions();
			SetLocalBoolean(OBJECT_SELF, 42, 1);
			DelayCommand(0.5, AssignCommand(GetObjectByTag("vrookcage", 0), ActionPlayAnimation(202, 1.0, 0.0)));
			AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("wp_free_pc1", 0), 1));
			DelayCommand(1.7, AssignCommand(GetObjectByTag("npc_vrook", 0), ActionMoveToObject(GetObjectByTag("wp_free_vrook1", 0), 0, 1.0)));
			break;
		case 1:
			AurPostString("case 1: vrook runs away", 5, 5, 5.0);
			ClearAllEffects();
			ClearAllActions();
			DelayCommand(0.3, AssignCommand(GetObjectByTag("npc_vrook", 0), ActionMoveToObject(GetObjectByTag("wp_free_vrook2", 0), 1, 1.0)));
			DelayCommand(3.0, ClearAllActions());
			DelayCommand(3.1, DestroyObject(GetObjectByTag("npc_vrook", 0), 0.0, 1, 0.0, 0));
			break;
		case 2:
			AurPostString("case 2: vrook force waves everyone", 5, 5, 5.0);
			{
				object oNPC = GetPartyMemberByIndex(0);
				object object12 = GetPartyMemberByIndex(1);
				object object14 = GetPartyMemberByIndex(2);
				object oNpc_vrook = GetObjectByTag("npc_vrook", 0);
				ClearAllEffects();
				ClearAllActions();
				effect efVisual = EffectVisualEffect(3001, 0);
				DelayCommand(0.3, ApplyEffectToObject(1, efVisual, OBJECT_SELF, 1.5));
				DelayCommand(0.3, ActionCastFakeSpellAtObject(46, oPC, 0));
				DelayCommand(0.6, ChangeToStandardFaction(OBJECT_SELF, 5));
				DelayCommand(0.6, AssignCommand(oNpc_vrook, ClearAllActions()));
				DelayCommand(0.7, AssignCommand(oNpc_vrook, ActionMoveToObject(GetObjectByTag("wp_free_vrook2", 0), 1, 1.0)));
				DelayCommand(0.6, sub1(oNPC, OBJECT_SELF, 6.0));
				DelayCommand(0.6, sub1(object12, OBJECT_SELF, 6.0));
				DelayCommand(0.6, sub1(object14, OBJECT_SELF, 6.0));
				DelayCommand(5.5, SetFakeCombatState(oNPC, 0));
				DelayCommand(5.5, SetFakeCombatState(object12, 0));
				DelayCommand(5.5, SetFakeCombatState(object14, 0));
				DelayCommand(6.5, ClearAllActions());
				DelayCommand(6.6, DestroyObject(oNpc_vrook, 0.0, 0, 0.0, 0));
			}
			break;
	}
}