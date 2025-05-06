struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oSquik = GetObjectByTag("squik", 0);
	object oThugboss = GetObjectByTag("thugboss", 0);
	object oTranthug = GetObjectByTag("tranthug", 0);
	object object7 = GetObjectByTag("tranthug", 1);
	object oGranthug = GetObjectByTag("granthug", 0);
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			vector struct2 = GetPositionFromLocation(GetLocation(GetFirstPC()));
			;
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
	}
}

