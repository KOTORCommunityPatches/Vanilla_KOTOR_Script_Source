void main() {
	object oArea = GetArea(OBJECT_SELF);
	MusicBackgroundStop(oArea);
	MusicBackgroundChangeDay(oArea, 60, 0);
	MusicBackgroundChangeNight(oArea, 60, 0);
	MusicBackgroundPlay(oArea);
}

