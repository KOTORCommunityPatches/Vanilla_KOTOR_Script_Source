// Prototypes
void sub1(string stringParam1, float floatParam2, int intParam3);

void sub1(string stringParam1, float floatParam2, int intParam3) {
	object oWP = GetWaypointByTag(stringParam1);
	object oPC = GetFirstPC();
	if (GetIsObjectValid(oWP)) {
		effect efVisual = EffectVisualEffect(3006, 0);
		ApplyEffectAtLocation(0, efVisual, GetLocation(oWP), 0.0);
		object oNearest = GetNearestCreature(0, 6, oWP, 1, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
		int int2 = 1;
		while ((GetIsObjectValid(oNearest) && (GetDistanceBetween(oNearest, oWP) <= floatParam2))) {
			{
				float float2 = (1.5 + (IntToFloat(d10(1)) / 10.0));
				float float4 = (float2 + (IntToFloat(d20(1)) / 10.0));
				DelayCommand(float2, ApplyEffectToObject(1, EffectChoke(), oNearest, 3.0));
				DelayCommand(float4, ApplyEffectToObject(2, EffectPoison(5), oNearest, 0.0));
				DelayCommand(float4, ApplyEffectToObject(2, EffectPoison(0), oNearest, 0.0));
				(int2++);
				oNearest = GetNearestCreature(0, 6, oWP, int2, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
			}
		}
	}
}

void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	if ((GetGlobalNumber("506OND_Slicer_Dead") != 0)) {
		return;
	}
	object oDoor_gas;
	DelayCommand(0.0, sub1("gas_vent_0", 6.0, 1));
	DelayCommand(0.2, sub1("gas_vent_1", 6.0, 1));
	DelayCommand(0.3, sub1("gas_vent_2", 6.0, 1));
	DelayCommand(0.6, sub1("gas_vent_3", 6.0, 1));
	DelayCommand(0.8, sub1("gas_vent_4", 6.0, 1));
	if ((!GetLocalBoolean(OBJECT_SELF, 41))) {
		oDoor_gas = GetObjectByTag("door_gas", 0);
		AssignCommand(oDoor_gas, ActionCloseDoor(oDoor_gas));
		SetLocked(oDoor_gas, 1);
		oDoor_gas = GetObjectByTag("door_gas", 1);
		AssignCommand(oDoor_gas, ActionCloseDoor(oDoor_gas));
		SetLocked(oDoor_gas, 1);
		SetLocalBoolean(OBJECT_SELF, 41, 1);
	}
	SetLocalBoolean(GetObjectByTag("sec_term_gas", 0), 51, 1);
}