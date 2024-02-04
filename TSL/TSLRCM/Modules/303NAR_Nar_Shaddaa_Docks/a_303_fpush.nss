void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	object oHanharr = GetObjectByTag("Hanharr", 0);
	AssignCommand(oKreia, ActionDoCommand(SetFacingPoint(GetPosition(oHanharr))));
	AssignCommand(oHanharr, ClearAllEffects());
	DelayCommand(2.0, AssignCommand(oKreia, ActionPlayAnimation(121, 1.0, 2.0)));
	{
		effect efPush = EffectForcePushTargeted(GetLocation(oKreia), 0);
		DelayCommand(2.5, ApplyEffectToObject(0, efPush, oHanharr, 0.0));
	}
}