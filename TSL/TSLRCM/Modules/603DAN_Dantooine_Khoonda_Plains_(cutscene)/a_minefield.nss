// Prototypes
void sub3(object objectParam1);
void sub2(int intParam1);
void sub1();

void sub3(object objectParam1) {
	effect efDamage = EffectDamage(1000, 8, 0);
	effect efVisual = EffectVisualEffect(3003, 0);
	ApplyEffectToObject(0, efDamage, objectParam1, 0.0);
	ApplyEffectToObject(0, efVisual, objectParam1, 0.0);
}

void sub2(int intParam1) {
	if ((intParam1 == 1)) {
	}
	else {
		if ((intParam1 == 2)) {
			object oMine_merc = GetObjectByTag("mine_merc", 0);
			object object3 = GetObjectByTag("mine_merc", 1);
			object object5 = GetObjectByTag("mine_merc", 2);
			DelayCommand(3.0, sub3(oMine_merc));
			DelayCommand(3.5, sub3(object3));
			DelayCommand(5.0, sub3(object5));
		}
		else {
			if ((intParam1 == 3)) {
				object object7 = GetObjectByTag("mine_merc", 0);
				object object9 = GetObjectByTag("mine_merc", 1);
				object object11 = GetObjectByTag("mine_merc", 2);
				object object13 = GetObjectByTag("mine_merc", 3);
				object object15 = GetObjectByTag("mine_merc", 4);
				object object17 = GetObjectByTag("mine_merc", 5);
				object object19 = GetObjectByTag("mine_merc", 6);
				DelayCommand(3.0, sub3(object7));
				DelayCommand(3.8, sub3(object9));
				DelayCommand(4.0, sub3(object11));
				DelayCommand(4.2, sub3(object13));
				DelayCommand(5.0, sub3(object15));
				DelayCommand(5.7, sub3(object17));
				DelayCommand(6.6, sub3(object19));
			}
		}
	}
}

void sub1() {
	int int1 = 1;
	while ((int1 < 8)) {
		{
			string string1 = ("WP_merc_0" + IntToString(int1));
			object object1 = GetObjectByTag(string1, 0);
			object oG_merc_az002 = CreateObject(1, "g_merc_az002", GetLocation(object1), 0);
			if ((!GetIsObjectValid(oG_merc_az002))) {
				AssignCommand(oG_merc_az002, ClearAllActions());
			}
			AssignCommand(oG_merc_az002, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_front_atk_1", 0)), 1));
			AssignCommand(oG_merc_az002, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_front_atk_2", 0)), 1));
			AssignCommand(oG_merc_az002, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_front_atk_3", 0)), 1));
		}
		(int1++);
	}
}

void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	ExecuteScript("a_clear_turrets", GetFirstPC(), 0xFFFFFFFF);
	sub1();
	int nParam1 = GetScriptParameter(1);
	DelayCommand(1.0, sub2(nParam1));
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
}