void main() {
	
	SetGlobalNumber("Tar_Duel", GetGlobalNumber("Tar_Duel") + 1);
	SetGlobalBoolean("Tar_DuelOver", TRUE);
	SetGlobalBoolean("Tar_DuelLost", FALSE);
}
