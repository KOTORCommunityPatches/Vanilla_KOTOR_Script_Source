void main() {
	if (GetIsObjectValid(GetItemPossessedBy(GetPartyLeader(), "G_I_TRAPKIT004"))) {
		SetGlobalNumber("002EBO_Has_Mine", 1);
	}
}