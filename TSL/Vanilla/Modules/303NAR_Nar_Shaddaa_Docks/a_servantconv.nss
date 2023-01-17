void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		if (GetLocalBoolean(OBJECT_SELF, 31)) {
			SetLocalBoolean(OBJECT_SELF, 31, 0);
			object oTwilek_Servant = GetObjectByTag("Twilek_Servant", 0);
			SetLocalBoolean(oTwilek_Servant, 31, 1);
			AssignCommand(oTwilek_Servant, ClearAllActions());
			AssignCommand(oTwilek_Servant, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

