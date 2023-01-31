void main() {
	
	RemovePartyMember(NPC_BASTILA);
	RemovePartyMember(NPC_CARTH);
	
	SetGlobalFadeOut(0.0, 0.5);
	
	MusicBackgroundStop(GetArea(OBJECT_SELF));
	DelayCommand(0.2, MusicBackgroundChangeNight(GetArea(OBJECT_SELF), 11));
	DelayCommand(0.2, MusicBackgroundChangeDay(GetArea(OBJECT_SELF), 11));
	
	NoClicksFor(1.2);
	
	DelayCommand(1.0, StartNewModule("stunt_31b", "", "31a"));
}