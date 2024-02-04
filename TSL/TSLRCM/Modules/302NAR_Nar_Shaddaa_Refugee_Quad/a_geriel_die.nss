void main() {
	object oGeriel = GetObjectByTag("geriel", 0);
	if (GetIsObjectValid(oGeriel)) {
		if ((GetScriptParameter(1) == 1)) {
			effect efDeath = EffectDeath(1, 1, 1);
			ApplyEffectToObject(2, efDeath, oGeriel, 0.0);
		}
	}
}