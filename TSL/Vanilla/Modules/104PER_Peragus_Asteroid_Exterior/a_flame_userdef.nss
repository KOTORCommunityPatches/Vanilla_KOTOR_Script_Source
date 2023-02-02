void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 0:
			AurPostString("Flames Activated", 15, 15, 5.0);
			SetLocalBoolean(OBJECT_SELF, 45, 1);
			{
				object object1 = GetFirstInPersistentObject(OBJECT_SELF, 1, 0);
				while (GetIsObjectValid(object1)) {
					ApplyEffectToObject(0, EffectDamage((Random(11) + 10), 256, 0), object1, 0.0);
				object1 = GetNextInPersistentObject(OBJECT_SELF, 1, 0);
				}
			}
			break;
		case 1:
			AurPostString("Flames Deactivated", 15, 16, 5.0);
			SetLocalBoolean(OBJECT_SELF, 45, 0);
			break;
	}
}
