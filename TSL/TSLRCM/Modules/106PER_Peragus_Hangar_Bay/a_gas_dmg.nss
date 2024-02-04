void main() {
	if ((GetGlobalNumber("106PER_Poison_Gas") != 1)) {
		effect efPoison = EffectPoison(6);
		object object1 = GetFirstInPersistentObject(OBJECT_SELF, 1, 0);
		while (GetIsObjectValid(object1)) {
			if (((GetRacialType(object1) != 5) && (GetIsNeutral(object1, OBJECT_SELF) == 0))) {
				ApplyEffectToObject(2, efPoison, object1, 0.0);
			}
			object1 = GetNextInPersistentObject(OBJECT_SELF, 1, 0);
		}
	}
}