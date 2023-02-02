void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		SetNPCSelectability(9, 1);
	}
}
