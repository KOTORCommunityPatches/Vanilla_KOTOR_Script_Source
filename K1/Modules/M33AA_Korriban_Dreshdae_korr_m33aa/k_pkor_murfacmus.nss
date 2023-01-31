void main() {
	
	object oArea = GetArea(OBJECT_SELF);
	
	MusicBackgroundStop(oArea);
	DelayCommand(0.1, MusicBattlePlay(oArea));
	
	object oVictim = GetObjectByTag("kor33b_victim1", 0);
	vector vVictim = GetPosition(oVictim);
	
	SetFacingPoint(vVictim);
}