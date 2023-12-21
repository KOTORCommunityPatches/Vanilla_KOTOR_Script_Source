void main() {
	
	SetAreaUnescapable(FALSE);
	
	SetGlobalBoolean("MAN_TRIAL2_START", 1);
	
	DestroyObject(GetObjectByTag("man26_cutdrd01", 0));
	DestroyObject(GetObjectByTag("man26_cutdrd02", 0));
	DestroyObject(GetObjectByTag("man26_cutdrd03", 0));
	DestroyObject(GetObjectByTag("man26_cutdrd04", 0));
	DestroyObject(GetObjectByTag("man26_cutsel01", 0));
	
	StartNewModule("manm26aa", "trial_pc");
}
