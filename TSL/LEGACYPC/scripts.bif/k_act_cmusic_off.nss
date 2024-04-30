void main() {
	object oArea = GetArea(OBJECT_SELF);
	MusicBattleStop(oArea);
	DelayCommand(0.1, MusicBackgroundPlay(oArea));
}

