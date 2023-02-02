void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SoundObjectPlay(GetObjectByTag("Computer01", 0));
			break;
		case 2:
			SoundObjectPlay(GetObjectByTag("Computer02", 0));
			break;
		case 3:
			SoundObjectPlay(GetObjectByTag("Computer03", 0));
			break;
		case 4:
			SoundObjectPlay(GetObjectByTag("Computer04", 0));
			break;
		case 5:
			SoundObjectPlay(GetObjectByTag("Computer05", 0));
			break;
		case 6:
			SoundObjectPlay(GetObjectByTag("Computer06", 0));
			break;
	}
}
