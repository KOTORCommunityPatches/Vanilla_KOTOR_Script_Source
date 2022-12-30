int GetPillarR() {
	return GetGlobalNumber("KOR_PILLARR");
}

int GetPillarM() {
	return GetGlobalNumber("KOR_PILLARM");
}

int GetPillarL() {
	return GetGlobalNumber("KOR_PILLARL");
}

void Get_Token(int nToken) {
	
	int nGlobal;
	string sTokenValue;
	
	if (nToken == 10)
		{
			nGlobal = GetPillarL();
		}
		else if (nToken == 11)
				{
					nGlobal = GetPillarM();
				}
				else if (nToken == 12)
					{
						nGlobal = GetPillarR();
					}
					
	switch (nGlobal) {
		case 0:
			sTokenValue = "No systems active";
			break;
		case 1:
			sTokenValue = "Top System";
			break;
		case 3:
			sTokenValue = "Mid-Upper System";
			break;
		case 4:
			sTokenValue = "Mid-Upper System, Top System";
			break;
		case 7:
			sTokenValue = "Mid-Lower System";
			break;
		case 8:
			sTokenValue = "Mid-Lower System, Top System";
			break;
		case 10:
			sTokenValue = "Mid-Lower System, Mid-Upper System";
			break;
		case 11:
			sTokenValue = "Mid-Lower System, Mid-Upper System, Top System";
			break;
		case 13:
			sTokenValue = "Base System";
			break;
		case 14:
			sTokenValue = "Base System, Top System";
			break;
		case 16:
			sTokenValue = "Base System, Mid-Upper System";
			break;
		case 17:
			sTokenValue = "Base System, Mid-Upper System, Top System";
			break;
		case 20:
			sTokenValue = "Base System, Mid-Lower System";
			break;
		case 21:
			sTokenValue = "Base System, Mid-Lower System, Top System";
			break;
		case 23:
			sTokenValue = "Base System, Mid-Lower System, Mid-Upper System";
			break;
		case 24:
			sTokenValue = "Base System, Mid-Lower System, Mid-Upper System, Top System";
			break;
	}
	
	SetCustomToken(nToken, sTokenValue);
}

void SetPiillarStart(int nGlobal) {
	SetGlobalBoolean("KOR_PILLAR_START", nGlobal);
}

void SetPillarR(int nGlobal) {
	SetGlobalNumber("KOR_PILLARR", nGlobal);
}

void SetPillarM(int nGlobal) {
	SetGlobalNumber("KOR_PILLARM", nGlobal);
}

void SetPillarL(int nGlobal) {
	SetGlobalNumber("KOR_PILLARL", nGlobal);
}

int GetPiillarStart() {
	return GetGlobalBoolean("KOR_PILLAR_START");
}

void main() {
	
	int int1;
	
	if (GetPiillarStart() == FALSE)
		{
			SetPillarL(24);
			SetPillarM(0);
			SetPillarR(0);
			SetPiillarStart(TRUE);
		}
	
	Get_Token(10);
	Get_Token(11);
	Get_Token(12);
}
