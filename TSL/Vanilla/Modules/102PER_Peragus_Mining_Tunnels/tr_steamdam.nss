void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	effect efDamage = EffectDamage((d3(1) + 1), 256, 0);
	ApplyEffectToObject(0, efDamage, GetEnteringObject(), 0.0);
	SetLocalBoolean(OBJECT_SELF, 55, 1);
}
