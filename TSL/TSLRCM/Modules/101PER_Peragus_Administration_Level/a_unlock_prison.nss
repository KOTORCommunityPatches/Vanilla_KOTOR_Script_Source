void main() {
	AurPostString("a_unlock_prison?", 5, 5, 5.0);
	object oPrisonRoomDr = GetObjectByTag("PrisonRoomDr", 0);
	DelayCommand(0.8, ExecuteScript("k_door_heart", oPrisonRoomDr, 0xFFFFFFFF));
}