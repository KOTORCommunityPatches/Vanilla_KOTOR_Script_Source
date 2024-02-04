int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("351NAR_Fuel_Shipment") > nParam1)) {
		return 1;
	}
	else {
		return 0;
	}
}