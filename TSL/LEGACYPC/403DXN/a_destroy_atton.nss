void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	}
	else {
		if ((nParam1 == 2)) {
			object oAtton = GetObjectByTag("atton", 0);
			DestroyObject(oAtton, 0.0, 1, 0.0, 0);
		}
		else {
			if ((nParam1 == 3)) {
				SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			}
		}
	}
}

