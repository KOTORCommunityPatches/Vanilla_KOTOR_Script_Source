void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	if ((sParam == "")) {
		sParam = GetTag(OBJECT_SELF);
	}
	if ((!nParam2)) {
		AssignCommand(GetObjectByTag(sParam, nParam3), SetFacing(IntToFloat(nParam1)));
	}
	else {
		AssignCommand(GetObjectByTag(sParam, nParam3), SetFacingPoint(GetPosition(GetFirstPC())));
	}
}
