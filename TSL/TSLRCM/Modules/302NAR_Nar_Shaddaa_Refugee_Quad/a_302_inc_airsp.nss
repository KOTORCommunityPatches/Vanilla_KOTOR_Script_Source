void main() {
	int nGlobal = GetGlobalNumber("302NAR_Airspeeder_00");
	SetGlobalNumber("302NAR_Airspeeder_00", (nGlobal + 1));
	GivePlotXP("Nar_Shaddaa_Plot_Base_XP", 10);
}