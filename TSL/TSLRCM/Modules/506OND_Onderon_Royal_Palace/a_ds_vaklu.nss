// Prototypes
int sub4();
int sub3();
void sub2(object objectParam1, object objectParam2, int intParam3);
void sub1(object objectParam1, object objectParam2, float floatParam3);

int sub4() {
	int int1 = (Random(5) + 1);
	if ((int1 == 5)) {
		int1 = 8;
	}
	return int1;
}

int sub3() {
	return (Random(4) + 94);
}

void sub2(object objectParam1, object objectParam2, int intParam3) {
	int int1;
	float float1 = 0.5;
	int1 = 0;
	while ((int1 < intParam3)) {
		DelayCommand(float1, AssignCommand(objectParam1, ActionDoCommand(CutsceneAttack(objectParam2, sub3(), sub4(), d6(1)))));
		DelayCommand((float1 + 1.5), AssignCommand(objectParam2, ActionDoCommand(CutsceneAttack(objectParam1, sub3(), sub4(), d6(1)))));
		float1 = (float1 + 3.0);
		(int1++);
	}
	DelayCommand(float1, AssignCommand(objectParam1, ActionPlayAnimation(19, 1.0, (-1.0))));
	DelayCommand((float1 + 1.5), AssignCommand(objectParam2, ActionPlayAnimation(19, 1.0, (-1.0))));
}

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
		DelayCommand(1.5, ApplyEffectToObject(2, effect7, objectParam1, 0.0));
	}
}

void main() {
	int nParam1 = GetScriptParameter(1);
	object oPC = GetFirstPC();
	object oKavar = GetObjectByTag("kavar", 0);
	object oVaklu = GetObjectByTag("vaklu", 0);
	switch (nParam1) {
		case 0:
			{
				int int3 = 0;
				int3 = 0;
				while ((int3 < 12)) {
				if (IsNPCPartyMember(int3)) {
					RemoveNPCFromPartyToBase(int3);
				}
					(int3++);
				}
				object oVa_sold_hvyThrone = GetObjectByTag("va_sold_hvyThrone", 0);
				object oVa_sold_gunThrone = GetObjectByTag("va_sold_gunThrone", 0);
				object object11 = GetObjectByTag("va_sold_gunThrone", 1);
				object object13 = GetObjectByTag("va_sold_hvyThrone", 1);
				object oNPC = GetPartyMemberByIndex(1);
				object object17 = GetPartyMemberByIndex(2);
				location location1 = Location(Vector(0.0, 168.0, 0.0), 90.0);
				effect efVisual = EffectVisualEffect(3001, 0);
				ActionPauseConversation();
				if (GetIsObjectValid(oPC)) {
					AssignCommand(oPC, ClearAllActions());
					AssignCommand(oPC, ClearAllEffects());
				location location3 = Location(Vector((-4.0), 169.0, 0.0), 55.0);
					AssignCommand(oPC, ActionJumpToLocation(location3));
				}
				if (GetIsObjectValid(oNPC)) {
					AssignCommand(oNPC, ClearAllActions());
					AssignCommand(oNPC, ClearAllEffects());
				object oWP_MASTER_CUT_PC2 = GetObjectByTag("WP_MASTER_CUT_PC2", 0);
					AssignCommand(oNPC, ActionJumpToLocation(GetLocation(oWP_MASTER_CUT_PC2)));
				}
				if (GetIsObjectValid(object17)) {
					AssignCommand(object17, ClearAllActions());
					AssignCommand(object17, ClearAllEffects());
				object oWP_MASTER_CUT_PC3 = GetObjectByTag("WP_MASTER_CUT_PC3", 0);
					AssignCommand(object17, ActionJumpToLocation(GetLocation(oWP_MASTER_CUT_PC3)));
				}
				if (GetIsObjectValid(oVaklu)) {
					AssignCommand(oVaklu, ClearAllActions());
					AssignCommand(oVaklu, ClearAllEffects());
					AssignCommand(oVaklu, ActionMoveToLocation(location1, 1));
				}
				if (GetIsObjectValid(oVa_sold_hvyThrone)) {
					AssignCommand(oVa_sold_hvyThrone, ClearAllActions());
					AssignCommand(oVa_sold_hvyThrone, ClearAllEffects());
				location location7 = Location(Vector((-2.5), 169.0, 0.0), 45.0);
					AssignCommand(oVa_sold_hvyThrone, ActionMoveToLocation(location7, 1));
				}
				if (GetIsObjectValid(oVa_sold_gunThrone)) {
					AssignCommand(oVa_sold_gunThrone, ClearAllActions());
					AssignCommand(oVa_sold_gunThrone, ClearAllEffects());
				location location9 = Location(Vector((-1.0), 168.5, 0.0), 75.0);
					AssignCommand(oVa_sold_gunThrone, ActionMoveToLocation(location9, 1));
				}
				if (GetIsObjectValid(object11)) {
					AssignCommand(object11, ClearAllActions());
					AssignCommand(object11, ClearAllEffects());
				location location11 = Location(Vector(1.0, 168.5, 0.0), 105.0);
					AssignCommand(object11, ActionMoveToLocation(location11, 1));
				}
				if (GetIsObjectValid(object13)) {
					AssignCommand(object13, ClearAllActions());
					AssignCommand(object13, ClearAllEffects());
				location location13 = Location(Vector(2.5, 169.0, 0.0), 135.0);
					AssignCommand(object13, ActionMoveToLocation(location13, 1));
				}
				DelayCommand(2.0, AssignCommand(oKavar, ApplyEffectToObject(1, efVisual, OBJECT_SELF, 1.5)));
				DelayCommand(2.0, AssignCommand(oKavar, ActionCastFakeSpellAtObject(46, oVaklu, 0)));
				DelayCommand(2.6, sub1(oVaklu, oKavar, 6.0));
				DelayCommand(2.6, sub1(oVa_sold_hvyThrone, oKavar, 6.0));
				DelayCommand(2.6, sub1(oVa_sold_gunThrone, oKavar, 6.0));
				DelayCommand(2.6, sub1(object11, oKavar, 6.0));
				DelayCommand(2.6, sub1(object13, oKavar, 6.0));
				DelayCommand(4.0, AssignCommand(oKavar, ActionPlayAnimation(121, 1.0, 0.0)));
				DelayCommand(6.0, AssignCommand(oVaklu, ClearAllActions()));
				DelayCommand(6.0, AssignCommand(oVaklu, ClearAllEffects()));
				DelayCommand(7.0, ActionResumeConversation());
			}
			break;
		case 1:
			ActionPauseConversation();
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oPC, ClearAllEffects());
			{
				object oWP_MASTER_CUT_PC1 = GetObjectByTag("WP_MASTER_CUT_PC1", 0);
				AssignCommand(oPC, ActionMoveToLocation(GetLocation(oWP_MASTER_CUT_PC1), 0));
				DelayCommand(2.0, AssignCommand(oPC, ActionDoCommand(SetFacingPoint(GetPosition(oKavar)))));
				DelayCommand(2.5, CreatureFlourishWeapon(oPC));
				DelayCommand(5.5, ActionResumeConversation());
			}
			break;
		case 2:
			{
				object oTalia = GetObjectByTag("talia", 0);
				location location16 = Location(Vector((-2.5), 170.0, 0.0), 135.0);
				location location18 = Location(Vector((-2.0), 185.0, 0.0), 45.0);
				location location20 = Location(Vector((-0.75077), 185.4454, 0.0), 0.0);
				ActionPauseConversation();
				if ((GetIsObjectValid(oVaklu) && GetIsObjectValid(oTalia))) {
					AssignCommand(oVaklu, ClearAllActions());
					AssignCommand(oVaklu, ClearAllEffects());
					AssignCommand(oVaklu, ActionForceMoveToLocation(location16, 1, 30.0));
					DelayCommand(1.0, AssignCommand(oVaklu, ActionForceMoveToLocation(location18, 1, 30.0)));
					DelayCommand(3.0, AssignCommand(oVaklu, ActionForceMoveToLocation(location20, 1, 30.0)));
					SetCommandable(1, oVaklu);
					SetLocalBoolean(oVaklu, 87, 1);
					ChangeToStandardFaction(oVaklu, 22);
					AssignCommand(oTalia, ClearAllActions());
					AssignCommand(oTalia, ClearAllEffects());
					SetCommandable(1, oTalia);
					SetLocalBoolean(oTalia, 87, 1);
					ChangeToStandardFaction(oTalia, 22);
					AssignCommand(oTalia, ActionPlayAnimation(19, 1.0, (-1.0)));
					DelayCommand(4.8, sub2(oVaklu, oTalia, 3));
					DelayCommand(14.0, ActionResumeConversation());
				}
			}
			break;
		case 3:
			{
				object object27 = GetObjectByTag("talia", 0);
				if ((GetIsObjectValid(oVaklu) && GetIsObjectValid(object27))) {
					sub2(oVaklu, object27, 3);
				}
			}
			break;
		case 4:
			{
				object object29 = GetObjectByTag("va_sold_hvyThrone", 0);
				object object31 = GetObjectByTag("va_sold_gunThrone", 0);
				object object33 = GetObjectByTag("va_sold_gunThrone", 1);
				object object35 = GetObjectByTag("va_sold_hvyThrone", 1);
				AssignCommand(object29, ClearAllEffects());
				AssignCommand(object29, ClearAllActions());
				AssignCommand(object31, ClearAllEffects());
				AssignCommand(object31, ClearAllActions());
				AssignCommand(object33, ClearAllEffects());
				AssignCommand(object33, ClearAllActions());
				AssignCommand(object35, ClearAllEffects());
				AssignCommand(object35, ClearAllActions());
			}
			break;
	}
}