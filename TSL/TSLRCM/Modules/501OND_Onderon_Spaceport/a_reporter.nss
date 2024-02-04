void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			CreateObject(1, "reporter", GetLocation(GetObjectByTag("wp_reporter", 0)), 1);
			break;
		case 1:
			DestroyObject(GetObjectByTag("reporter", 0), 0.0, 1, 0.0, 0);
			break;
	}
}