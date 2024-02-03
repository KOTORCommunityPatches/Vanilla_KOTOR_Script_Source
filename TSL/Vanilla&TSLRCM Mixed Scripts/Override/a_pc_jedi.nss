void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		AddMultiClass(11, GetFirstPC());
	}
	if ((nParam1 == 1)) {
		AddMultiClass(13, GetFirstPC());
	}
	if ((nParam1 == 2)) {
		AddMultiClass(12, GetFirstPC());
	}
	if ((nParam1 == 3)) {
		AddMultiClass(14, GetFirstPC());
	}
	if ((nParam1 == 4)) {
		AddMultiClass(16, GetFirstPC());
	}
	if ((nParam1 == 5)) {
		AddMultiClass(15, GetFirstPC());
	}
}

