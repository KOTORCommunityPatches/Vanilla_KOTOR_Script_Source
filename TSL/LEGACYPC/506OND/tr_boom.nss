void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	if ((GetGlobalNumber("506OND_Slicer_Dead") != 0)) {
		return;
	}
	string string1 = "xterm2";
	if ((GetTag(OBJECT_SELF) == "tr_boom_1")) {
		string1 = "xterm1";
	}
	float float1 = 10.0;
	int int4 = 1;
	object oNearest;
	object object4 = GetObjectByTag(string1, 0);
	if (GetIsObjectValid(object4)) {
		effect efVisual = EffectVisualEffect(3011, 0);
		effect effect3 = EffectVisualEffect(1021, 0);
		effect efBeam = EffectBeam(2038, object4, 1, 0);
		effect efDamage;
		oNearest = GetNearestObject(1, object4, 1);
		int int6 = 1;
		int int7 = 40;
		float float2 = 0.3;
		AssignCommand(object4, ActionPlayAnimation(202, 1.0, 0.0));
		DelayCommand(0.3, ApplyEffectAtLocation(0, efVisual, GetLocation(object4), 0.0));
		while ((GetIsObjectValid(oNearest) && (GetDistanceBetween(oNearest, object4) <= float1))) {
			if (((int4 == 1) || GetIsEnemy(oNearest, GetFirstPC()))) {
				efDamage = EffectDamage(int7, 128, 0);
				DelayCommand(float2, ApplyEffectToObject(0, efDamage, oNearest, 0.0));
				DelayCommand(float2, ApplyEffectToObject(1, efBeam, oNearest, 1.0));
				DelayCommand(float2, ApplyEffectToObject(0, effect3, oNearest, 1.0));
				float2 = (float2 + 0.17);
			}
			(int6++);
			oNearest = GetNearestObject(1, object4, int6);
		}
		ApplyEffectToObject(0, EffectVisualEffect(1008, 0), object4, 0.0);
	}
}

