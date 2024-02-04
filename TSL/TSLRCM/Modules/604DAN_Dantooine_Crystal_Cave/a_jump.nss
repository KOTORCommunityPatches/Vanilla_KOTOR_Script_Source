void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	object oPC = GetFirstPC();
	if ((sParam == "")) {
		sParam = "wp_pc";
	}
	if (GetIsObjectValid(oPC)) {
		object object3 = GetObjectByTag(sParam, 0);
		if (GetIsObjectValid(object3)) {
			DelayCommand(IntToFloat(nParam1), AssignCommand(oPC, ClearAllActions()));
			DelayCommand(IntToFloat(nParam1), AssignCommand(oPC, ActionJumpToLocation(GetLocation(object3))));
		}
	}
}