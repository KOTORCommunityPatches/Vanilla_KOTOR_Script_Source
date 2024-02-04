void main() {
	if ((GetGlobalNumber("301NAR_T3_Sold") == 1)) {
		DestroyObject(GetObjectByTag("T3M4", 0), 0.0, 0, 0.0, 0);
	}
}