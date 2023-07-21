void main() {
	int nGlobal = GetGlobalNumber("G_CAND_STATE");
	SetGlobalNumber("G_CAND_STATE", (nGlobal - 1));
}

