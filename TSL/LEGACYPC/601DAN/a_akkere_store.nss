void main() {
	if (GetLocalBoolean(OBJECT_SELF, 51)) {
		DelayCommand(0.1, OpenStore(GetObjectByTag("store_akkere", 0), GetPCSpeaker(), 0, 20));
	}
	else {
		DelayCommand(0.1, OpenStore(GetObjectByTag("store_akkere", 0), GetPCSpeaker(), 0, 0));
	}
}

