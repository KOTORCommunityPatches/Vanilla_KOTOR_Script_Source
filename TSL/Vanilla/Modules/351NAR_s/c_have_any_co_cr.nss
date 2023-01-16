int StartingConditional() {
	if (GetIsObjectValid(GetItemPossessedBy(GetPartyLeader(), "u_l_colo_01"))) {
		return 1;
	}
	if (GetIsObjectValid(GetItemPossessedBy(GetPartyLeader(), "u_l_colo_02"))) {
		return 1;
	}
	if (GetIsObjectValid(GetItemPossessedBy(GetPartyLeader(), "u_l_colo_03"))) {
		return 1;
	}
	if (GetIsObjectValid(GetItemPossessedBy(GetPartyLeader(), "u_l_colo_04"))) {
		return 1;
	}
	if (GetIsObjectValid(GetItemPossessedBy(GetPartyLeader(), "u_l_colo_05"))) {
		return 1;
	}
	if (GetIsObjectValid(GetItemPossessedBy(GetPartyLeader(), "u_l_colo_06"))) {
		return 1;
	}
	if (GetIsObjectValid(GetItemPossessedBy(GetPartyLeader(), "u_l_colo_07"))) {
		return 1;
	}
	if (GetIsObjectValid(GetItemPossessedBy(GetPartyLeader(), "u_l_colo_08"))) {
		return 1;
	}
	if (GetIsObjectValid(GetItemPossessedBy(GetPartyLeader(), "u_l_colo_09"))) {
		return 1;
	}
	return 0;
}

