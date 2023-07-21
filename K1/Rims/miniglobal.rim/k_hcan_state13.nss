void main() {
	int nGlobal = GetGlobalNumber("T_LEVC");
	SetGlobalNumber("G_CAND_STATE", 3);
	SetGlobalNumber("T_LEVC", (nGlobal + 1));
}

