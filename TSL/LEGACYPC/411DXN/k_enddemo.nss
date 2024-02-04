void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			PlayMovie("E3DemoMov03", 0);
			EndGame(0);
			break;
	}
}

