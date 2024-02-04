void main() {
	if ((GetFirstPC() != GetEnteringObject())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 35)) {
		return;
	}
	if ((GetGlobalNumber("003EBO_Disciple_Atton") < 4)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 35, 1);
	StartNewModule("225TEL", "", "", "", "", "", "", "");
}