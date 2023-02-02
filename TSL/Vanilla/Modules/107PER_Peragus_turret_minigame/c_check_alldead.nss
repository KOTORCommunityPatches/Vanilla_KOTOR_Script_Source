// Globals
	int intGLOB_1 = 25;

int StartingConditional() {
	int int1;
	int nGlobal = GetGlobalNumber("107PER_MG_DEAD");
	if ((nGlobal == intGLOB_1)) {
		return 1;
	}
	return 0;
}
