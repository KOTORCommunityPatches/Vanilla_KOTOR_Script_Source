void main() {
	string string1 = "003EBOq";
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			AurPostString((string1 + " :lights are off"), 5, 8, 10.0);
			nParam1 = 1;
			break;
		case 2:
			AurPostString((string1 + " :lights are turning on"), 5, 9, 10.0);
			nParam1 = 2;
			break;
		case 3:
			AurPostString((string1 + " :lights are on"), 5, 10, 10.0);
			nParam1 = 3;
			break;
		case 4:
			AurPostString((string1 + " :lights are on"), 5, 10, 10.0);
			nParam1 = 4;
			break;
		case 5:
			AurPostString((string1 + " :lights are on"), 5, 10, 10.0);
			nParam1 = 5;
			break;
		case 6:
			AurPostString((string1 + " :lights are on"), 5, 10, 10.0);
			nParam1 = 6;
			break;
		case 7:
			AurPostString((string1 + " :lights are on"), 5, 10, 10.0);
			nParam1 = 7;
			break;
		case 8:
			AurPostString((string1 + " :lights are on"), 5, 10, 10.0);
			nParam1 = 8;
			break;
		case 9:
			AurPostString((string1 + " :lights are on"), 5, 10, 10.0);
			nParam1 = 9;
			break;
		case 10:
			AurPostString((string1 + " :lights are on"), 5, 10, 10.0);
			nParam1 = 10;
			break;
		case 11:
			AurPostString((string1 + " :lights are on"), 5, 10, 10.0);
			nParam1 = 11;
			break;
	}
	PlayRoomAnimation(string1, nParam1);
}

