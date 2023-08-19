void main() {
	
	int nGlobal = (GetGlobalNumber("KOR_THRESHOLD") + 2);
	
	SetGlobalNumber("KOR_THRESHOLD", nGlobal);
	
	ActionPlayAnimation(ANIMATION_LOOPING_PAUSE_DRUNK, 0.7, 10.0);
}
