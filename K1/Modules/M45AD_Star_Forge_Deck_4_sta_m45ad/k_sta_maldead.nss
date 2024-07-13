int StartingConditional() {
	
	int nState;
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	
	nState = !GetIsObjectValid(oMalak);
	
	return nState;
}
