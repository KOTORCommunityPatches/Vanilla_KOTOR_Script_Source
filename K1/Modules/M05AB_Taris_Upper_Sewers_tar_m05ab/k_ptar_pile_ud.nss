void RumblePlay() {
	PlayRumblePattern(11);
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_SCREEN_SHAKE), GetFirstPC());
}

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	switch (nUser) {
		case 2000:
			DelayCommand(1.0, RumblePlay());
			break;
	}
}