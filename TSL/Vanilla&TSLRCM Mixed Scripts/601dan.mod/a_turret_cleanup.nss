void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			DestroyObject(GetObjectByTag("target_merc", 0), 0.0, 0, 0.0, 0);
		case 2:
			DestroyObject(GetObjectByTag("target_merc", 0), 0.0, 0, 0.0, 0);
		case 3:
			DestroyObject(GetObjectByTag("target_merc", 0), 0.0, 0, 0.0, 0);
		case 4:
			DestroyObject(GetObjectByTag("target_merc", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("target_merc", 1), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("target_merc", 2), 0.0, 0, 0.0, 0);
	}
}

