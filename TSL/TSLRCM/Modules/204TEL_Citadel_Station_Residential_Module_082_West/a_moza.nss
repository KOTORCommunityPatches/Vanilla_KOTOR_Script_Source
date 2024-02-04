void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		AssignCommand(GetObjectByTag("203_Moza", 0), ActionMoveToObject(GetFirstPC(), 1, 1.0));
		if ((GetItemPossessedBy(GetPartyLeader(), "ith_key") == OBJECT_INVALID)) {
			CreateItemOnObject("ith_key", GetPCSpeaker(), 1, 0);
		}
	}
}