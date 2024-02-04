void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		AddMultiClass(5, GetObjectByTag("Atton", 0));
	}
	if ((nParam1 == 1)) {
		AddMultiClass(3, GetObjectByTag("BaoDur", 0));
		DestroyObject(GetObjectByTag("train_remote", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("nak_fakbao", 0), 0.0, 0, 0.0, 0);
	}
	if ((nParam1 == 4)) {
		AddMultiClass(3, GetObjectByTag("Handmaiden", 0));
	}
	if ((nParam1 == 7)) {
		AddMultiClass(5, GetObjectByTag("Mira", 0));
	}
	if ((nParam1 == 11)) {
		AddMultiClass(4, GetObjectByTag("Disciple", 0));
	}
}