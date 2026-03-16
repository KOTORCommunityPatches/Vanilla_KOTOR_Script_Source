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
		if ((!GetIsObjectValid(oKavar))) {
			AurPostString("Unable to find Kavar for Jedi Master Form attainment battle.", 10, 10, 3.0);
		}
		else {
			SetLocalBoolean(OBJECT_SELF, 34, 1);
			AssignCommand(oKavar, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
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

