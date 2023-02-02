void main() {
	AddAvailableNPCByObject(7, GetObjectByTag("3CFD", 0));
	AddPartyMember(7, GetObjectByTag("3CFD", 0));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("tr_3cfd_int", 0), ActionStartConversation(GetFirstPC(), "3cfd_end", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
