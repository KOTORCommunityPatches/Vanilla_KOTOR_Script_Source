// Prototypes
void sub1();

void sub1() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		nParam1 = 1;
	}
	CreateItemOnObject(sParam, GetPartyLeader(), nParam1, 0);
	AurPostString(("Giving " + sParam), 5, 8, 5.0);
}

void main() {
	int nParam2 = GetScriptParameter(2);
	DelayCommand(IntToFloat(nParam2), sub1());
}

