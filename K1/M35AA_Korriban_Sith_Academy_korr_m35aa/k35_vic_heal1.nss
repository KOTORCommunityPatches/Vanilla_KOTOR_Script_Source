void main() {
	int int1 = (GetGlobalNumber("KOR_THRESHOLD") - 1);
	SetGlobalNumber("KOR_THRESHOLD", int1);
	ActionPlayAnimation(13, 0.4, 3.0);
}
