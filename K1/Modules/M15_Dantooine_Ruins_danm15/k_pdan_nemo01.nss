void main() {
	
	SetIsDestroyable(FALSE, FALSE, TRUE);
	DelayCommand(1.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), OBJECT_SELF));
}
