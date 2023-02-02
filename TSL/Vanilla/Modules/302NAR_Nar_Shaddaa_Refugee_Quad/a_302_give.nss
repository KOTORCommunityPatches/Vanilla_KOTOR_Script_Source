void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			CreateItemOnObject("BloodSample01", GetFirstPC(), 1, 0);
			break;
	}
}
