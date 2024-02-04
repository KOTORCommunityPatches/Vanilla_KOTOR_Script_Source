void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			PlayPazaak(2, "a_nikko_talk", 250, 0, OBJECT_INVALID);
			break;
		case 1:
			CreateItemOnObject("g_i_pazcard_005", GetFirstPC(), 1, 0);
			CreateItemOnObject("g_i_pazcard_013", GetFirstPC(), 1, 0);
			CreateItemOnObject("g_i_pazcard_015", GetFirstPC(), 1, 0);
			break;
	}
}