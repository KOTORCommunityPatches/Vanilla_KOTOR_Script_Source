int StartingConditional() {
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	if (GetIsObjectValid(oVisasMarr)) {
		int nAlign = GetAlignmentGoodEvil(oVisasMarr);
		if ((nAlign == 2)) {
			return 1;
		}
		else {
			return 0;
		}
	}
	return 0;
}

