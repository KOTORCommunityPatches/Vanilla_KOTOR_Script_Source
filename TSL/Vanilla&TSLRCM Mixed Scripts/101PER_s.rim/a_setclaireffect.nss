void main() {
	EnableVideoEffect(3);
	AurPostString("Stopping Background Music", 5, 5, 5.0);
	MusicBackgroundStop(GetArea(OBJECT_SELF));
	DelayCommand(10.0, AurPostString("Playing Background Music", 5, 5, 5.0));
	DelayCommand(10.0, MusicBackgroundPlay(GetArea(OBJECT_SELF)));
}

