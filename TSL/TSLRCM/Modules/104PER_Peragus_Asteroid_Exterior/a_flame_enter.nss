void main() {
	object oEntering = GetEnteringObject();
	int nGlobal = GetGlobalNumber("104PER_Flame_Exhaust");
	if ((nGlobal != 0)) {
		ApplyEffectToObject(0, EffectDamage((Random(11) + 10), 256, 0), oEntering, 0.0);
	}
}