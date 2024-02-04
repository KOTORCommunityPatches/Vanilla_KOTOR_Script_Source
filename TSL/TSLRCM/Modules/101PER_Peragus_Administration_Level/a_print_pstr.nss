void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	float float1 = IntToFloat(GetScriptParameter(3));
	string sParam = GetScriptStringParameter();
	AurPostString(sParam, nParam1, nParam2, float1);
}