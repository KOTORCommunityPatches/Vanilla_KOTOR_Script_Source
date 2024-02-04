void main() {
	DelayCommand(2.9, DestroyObject(GetObjectByTag("Kreia", 0), 0.0, 0, 0.0, 0));
	DelayCommand(2.9, DestroyObject(GetObjectByTag("BaoDur", 0), 0.0, 0, 0.0, 0));
	DelayCommand(2.9, DestroyObject(GetObjectByTag("SteamContinual02", 0), 0.0, 0, 0.0, 0));
	DelayCommand(2.9, DestroyObject(GetObjectByTag("FlmBrstC", 0), 0.0, 0, 0.0, 0));
	DelayCommand(2.9, DestroyObject(GetObjectByTag("ESparkLg", 0), 0.0, 0, 0.0, 0));
	DelayCommand(2.9, DestroyObject(GetObjectByTag("ESparkLg", 1), 0.0, 0, 0.0, 0));
	DelayCommand(2.9, DestroyObject(GetObjectByTag("ESparkLg", 2), 0.0, 0, 0.0, 0));
	object oAlarm = GetObjectByTag("Alarm", 0);
	SoundObjectFadeAndStop(oAlarm, 3.0);
	DelayCommand(3.0, PlayMovie("TelMov12", 0));
	DelayCommand(3.0, StartNewModule("261TEL", "from_232TEL", "", "", "", "", "", ""));
}