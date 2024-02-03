void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			nParam1 = 1;
			break;
		case 2:
			nParam1 = 2;
			break;
		case 3:
			nParam1 = 3;
			break;
	}
	PlayRoomAnimation(sParam, nParam1);
}

