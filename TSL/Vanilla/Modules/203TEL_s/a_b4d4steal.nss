void main() {
	object object1;
	object object2;
	SetGlobalNumber("203TEL_Habat", 11);
	DestroyObject(GetObjectByTag("203_b4d4", 0), 0.0, 0, 0.0, 0);
	SetGlobalBoolean("204TEL_Spawn_B4D4", 1);
	StartNewModule("204TEL", "FROM_201TEL_ITHM1", "", "", "", "", "", "");
}

