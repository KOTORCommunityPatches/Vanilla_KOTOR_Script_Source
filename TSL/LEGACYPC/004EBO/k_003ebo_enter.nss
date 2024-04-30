// Prototypes
void sub1();

void sub1() {
	string string1 = "003EBOq";
	int nGlobal = GetGlobalNumber("003EBO_BACKGROUND");
	switch (nGlobal) {
		case 0:
			nGlobal = 1;
			break;
		case 1:
			nGlobal = 2;
			break;
		case 2:
			nGlobal = 3;
			break;
		case 3:
			nGlobal = 4;
			break;
		case 4:
			nGlobal = 5;
			break;
		case 5:
			nGlobal = 6;
			break;
		case 6:
			nGlobal = 7;
			break;
		case 7:
			nGlobal = 8;
			break;
		case 8:
			nGlobal = 9;
			break;
		case 9:
			nGlobal = 10;
			break;
		case 10:
			nGlobal = 11;
			break;
		default:
			AurPostString("EBO ERROR: No background sepcified!", 5, 15, 10.0);
	}
	PlayRoomAnimation(string1, nGlobal);
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		sub1();
		if (GetLoadFromSaveGame()) {
			return;
		}
	}
}

