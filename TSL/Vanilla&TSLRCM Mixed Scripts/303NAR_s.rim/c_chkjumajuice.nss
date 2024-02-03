int StartingConditional() {
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "JumaJuiceCanister"))) {
		return 1;
	}
	else {
		return 0;
	}
}

