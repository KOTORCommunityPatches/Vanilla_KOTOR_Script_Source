void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	SoundObjectPlay(GetObjectByTag("SpaceSuitOff", 0));
	DelayCommand(8.0, SoundObjectPlay(GetObjectByTag("ClothesOn", 0)));
	SetGlobalFadeIn(10.0, 1.0, 0.0, 0.0, 0.0);
}