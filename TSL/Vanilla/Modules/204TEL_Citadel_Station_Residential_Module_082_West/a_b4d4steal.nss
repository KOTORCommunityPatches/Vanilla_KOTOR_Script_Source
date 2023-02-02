void main() {
	object object1;
	object object2;
	SetGlobalNumber("203TEL_Habat", 11);
	DestroyObject(GetObjectByTag("203_b4d4", 0), 0.0, 0, 0.0, 0);
	StartNewModule("204TEL", "from_203TEL_b4d4", "", "", "", "", "", "");
}
