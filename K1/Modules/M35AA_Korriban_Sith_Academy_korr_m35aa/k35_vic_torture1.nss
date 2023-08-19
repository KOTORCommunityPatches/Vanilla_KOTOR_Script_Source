void main() {
	
	int nGlobal = (GetGlobalNumber("KOR_THRESHOLD") + 1);
	
	SetGlobalNumber("KOR_THRESHOLD", nGlobal);
	
	ActionPlayAnimation(ANIMATION_LOOPING_HORROR, 0.7, 4.0);
	
	ActionPlayAnimation(ANIMATION_LOOPING_PAUSE_DRUNK, 0.7, 6.0);
}
