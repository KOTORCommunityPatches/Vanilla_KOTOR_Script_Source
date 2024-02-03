void main() {
	int nGlobal = GetGlobalNumber("907MAL_CUTSCENE");
	switch (nGlobal) {
		case 0:
			DestroyObject(GetObjectByTag("DarthNihilus", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("KreiaEvil", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("Lightsaber", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("DarthSion", 0), 0.0, 0, 0.0, 0);
			break;
		case 1:
			DestroyObject(GetObjectByTag("DarthSion", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("SithAssassin", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("SithAssassin2", 0), 0.0, 0, 0.0, 0);
			break;
		case 2:
			DestroyObject(GetObjectByTag("KreiaEvil", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("DarthSion", 0), 0.0, 0, 0.0, 0);
			break;
		case 3:
			DestroyObject(GetObjectByTag("KreiaEvil", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("DarthSion", 0), 0.0, 0, 0.0, 0);
			break;
		case 4:
			DestroyObject(GetObjectByTag("KreiaEvil", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("DarthSion", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("Atton", 0), 0.0, 0, 0.0, 0);
			break;
	}
}

