void main() {
	DestroyObject(GetItemPossessedBy(GetFirstPC(), "pl_bh_visa"), 0.0, 0, 0.0, 0);
	CreateItemOnObject("pl_visa_sliced", GetFirstPC(), 1, 0);
	TakeGoldFromCreature(500, GetFirstPC(), 0);
}