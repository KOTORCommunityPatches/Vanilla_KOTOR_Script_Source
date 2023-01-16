void main() {
	int nParam1 = GetScriptParameter(1);
	if (nParam1) {
		AmbientSoundStop(GetArea(GetFirstPC()));
		SoundObjectStop(GetObjectByTag("CaveWind", 0));
		SoundObjectStop(GetObjectByTag("JungleAnimalSingles", 0));
		SoundObjectStop(GetObjectByTag("JungleBadSingles", 0));
		SoundObjectStop(GetObjectByTag("JungleBirdsSingles", 0));
		SoundObjectStop(GetObjectByTag("JungleHowlSingles", 0));
	}
	else {
		AmbientSoundPlay(GetArea(GetFirstPC()));
		SoundObjectPlay(GetObjectByTag("CaveWind", 0));
		SoundObjectPlay(GetObjectByTag("JungleAnimalSingles", 0));
		SoundObjectPlay(GetObjectByTag("JungleBadSingles", 0));
		SoundObjectPlay(GetObjectByTag("JungleBirdsSingles", 0));
		SoundObjectPlay(GetObjectByTag("JungleHowlSingles", 0));
	}
}

