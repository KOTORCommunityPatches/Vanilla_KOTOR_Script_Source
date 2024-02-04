void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	float float1;
	float float2;
	string string1;
	int int7;
	int int8;
	int int9;
	int int10;
	object oAnc_box_se;
	object object2;
	effect efVisual;
	effect effect2;
	effect efBeam;
	effect efDamage;
	switch (nParam1) {
		case 0:
			float1 = 10.0;
			int7 = 1;
			object2 = OBJECT_SELF;
			efVisual = EffectVisualEffect(3011, 0);
			effect2 = EffectVisualEffect(1021, 0);
			efBeam = EffectBeam(2038, object2, 1, 0);
			efDamage;
			oAnc_box_se = GetNearestObject(1, object2, 1);
			int8 = 1;
			int9 = 30;
			float2 = 0.3;
			AssignCommand(object2, ActionPlayAnimation(202, 1.0, 0.0));
			DelayCommand(0.3, ApplyEffectAtLocation(0, efVisual, GetLocation(object2), 0.0));
			while ((GetIsObjectValid(oAnc_box_se) && (GetDistanceBetween(oAnc_box_se, object2) <= float1))) {
				if (((int7 == 1) || GetIsEnemy(oAnc_box_se, GetFirstPC()))) {
					efDamage = EffectDamage(int9, 128, 0);
					DelayCommand(float2, ApplyEffectToObject(0, efDamage, oAnc_box_se, 0.0));
					DelayCommand(float2, ApplyEffectToObject(1, efBeam, oAnc_box_se, 1.0));
					DelayCommand(float2, ApplyEffectToObject(0, effect2, oAnc_box_se, 1.0));
					float2 = (float2 + 0.17);
				}
				(int8++);
				oAnc_box_se = GetNearestObject(1, object2, int8);
			}
			ApplyEffectToObject(0, EffectVisualEffect(1008, 0), object2, 0.0);
			break;
		case 1:
			GiveXPToCreature(GetFirstPC(), 500);
			oAnc_box_se = GetObjectByTag("anc_box_sw", 0);
			SetLocked(oAnc_box_se, 0);
			break;
		case 2:
			GiveXPToCreature(GetFirstPC(), 500);
			oAnc_box_se = GetObjectByTag("anc_box_se", 0);
			SetLocked(oAnc_box_se, 0);
			break;
		case 3:
			DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0);
			break;
		case 10:
			switch (nParam3) {
				case 1:
					string1 = "+";
					break;
				case 2:
					string1 = "-";
					break;
				case 3:
					string1 = "*";
					break;
				case 4:
					string1 = "/";
					break;
			}
			SetCustomToken(nParam2, string1);
			break;
	}
}