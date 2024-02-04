void main() {
	AurPostString(("Exchange Gap: " + IntToString(GetGlobalNumber("300NAR_Exchange_Gap"))), 5, 5, 5.0);
	AurPostString(("Exchange Favor: " + IntToString(GetGlobalNumber("300NAR_Exchange_Favor"))), 6, 6, 5.0);
	if (GetGlobalBoolean("300NAR_Visquis_Call")) {
		AurPostString("Visquis Called: TRUE", 7, 7, 5.0);
	}
	else {
		AurPostString("Visquis Called: FALSE", 7, 7, 5.0);
	}
}