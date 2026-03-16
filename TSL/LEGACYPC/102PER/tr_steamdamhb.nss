void main() {
	if (GetLocalBoolean(OBJECT_SELF, 55)) {
		effect efDamage = EffectDamage((d3(1) + 1), 256, 0);
		ApplyEffectToObject(0, efDamage, GetFirstPC(), 0.0);
	}
}

