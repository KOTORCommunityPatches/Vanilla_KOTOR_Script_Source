void main() {
	int int1;
	object oShapeObject;
	int int2 = GetTrapBaseType(OBJECT_SELF);
	location location1 = GetLocation(OBJECT_SELF);
	if ((((((int2 == 3) || (int2 == 4)) || (int2 == 19)) || (int2 == 5)) || (int2 == 20))) {
		int int4;
		int int5;
		effect efDamage;
		if ((int2 == 3)) {
			int5 = 18;
			int1 = 15;
		}
		if ((int2 == 4)) {
			int5 = 30;
			int1 = 20;
		}
		if ((int2 == 19)) {
			int5 = 42;
			int1 = 25;
		}
		if ((int2 == 5)) {
			int5 = 54;
			int1 = 30;
		}
		if ((int2 == 20)) {
			int5 = 66;
			int1 = 35;
		}
		int int6 = GetOwnerDemolitionsSkill(OBJECT_SELF);
		if ((int6 > 0)) {
			int5 = (int5 + int6);
		}
		float float1 = 3.3;
		if ((int6 > 0)) {
			float1 = (float1 + (0.1 * int6));
		}
		oShapeObject = GetFirstObjectInShape(4, float1, location1, 1, 1, [0.0,0.0,0.0]);
		while (GetIsObjectValid(oShapeObject)) {
			if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
				int5 = GetReflexAdjustedDamage(int5, oShapeObject, int1, 0, OBJECT_SELF);
				efDamage = EffectDamage(int5, 2, 0);
				ApplyEffectToObject(0, efDamage, oShapeObject, 0.0);
			}
			oShapeObject = GetNextObjectInShape(4, float1, location1, 1, 1, [0.0,0.0,0.0]);
		}
	}
	object oTr_stealth = GetObjectByTag("tr_stealth", 0);
	if (GetLocalBoolean(oTr_stealth, 55)) {
		return;
	}
	SetLocalBoolean(oTr_stealth, 55, 1);
	object oG_sithtroop004;
	object oWp_patrol_walk3 = GetWaypointByTag("wp_patrol1");
	oG_sithtroop004 = CreateObject(1, "g_sithtroop004", GetLocation(oWp_patrol_walk3), 0);
	oWp_patrol_walk3 = GetWaypointByTag("wp_patrol_walk1");
	AssignCommand(oG_sithtroop004, ActionMoveToObject(GetPartyLeader(), 1, 10.0));
	oWp_patrol_walk3 = GetWaypointByTag("wp_patrol2");
	oG_sithtroop004 = CreateObject(1, "g_sithtroop004", GetLocation(oWp_patrol_walk3), 0);
	oWp_patrol_walk3 = GetWaypointByTag("wp_patrol_walk2");
	AssignCommand(oG_sithtroop004, ActionMoveToObject(GetPartyLeader(), 1, 10.0));
	oWp_patrol_walk3 = GetWaypointByTag("wp_patrol3");
	oG_sithtroop004 = CreateObject(1, "g_sithtroop004", GetLocation(oWp_patrol_walk3), 0);
	oWp_patrol_walk3 = GetWaypointByTag("wp_patrol_walk3");
	AssignCommand(oG_sithtroop004, ActionMoveToObject(GetPartyLeader(), 1, 10.0));
	AurPostString("Alarm Set Off - stealth is over", 5, 5, 5.0);
	SetLocalBoolean(GetObjectByTag("power_gen_backup", 0), 45, 1);
	SetLocalBoolean(GetObjectByTag("power_gen", 0), 45, 1);
	SoundObjectPlay(GetObjectByTag("Alarm", 0));
}

