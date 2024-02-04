void main() {
	int nGlobal = GetGlobalNumber("301NAR_Geeda_Planets");
	if ((GetGlobalNumber("301NAR_Trade_War") == 0)) {
		DelayCommand(0.1, OpenStore(GetObjectByTag("GeedaStore", 0), GetPCSpeaker(), ((-5) * (nGlobal - 1)), (5 * (nGlobal - 1))));
	}
	else {
		if ((GetGlobalNumber("301NAR_Trade_War") >= 2)) {
			DelayCommand(0.1, OpenStore(GetObjectByTag("GeedaStore", 0), GetPCSpeaker(), (-10), 10));
		}
		else {
			DelayCommand(0.1, OpenStore(GetObjectByTag("GeedaStore", 0), GetPCSpeaker(), 0, 0));
		}
	}
}