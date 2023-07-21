void main() {
	int nGlobal = GetGlobalNumber("K_STAR_MAP");
	nGlobal = (nGlobal + 10);
	SetGlobalNumber("K_STAR_MAP", nGlobal);
	ActionPlayAnimation(200, 1.0, 0.0);
	if ((nGlobal == 50)) {
	}
}

