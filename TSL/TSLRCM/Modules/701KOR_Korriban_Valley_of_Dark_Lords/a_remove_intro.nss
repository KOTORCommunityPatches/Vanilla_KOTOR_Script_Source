void main() {
	DestroyObject(GetObjectByTag("Atton", 0), 0.0, 1, 0.0, 0);
	DestroyObject(GetObjectByTag("Kreia", 0), 0.0, 1, 0.0, 0);
	DestroyObject(GetObjectByTag("VisasMarr", 0), 0.0, 1, 0.0, 0);
	ShowPartySelectionGUI("", 0xFFFFFFFF, 0xFFFFFFFF, 0);
}