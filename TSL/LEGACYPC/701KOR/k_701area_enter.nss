void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		SetNPCSelectability(6, 0);
	}
}

