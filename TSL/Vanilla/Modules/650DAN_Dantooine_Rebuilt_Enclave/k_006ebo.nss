void main() {
	if ((GetEnteringObject() == GetFirstPC())) {
		if ((GetGlobalNumber("650DAN_006EBO_Trans") == 1)) {
			SetGlobalNumber("003EBO_Background", 5);
			StartNewModule("006EBO", "", "", "", "", "", "", "");
		}
	}
}
