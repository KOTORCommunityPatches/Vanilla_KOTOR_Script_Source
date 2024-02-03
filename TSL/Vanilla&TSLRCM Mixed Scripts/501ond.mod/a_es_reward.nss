void main() {
	SetGlobalNumber("403DXN_ES_Quest", 4);
	CreateItemOnObject("g_w_hvyblstr04", GetFirstPC(), 1, 0);
	string string1 = "403DXN_Price_Passage";
	SetGlobalNumber(string1, (GetGlobalNumber(string1) + 1));
}

