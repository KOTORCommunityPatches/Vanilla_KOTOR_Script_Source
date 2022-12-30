int sub2() {
	return GetGlobalNumber("KOR_SITHTEST");
}

int sub1() {
	return GetGlobalNumber("KOR_YUTHURA1");
}

int StartingConditional() {
	int int1 = ((sub1() == 2) && (sub2() == 0));
	return int1;
}
