int StartingConditional() {
	if (GetIsObjectValid(GetObjectByTag("CzerkaDatapad", 0))) {
		return 1;
	}
	else {
		return 0;
	}
}

