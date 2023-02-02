void main() {
	int nParam1 = GetScriptParameter(1);
	string sParam = GetScriptStringParameter();
	if ((nParam1 == 0)) {
		nParam1 = 1;
	}
	CreateItemOnObject(sParam, GetPartyLeader(), nParam1, 0);
}
