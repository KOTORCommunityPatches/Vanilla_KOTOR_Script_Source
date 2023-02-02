void main() {
	GiveXPToCreature(GetFirstPC(), 100);
	object o101per_door_fritz = GetObjectByTag("101per_door_fritz", 0);
	SoundObjectStop(o101per_door_fritz);
	DelayCommand(0.5, SoundObjectPlay(GetObjectByTag("101pervoice008", 0)));
}
