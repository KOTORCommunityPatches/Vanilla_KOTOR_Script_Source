// Prototypes
void sub2();
void sub1();

void sub2() {
	int int1 = 0;
	while ((int1 < GetPartyMemberCount())) {
		{
			object oNPC = GetPartyMemberByIndex(int1);
			AssignCommand(oNPC, ClearAllActions());
			CancelCombat(oNPC);
		}
		(int1++);
	}
	object oKadron = GetObjectByTag("kadron", 0);
	NoClicksFor(1.0);
	DelayCommand(1.0, ActionStartConversation(GetFirstPC(), "ro_weed", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

void sub1() {
	object oMil_droid_mk2_nr = GetObjectByTag("mil_droid_mk2_nr", 0);
	object object3 = GetObjectByTag("mil_droid_mk2_nr", 1);
	object object5 = GetObjectByTag("mil_droid_mk2_nr", 2);
	object oMil_droid_mk2 = GetObjectByTag("mil_droid_mk2", 0);
	if (((((((!GetIsObjectValid(oMil_droid_mk2_nr)) || GetIsDead(oMil_droid_mk2_nr)) && ((!GetIsObjectValid(object3)) || GetIsDead(object3))) && ((!GetIsObjectValid(object5)) || GetIsDead(object5))) && ((!GetIsObjectValid(oMil_droid_mk2)) || GetIsDead(oMil_droid_mk2))) && (GetGlobalNumber("500OND_DarkSide_Iziz") == 1))) {
		object oKadron = GetObjectByTag("Kadron", 0);
		if (GetIsObjectValid(oKadron)) {
			AssignCommand(oKadron, DelayCommand(1.0, sub2()));
		}
	}
}

void main() {
	object object1 = OBJECT_SELF;
	float float1 = 10.0;
	int int1 = 1;
	object oNearest;
	if ((GetCurrentHitPoints(OBJECT_SELF) <= 1)) {
		effect efVisual = EffectVisualEffect(3011, 0);
		effect effect3 = EffectVisualEffect(1021, 0);
		effect efBeam = EffectBeam(2038, object1, 1, 0);
		effect efDamage;
		oNearest = GetNearestObject(1, object1, 1);
		int int3 = 1;
		int int4 = 20;
		float float2 = 0.3;
		AssignCommand(object1, ActionPlayAnimation(202, 1.0, 0.0));
		DelayCommand(0.3, ApplyEffectAtLocation(0, efVisual, GetLocation(object1), 0.0));
		while ((GetIsObjectValid(oNearest) && (GetDistanceBetween(oNearest, object1) <= float1))) {
			if (((int1 == 1) || GetIsEnemy(oNearest, GetFirstPC()))) {
				efDamage = EffectDamage(int4, 128, 0);
				DelayCommand(float2, ApplyEffectToObject(0, efDamage, oNearest, 0.0));
				DelayCommand(float2, ApplyEffectToObject(1, efBeam, oNearest, 1.0));
				DelayCommand(float2, ApplyEffectToObject(0, effect3, oNearest, 1.0));
				float2 = (float2 + 0.17);
			}
			(int3++);
			oNearest = GetNearestObject(1, object1, int3);
		}
		ApplyEffectToObject(0, EffectVisualEffect(1008, 0), object1, 0.0);
		effect effect10 = EffectDamage(2, 128, 0);
		DelayCommand(0.9, SetMinOneHP(object1, 0));
		DelayCommand(1.0, ApplyEffectToObject(0, effect10, object1, 0.0));
		DelayCommand(1.2, sub1());
	}
}

