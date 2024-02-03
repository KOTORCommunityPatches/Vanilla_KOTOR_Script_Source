void main() {
	object oEntering = GetEnteringObject();
	if (GetLocalBoolean(OBJECT_SELF, 45)) {
		ApplyEffectToObject(0, EffectDamage((Random(11) + 10), 256, 0), oEntering, 0.0);
	}
}

