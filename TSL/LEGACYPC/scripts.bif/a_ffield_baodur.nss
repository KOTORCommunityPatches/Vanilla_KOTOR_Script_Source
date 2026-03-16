void main() {
	if ((GetLastAttacker(OBJECT_SELF) == GetObjectByTag("baodur", 0))) {
		object object3 = OBJECT_SELF;
		AssignCommand(object3, ActionUnlockObject(object3));
		AssignCommand(object3, ActionOpenDoor(object3));
	}
	if (((!IsNPCPartyMember(1)) && (GetDistanceBetween(GetPartyLeader(), GetObjectByTag("Baodur", 0)) <= 12.0))) {
		DelayCommand(0.1, ActionStartConversation(OBJECT_SELF, "000ffield", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

