void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((sParam == "")) {
		sParam = "wp_pc";
	}
	DelayCommand(IntToFloat(nParam2), AssignCommand(GetPartyLeader(), ActionForceMoveToObject(GetObjectByTag(sParam, 0), nParam1, 1.0, 30.0)));
}