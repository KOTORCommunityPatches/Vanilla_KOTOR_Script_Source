void main() {
	if (GetLocalBoolean(OBJECT_SELF, 51)) {
		DelayCommand(0.1, OpenStore(GetObjectByTag("store_128", 0), GetPCSpeaker(), (-10), 10));
	}
	else {
		DelayCommand(0.1, OpenStore(GetObjectByTag("store_128", 0), GetPCSpeaker(), 0, 0));
	}
}
