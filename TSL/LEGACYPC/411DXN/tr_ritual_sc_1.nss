void main() {
	object object1 = GetLastUsedBy();
	if ((!GetIsPartyLeader(object1))) {
		return;
	}
	DelayCommand(0.2, AssignCommand(GetObjectByTag("ritual_leader", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

