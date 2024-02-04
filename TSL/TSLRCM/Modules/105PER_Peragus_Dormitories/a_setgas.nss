void main() {
	SetGlobalNumber("105PER_Poison_Gas", 1);
	int int1 = 0;
	while ((int1 < 8)) {
		SoundObjectStop(GetObjectByTag("SteamB", int1));
		(int1++);
	}
	int1 = 0;
	while ((int1 < 37)) {
		DelayCommand(0.5, DestroyObject(GetObjectByTag("GasLeak", int1), 0.0, 0, 0.0, 0));
		(int1++);
	}
}