// Globals
	float floatGLOB_1 = 1.0;
	int intGLOB_1;
	int intGLOB_2;
	int intGLOB_3;
	int intGLOB_4;
	int intGLOB_5;
	int intGLOB_6;
	int intGLOB_7;

void main() {
	string string1 = IntToString(GetGlobalNumber("299TEL_HK50"));
	string string3 = IntToString(GetGlobalNumber("299TEL_HK51"));
	string string5 = IntToString(GetGlobalNumber("299TEL_HK51_Active"));
	string string7 = IntToString(GetGlobalNumber("299TEL_HK50_Core"));
	string string9 = IntToString(GetGlobalNumber("299TEL_HK51_Core"));
	string string11 = IntToString(GetLocalNumber(GetObjectByTag("hk50_1_ct", 0), 28));
	string string13 = IntToString(GetLocalNumber(GetObjectByTag("hk51_1_ct", 0), 28));
	SendMessageToPC(GetFirstPC(), ("HK50 status:" + string1));
	SendMessageToPC(GetFirstPC(), ("HK51 status:" + string3));
	SendMessageToPC(GetFirstPC(), ("HK51 Active:" + string5));
	SendMessageToPC(GetFirstPC(), ("Core50 status:" + string7));
	SendMessageToPC(GetFirstPC(), ("Core51 status:" + string9));
	SendMessageToPC(GetFirstPC(), ("50s Killed:" + string11));
	SendMessageToPC(GetFirstPC(), ("51s Killed:" + string13));
}