void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	if ((sParam == "")) {
		sParam = GetTag(GetFirstPC());
	}
	AssignCommand(OBJECT_SELF, SetFacingPoint(GetPosition(GetObjectByTag(sParam, nParam1))));
}
