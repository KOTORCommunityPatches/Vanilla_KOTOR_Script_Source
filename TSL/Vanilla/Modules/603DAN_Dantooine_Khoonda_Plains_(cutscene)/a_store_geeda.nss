void main() {
	int nGlobal = GetGlobalNumber("301NAR_Geeda_Planets");
	DelayCommand(0.1, OpenStore(GetObjectByTag("GeedaStore", 0), GetPCSpeaker(), ((-5) * (nGlobal - 1)), (5 * (nGlobal - 1))));
}
