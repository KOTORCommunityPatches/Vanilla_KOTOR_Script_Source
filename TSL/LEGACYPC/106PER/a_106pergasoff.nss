void main() {
	SetGlobalNumber("106PER_Poison_Gas", 1);
	int int1 = 0;
	while ((int1 < 37)) {
		DelayCommand(0.5, DestroyObject(GetObjectByTag("GasLeak", int1), 0.0, 0, 0.0, 0));
		(int1++);
	}
	GivePlotXP("Peragus_Plot_Base_XP", 15);
}

