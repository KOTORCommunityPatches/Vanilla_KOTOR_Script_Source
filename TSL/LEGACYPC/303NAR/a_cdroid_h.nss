void main() {
	object oKiller_droid = GetObjectByTag("killer_droid", 0);
	if (GetIsObjectValid(oKiller_droid)) {
		ActionStartConversation(GetPartyMemberByIndex(0), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
	}
	return;
}

