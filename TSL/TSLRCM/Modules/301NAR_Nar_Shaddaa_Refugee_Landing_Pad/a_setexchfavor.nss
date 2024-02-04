void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((nParam1 == 1)) {
		IncrementGlobalNumber("300NAR_Exchange_Favor", 1);
		IncrementGlobalNumber("300NAR_Exchange_Gap", 1);
	}
	if ((nParam1 == (-1))) {
		IncrementGlobalNumber("300NAR_Exchange_Favor", (-1));
		IncrementGlobalNumber("300NAR_Exchange_Gap", 1);
	}
	if ((nParam1 == 0)) {
		SetGlobalNumber("300NAR_Exchange_Favor", nParam2);
		IncrementGlobalNumber("300NAR_Exchange_Gap", nParam2);
	}
}