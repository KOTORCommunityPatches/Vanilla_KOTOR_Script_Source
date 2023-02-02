void main() {
	int int1 = GetSkillRank(5, GetPartyMemberByIndex(0));
	if ((int1 > 15)) {
		CreateItemOnObject("g_i_parts01", GetFirstPC(), 1, 0);
		CreateItemOnObject("compont_00001", GetFirstPC(), d20(1), 0);
	}
	if ((int1 > 10)) {
		CreateItemOnObject("g_i_parts01", GetFirstPC(), 1, 0);
		CreateItemOnObject("compont_00001", GetFirstPC(), d10(1), 0);
	}
	if ((int1 > 5)) {
		CreateItemOnObject("compont_00001", GetFirstPC(), d6(1), 0);
	}
	CreateItemOnObject("g_i_parts01", GetFirstPC(), 1, 0);
	CreateItemOnObject("compont_00001", GetFirstPC(), d3(1), 0);
	DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0);
}
