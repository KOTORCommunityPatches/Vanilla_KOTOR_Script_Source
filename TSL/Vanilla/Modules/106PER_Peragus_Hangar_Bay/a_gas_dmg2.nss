// Prototypes
void sub4();
void sub3();
void sub2();
void sub1();

void sub4() {
	CreateObject(64, "gasvent1", GetLocation(GetObjectByTag("WP_GAS4", 0)), 0);
}

void sub3() {
	CreateObject(64, "gasvent1", GetLocation(GetObjectByTag("WP_GAS3", 0)), 0);
}

void sub2() {
	CreateObject(64, "gasvent1", GetLocation(GetObjectByTag("WP_GAS2", 0)), 0);
}

void sub1() {
	CreateObject(64, "gasvent1", GetLocation(GetObjectByTag("WP_GAS1", 0)), 0);
}

void main() {
	if ((GetGlobalNumber("106PER_Decon_Door") != 2)) {
		return;
	}
	if ((GetGlobalNumber("106PER_Poison_Gas") != 1)) {
		if ((!GetLocalBoolean(OBJECT_SELF, 32))) {
			SetLocalBoolean(OBJECT_SELF, 32, 1);
			DelayCommand(0.5, sub1());
			DelayCommand(0.8, sub2());
			DelayCommand(1.1, sub3());
			DelayCommand(1.4, sub4());
		}
		effect efPoison = EffectPoison(6);
		object object1 = GetFirstInPersistentObject(OBJECT_SELF, 1, 0);
		while (GetIsObjectValid(object1)) {
			AurPostString(GetTag(object1), 5, 6, 1.0);
			if (((GetRacialType(object1) != 5) && (GetIsNeutral(object1, OBJECT_SELF) == 0))) {
				ApplyEffectToObject(2, efPoison, object1, 0.0);
			}
			object1 = GetNextInPersistentObject(OBJECT_SELF, 1, 0);
		}
	}
}
