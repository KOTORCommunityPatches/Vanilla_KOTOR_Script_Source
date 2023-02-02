// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
	float float1 = 10.0;
	int int1 = 1;
	object oNearest;
	if (GetIsObjectValid(objectParam1)) {
		effect efVisual = EffectVisualEffect(3011, 0);
		effect effect3 = EffectVisualEffect(1021, 0);
		effect efBeam = EffectBeam(2038, objectParam1, 1, 0);
		effect efDamage;
		oNearest = GetNearestObject(1, objectParam1, 1);
		int int3 = 1;
		int int4 = 40;
		float float2 = 0.3;
		AssignCommand(objectParam1, ActionPlayAnimation(201, 1.0, 0.0));
		DelayCommand(0.3, ApplyEffectAtLocation(0, efVisual, GetLocation(objectParam1), 0.0));
		while ((GetIsObjectValid(oNearest) && (GetDistanceBetween(oNearest, objectParam1) <= float1))) {
			if (((int1 == 1) || GetIsEnemy(oNearest, GetFirstPC()))) {
				efDamage = EffectDamage(int4, 128, 0);
				DelayCommand(float2, ApplyEffectToObject(0, efDamage, oNearest, 0.0));
				DelayCommand(float2, ApplyEffectToObject(1, efBeam, oNearest, 1.0));
				DelayCommand(float2, ApplyEffectToObject(0, effect3, oNearest, 1.0));
				float2 = (float2 + 0.17);
			}
			(int3++);
			oNearest = GetNearestObject(1, objectParam1, int3);
		}
		ApplyEffectToObject(0, EffectVisualEffect(1008, 0), objectParam1, 0.0);
	}
}

void main() {
	int nParam1 = GetScriptParameter(1);
	DelayCommand((IntToFloat(nParam1) + 0.1), sub1(OBJECT_SELF));
}
