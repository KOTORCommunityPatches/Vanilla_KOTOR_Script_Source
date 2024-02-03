struct structtype1 {
	float float1;
	float float3;
};

void main() {
	if ((!GetIsPartyLeader(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 45)) {
		return;
	}
	int int3 = 0;
	object oVa_sold_hvyThrone;
	object oVa_sold_gunThrone;
	object oRo_sold_hvyThrone;
	object oRo_sold_gunThrone;
	effect efDeath = EffectDeath(0, 1, 0);
	if (GetGlobalNumber("500OND_DarkSide_Iziz")) {
		int3 = 0;
		while ((int3 < 4)) {
			oVa_sold_hvyThrone = GetObjectByTag("va_sold_hvyThrone", int3);
			ChangeToStandardFaction(oVa_sold_hvyThrone, 5);
			oVa_sold_gunThrone = GetObjectByTag("va_sold_gunThrone", int3);
			ChangeToStandardFaction(oVa_sold_gunThrone, 5);
			oRo_sold_hvyThrone = GetObjectByTag("ro_sold_hvyThrone", int3);
			ApplyEffectToObject(0, efDeath, oRo_sold_hvyThrone, 0.0);
			oRo_sold_gunThrone = GetObjectByTag("ro_sold_gunThrone", int3);
			ApplyEffectToObject(0, efDeath, oRo_sold_gunThrone, 0.0);
			(int3++);
		}
		object oKavar = GetObjectByTag("Kavar", 0);
		object oVaklu = GetObjectByTag("Vaklu", 0);
		object oPC = GetFirstPC();
		if (((!GetIsObjectValid(oKavar)) || (!GetIsObjectValid(oVaklu)))) {
			AurPostString("Unable to find Kavar for Jedi Master Form attainment battle.", 10, 10, 3.0);
		}
		else {
			object oWP_MASTER_CUT_MASTER = GetObjectByTag("WP_MASTER_CUT_MASTER", 0);
			AssignCommand(oKavar, ClearAllActions());
			AssignCommand(oKavar, ClearAllEffects());
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			DelayCommand(0.5, AssignCommand(oKavar, ActionJumpToLocation(GetLocation(oWP_MASTER_CUT_MASTER))));
			if (GetIsObjectValid(oVaklu)) {
				AssignCommand(oVaklu, ClearAllActions());
				AssignCommand(oVaklu, ClearAllEffects());
				location location2 = Location(Vector(0.0, 164.5, 0.0), 90.0);
				AssignCommand(oVaklu, ActionJumpToLocation(location2));
			}
			object object18 = GetObjectByTag("va_sold_hvyThrone", 0);
			object object20 = GetObjectByTag("va_sold_gunThrone", 0);
			object object22 = GetObjectByTag("va_sold_gunThrone", 1);
			object object24 = GetObjectByTag("va_sold_hvyThrone", 1);
			if (GetIsObjectValid(object18)) {
				AssignCommand(object18, ClearAllActions());
				AssignCommand(object18, ClearAllEffects());
				location location4 = Location(Vector((-2.5), 166.0, 0.0), 40.0);
				AssignCommand(object18, ActionJumpToLocation(location4));
			}
			if (GetIsObjectValid(object20)) {
				AssignCommand(object20, ClearAllActions());
				AssignCommand(object20, ClearAllEffects());
				location location6 = Location(Vector((-1.0), 165.0, 0.0), 70.0);
				AssignCommand(object20, ActionJumpToLocation(location6));
			}
			if (GetIsObjectValid(object22)) {
				AssignCommand(object22, ClearAllActions());
				AssignCommand(object22, ClearAllEffects());
				location location8 = Location(Vector(1.0, 165.0, 0.0), 110.0);
				AssignCommand(object22, ActionJumpToLocation(location8));
			}
			if (GetIsObjectValid(object24)) {
				AssignCommand(object24, ClearAllActions());
				AssignCommand(object24, ClearAllEffects());
				location location10 = Location(Vector(2.5, 166.0, 0.0), 140.0);
				AssignCommand(object24, ActionJumpToLocation(location10));
			}
			SetLocalBoolean(OBJECT_SELF, 34, 1);
			DelayCommand(2.0, AssignCommand(oVaklu, ActionStartConversation(oPC, "vaklu", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			SetLocalBoolean(OBJECT_SELF, 45, 1);
		}
		return;
	}
	int3 = 0;
	while ((int3 < 4)) {
		oVa_sold_hvyThrone = GetObjectByTag("va_sold_hvyThrone", int3);
		ApplyEffectToObject(0, efDeath, oVa_sold_hvyThrone, 0.0);
		oVa_sold_gunThrone = GetObjectByTag("va_sold_gunThrone", int3);
		ApplyEffectToObject(0, efDeath, oVa_sold_gunThrone, 0.0);
		oRo_sold_hvyThrone = GetObjectByTag("ro_sold_hvyThrone", int3);
		ChangeToStandardFaction(oRo_sold_hvyThrone, 5);
		oRo_sold_gunThrone = GetObjectByTag("ro_sold_gunThrone", int3);
		ChangeToStandardFaction(oRo_sold_gunThrone, 5);
		(int3++);
	}
	AssignCommand(GetObjectByTag("invis_kavar", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	SetLocalBoolean(OBJECT_SELF, 45, 1);
}

