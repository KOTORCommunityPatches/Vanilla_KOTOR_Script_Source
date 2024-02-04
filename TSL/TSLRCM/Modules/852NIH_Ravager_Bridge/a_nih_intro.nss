void main() {
	object oArea = GetArea(OBJECT_SELF);
	MusicBackgroundStop(oArea);
	MusicBackgroundChangeDay(oArea, 4, 0);
	MusicBackgroundChangeNight(oArea, 4, 0);
	MusicBackgroundPlay(oArea);
	DelayCommand(66.0, MusicBackgroundStop(oArea));
	DelayCommand(66.0, MusicBackgroundChangeDay(oArea, 8, 0));
	DelayCommand(66.0, MusicBackgroundChangeNight(oArea, 8, 0));
	DelayCommand(66.0, MusicBackgroundPlay(oArea));
}