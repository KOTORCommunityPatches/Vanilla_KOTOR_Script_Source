void main() {
	AurPostString(ObjectToString(GetObjectByTag("DahniStore", 0)), 5, 5, 5.0);
	DelayCommand(0.1, OpenStore(GetObjectByTag("DahniStore", 0), GetPCSpeaker(), 0, 0));
}