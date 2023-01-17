void main() {
	object oT3m4 = GetObjectByTag("t3m4", 0);
	object oKreia = GetObjectByTag("kreia", 0);
	effect efBeam = EffectBeam(2037, oKreia, 3, 0);
	DelayCommand(1.0, AssignCommand(oT3m4, ApplyEffectToObject(1, efBeam, oT3m4, 2.9)));
	DelayCommand(1.0, AssignCommand(oT3m4, ActionPlayAnimation(26, 1.0, (-1.0))));
}

