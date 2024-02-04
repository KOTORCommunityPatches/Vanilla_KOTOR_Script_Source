void main() {
	AurPostString("a_262opencage: playing room anim", 5, 5, 5.0);
	PlayRoomAnimation("262TELp", 2);
	DelayCommand(2.3, PlayRoomAnimation("262TELp", 3));
	object oForceCageBlocker = GetObjectByTag("ForceCageBlocker", 0);
	DestroyObject(oForceCageBlocker, 0.0, 0, 0.0, 0);
}