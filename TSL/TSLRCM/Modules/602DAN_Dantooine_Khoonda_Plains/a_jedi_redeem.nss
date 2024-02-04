void main() {
	int nParam1 = GetScriptParameter(1);
	string string1;
	if ((nParam1 == 0)) {
		string1 = "602DAN_Redeem_Good";
	}
	if ((nParam1 == 1)) {
		string1 = "602DAN_Redeem_Bad";
	}
	SetGlobalNumber(string1, (GetGlobalNumber(string1) + 1));
	AurPostString((string1 + " has been incremented"), 5, 5, 2.0);
}