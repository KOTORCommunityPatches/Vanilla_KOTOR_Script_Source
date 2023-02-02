void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	switch (nParam1) {
		case 0:
			CreateItemOnObject("g_i_parts01", GetFirstPC(), 30, 0);
			break;
	}
}
