void main() {
	
	int nGlobal = (GetGlobalNumber("KOR_THRESHOLD") - 1);
	
	SetGlobalNumber("KOR_THRESHOLD", nGlobal);
	
	ActionPlayAnimation(ANIMATION_LOOPING_PAUSE_DRUNK, 0.4, 3.0);
}
