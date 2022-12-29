void main() {
	DestroyObject(GetItemPossessedBy(GetFirstPC(), "ptar_sitharmor"));
	CreateItemOnObject("ptar_sithpapers", GetFirstPC(), 1);
}
