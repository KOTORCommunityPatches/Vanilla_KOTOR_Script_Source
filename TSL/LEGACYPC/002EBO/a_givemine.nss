void main() {
	if (((!GetIsObjectValid(GetItemPossessedBy(GetPartyLeader(), "G_I_TRAPKIT004"))) && (!GetIsObjectValid(GetItemPossessedBy(GetObjectByTag("ProtonMis", 0), "G_I_TRAPKIT004"))))) {
		CreateItemOnObject("G_I_TRAPKIT004", OBJECT_SELF, 1, 0);
	}
}

