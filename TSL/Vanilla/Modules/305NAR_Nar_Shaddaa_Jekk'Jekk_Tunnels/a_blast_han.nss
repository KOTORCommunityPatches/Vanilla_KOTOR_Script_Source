void main() {
	object oHanharr = GetObjectByTag("Hanharr", 0);
	AssignCommand(oHanharr, ClearAllActions());
	effect efPush = EffectForcePushTargeted(GetLocation(GetObjectByTag("Zez", 0)), 0);
	efPush = EffectLinkEffects(efPush, EffectVisualEffect(1014, 0));
	DelayCommand(0.2, ApplyEffectToObject(1, efPush, oHanharr, 0.3));
}
