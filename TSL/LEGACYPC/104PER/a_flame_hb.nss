void main() {
	object object1 = GetFirstInPersistentObject(OBJECT_SELF, 1, 0);
	while (GetIsObjectValid(object1)) {
		ApplyEffectToObject(0, EffectDamage((Random(11) + 10), 256, 0), object1, 0.0);
		object1 = GetNextInPersistentObject(OBJECT_SELF, 1, 0);
	}
}

