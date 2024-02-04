int StartingConditional() {
	object oT3M4 = GetObjectByTag("T3M4", 0);
	return ((GetIsObjectValid(oT3M4) && (GetGlobalNumber("300NAR_T3M4") > 0)) && (GetGlobalNumber("300NAR_T3M4") < 5));
}