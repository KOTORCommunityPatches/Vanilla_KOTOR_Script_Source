int StartingConditional() {
	int int1 = ((GetGlobalBoolean("Tar_Destroyed") == 1) && (GetGlobalBoolean("Mission_Taris") == 0));
	return int1;
}