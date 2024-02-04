void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			PlayMovie("permov01", 0);
			break;
		case 2:
			PlayMovie("permov02", 0);
			break;
		case 3:
			break;
		case 4:
			PlayMovie("permov04", 0);
			break;
		case 5:
			PlayMovie("permov05", 0);
			break;
		case 6:
			PlayMovie("permov06", 0);
			break;
		case 7:
			PlayMovie("permov07", 0);
			break;
	}
}