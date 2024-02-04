void main() {
	if ((GetGlobalNumber("301NAR_Trade_War") == 0)) {
		DelayCommand(0.1, OpenStore(GetObjectByTag("OondarStore", 0), GetPCSpeaker(), 0, 0));
	}
	else {
		if ((GetGlobalNumber("301NAR_Trade_War") >= 2)) {
			DelayCommand(0.1, OpenStore(GetObjectByTag("OondarStore", 0), GetPCSpeaker(), (-10), (-10)));
		}
	}
}