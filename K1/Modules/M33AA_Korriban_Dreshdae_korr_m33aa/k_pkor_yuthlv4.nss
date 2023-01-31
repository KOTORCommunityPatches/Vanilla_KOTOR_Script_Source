int CheckGlobal() {
	return GetGlobalNumber("KOR_YUTHURA1");
}

int StartingConditional() {
	
	int nGlobal = (CheckGlobal() == 2);
	return nGlobal;
}