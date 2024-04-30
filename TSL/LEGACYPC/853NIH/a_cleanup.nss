void main() {
	int nGlobal = GetGlobalNumber("853NIH_CUTSCENE");
	switch (nGlobal) {
		case 0:
			DestroyObject(GetObjectByTag("Nihilus", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("VisasMarr", 0), 0.0, 0, 0.0, 0);
			AurPostString("CleaningUp Visas's CS", 5, 6, 5.0);
			break;
		case 1:
			DestroyObject(GetObjectByTag("Nihilus", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("Tobin", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("Sith", 3), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("Sith", 2), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("Sith", 1), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("Sith", 0), 0.0, 0, 0.0, 0);
			AurPostString("CleaningUp Tobin's CS", 5, 6, 5.0);
			break;
		case 2:
			DestroyObject(GetObjectByTag("Nihilus", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("DarthSion", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("Sith", 1), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("Sith", 0), 0.0, 0, 0.0, 0);
			AurPostString("CleaningUp Sion's CS", 5, 6, 5.0);
			break;
	}
}

