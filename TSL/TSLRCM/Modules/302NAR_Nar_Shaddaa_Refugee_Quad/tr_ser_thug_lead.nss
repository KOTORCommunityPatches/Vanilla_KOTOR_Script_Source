void main() {
	object oSerrocoLeader = GetObjectByTag("SerrocoLeader", 0);
	if ((((!GetLocalBoolean(oSerrocoLeader, 50)) && (GetEnteringObject() == GetPartyLeader())) && (!IsStealthed(GetPartyLeader())))) {
		AssignCommand(oSerrocoLeader, ClearAllActions());
		AssignCommand(oSerrocoLeader, ActionStartConversation(GetPartyLeader(), "serlead", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}