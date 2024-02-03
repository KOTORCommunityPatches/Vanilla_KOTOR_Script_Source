void main() {
	object oArea = GetArea(OBJECT_SELF);
	int int1 = 14;
	int int2 = 14;
	MusicBattleStop(oArea);
	MusicBattleChange(oArea, int2);
	MusicBackgroundStop(oArea);
	MusicBackgroundChangeDay(oArea, int1, 0);
	MusicBackgroundChangeNight(oArea, int1, 0);
	MusicBackgroundPlay(oArea);
}

