void main() {
	
	object oDoorAcid = GetObjectByTag("kor39_dooracid", 0);
	object oDoorStarMap = GetObjectByTag("k39_door_starmap", 0);
	
	AssignCommand(oDoorStarMap, ActionCloseDoor(oDoorStarMap));
	
	AssignCommand(oDoorAcid, ActionCloseDoor(oDoorAcid));
	SetLocked(oDoorAcid, TRUE);
}
