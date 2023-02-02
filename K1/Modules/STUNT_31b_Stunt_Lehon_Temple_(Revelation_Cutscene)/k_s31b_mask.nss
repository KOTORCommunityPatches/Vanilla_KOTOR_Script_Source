void main() {
	
	effect efMask02 = EffectVisualEffect(7002); // VFX_DUR_MASK_02
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efMask02, GetObjectByTag("DarthRevan", 0), 9.0);
	
	effect efMask01 = EffectVisualEffect(7001); // VFX_DUR_MASK_01
	
	DelayCommand(9.0, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efMask01, GetObjectByTag("DarthRevan", 0), 15.0));
}
