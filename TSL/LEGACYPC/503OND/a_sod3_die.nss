void main() {
	object oSOD3 = GetObjectByTag("SOD3", 0);
	DelayCommand(1.5, AssignCommand(oSOD3, ClearAllActions()));
	DelayCommand(1.5, AssignCommand(oSOD3, ActionDoCommand(ApplyEffectToObject(2, EffectDeath(0, 1, 0), oSOD3, 0.0))));
}

