int StartingConditional() {
	int int1 = ((GetGlobalNumber("TAR_RANDOM_TALK") == 0) && (GetGlobalBoolean("Tar_SwoopRace") == 1));
	return int1;
}