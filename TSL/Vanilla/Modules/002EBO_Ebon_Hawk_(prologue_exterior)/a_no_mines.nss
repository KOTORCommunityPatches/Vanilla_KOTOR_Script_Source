// Byte code does not match

void main() {
	if ((!GetIsObjectValid(GetItemPossessedBy(GetPartyLeader(), "G_I_TRAPKIT004")))) {
		SetGlobalNumber("002EBO_Has_Mine", 0);
		BarkString(OBJECT_INVALID, 125726);
	}
}
