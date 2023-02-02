void main() {
	effect effect1 = EffectLinkEffects(EffectCutSceneParalyze(), EffectVisualEffect(2008, 0));
	AssignCommand(GetObjectByTag("Vrook", 0), ActionCastFakeSpellAtObject(29, GetFirstPC(), 0));
	ActionDoCommand(ApplyEffectToObject(2, effect1, GetFirstPC(), 0.0));
	DelayCommand(2.5, ActionCastFakeSpellAtObject(29, GetFirstPC(), 0));
}
