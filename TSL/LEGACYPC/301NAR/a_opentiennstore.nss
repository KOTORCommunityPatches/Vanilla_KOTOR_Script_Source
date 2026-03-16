void main() {
	if ((!GetIsObjectValid(GetObjectByTag("TT32", 0)))) {
		DelayCommand(0.1, OpenStore(GetObjectByTag("TiennStore", 0), GetPCSpeaker(), 0, 0));
	}
	else {
		if ((GetGlobalNumber("301NAR_Tienn_Discount") == 0)) {
			DelayCommand(0.1, OpenStore(GetObjectByTag("TiennStore", 0), GetPCSpeaker(), 0, 0));
		}
		else {
			if ((GetGlobalNumber("301NAR_Tienn_Discount") >= 1)) {
				DelayCommand(0.1, OpenStore(GetObjectByTag("TiennStore", 0), GetPCSpeaker(), (-10), 10));
			}
		}
	}
}

