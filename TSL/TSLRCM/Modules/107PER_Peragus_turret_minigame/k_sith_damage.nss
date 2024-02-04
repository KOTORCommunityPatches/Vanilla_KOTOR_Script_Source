void main() {
	int int1 = GetUserDefinedEventNumber();
	ApplyEffectToObject(0, EffectDamage(int1, 2, 0), OBJECT_SELF, 0.0);
}