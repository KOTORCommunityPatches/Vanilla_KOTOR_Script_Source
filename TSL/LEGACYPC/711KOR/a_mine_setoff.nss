void main() {
	object oWp_2nd_charge = GetObjectByTag("wp_2nd_charge", 0);
	if (GetLocalBoolean(oWp_2nd_charge, 55)) {
		return;
	}
	int int2;
	object oShapeObject;
	int int3 = GetTrapBaseType(OBJECT_SELF);
	location location1 = GetLocation(OBJECT_SELF);
	if ((((((int3 == 3) || (int3 == 4)) || (int3 == 19)) || (int3 == 5)) || (int3 == 20))) {
		int int5;
		int int6;
		effect efDamage;
		if ((int3 == 3)) {
			int6 = 18;
			int2 = 15;
		}
		if ((int3 == 4)) {
			int6 = 30;
			int2 = 20;
		}
		if ((int3 == 19)) {
			int6 = 42;
			int2 = 25;
		}
		if ((int3 == 5)) {
			int6 = 54;
			int2 = 30;
		}
		if ((int3 == 20)) {
			int6 = 66;
			int2 = 35;
		}
		int int7 = GetOwnerDemolitionsSkill(OBJECT_SELF);
		if ((int7 > 0)) {
			int6 = (int6 + int7);
		}
		float float1 = 3.3;
		if ((int7 > 0)) {
			float1 = (float1 + (0.1 * int7));
		}
		oShapeObject = GetFirstObjectInShape(4, float1, location1, 1, 1, [0.0,0.0,0.0]);
		AurPostString(GetTag(oShapeObject), 5, 5, 10.0);
		while (GetIsObjectValid(oShapeObject)) {
			if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
				int6 = GetReflexAdjustedDamage(int6, oShapeObject, int2, 0, OBJECT_SELF);
				efDamage = EffectDamage(int6, 2, 0);
				ApplyEffectToObject(0, efDamage, oShapeObject, 0.0);
			}
			oShapeObject = GetNextObjectInShape(4, float1, location1, 1, 1, [0.0,0.0,0.0]);
		}
	}
	int nLocal = GetLocalNumber(oWp_2nd_charge, 15);
	if ((nLocal < 5)) {
		AurPostString(("Mine Set Off" + IntToString((nLocal + 1))), 5, 5, 5.0);
		SetLocalNumber(oWp_2nd_charge, 15, (nLocal + 1));
	}
	else {
		object oG_repsold_capt = GetObjectByTag("g_repsold_capt", 0);
		AurPostString("Trigger Conversation", 5, 6, 5.0);
		SetLocalBoolean(oWp_2nd_charge, 55, 1);
		SetLocalBoolean(oG_repsold_capt, 55, 1);
		AssignCommand(oG_repsold_capt, ClearAllActions());
		AssignCommand(oG_repsold_capt, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

