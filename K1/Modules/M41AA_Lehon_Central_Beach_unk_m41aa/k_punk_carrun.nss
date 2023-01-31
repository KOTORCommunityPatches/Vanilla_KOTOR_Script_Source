// Byte code does not match

void main() {
 	
 	DelayCommand(0.5, AssignCommand(GetObjectByTag("invish", 0), ActionStartConversation(GetPCSpeaker(), "unk41_mission", FALSE, 0, TRUE)));
 	
 	ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, OBJECT_SELF), 0);
 	
 	ActionJumpToLocation(GetLocation(GetObjectByTag("invis", 0)));
 	
 	DelayCommand(0.6, DestroyObject(OBJECT_SELF, 0.0, TRUE));
 }