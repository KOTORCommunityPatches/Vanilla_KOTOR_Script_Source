int StartingConditional() {
	
	int nHasPoison = GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "GizkaPoison"));
	
	return nHasPoison;
}
