void main() {
	DestroyObject(GetObjectByTag("t3m4", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("mira", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("hanharr", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("kreia", 0), 0.0, 0, 0.0, 0);
	SetGlobalBoolean("351NAR_FIRST_TIME", 1);
	PlayMovie("NarMov05", 0);
	PlayMovie("NarMov06", 0);
	StartNewModule("351NAR", "From_303NAR", "", "", "", "", "", "");
}