void main() {
	int nParam1 = GetScriptParameter(1);
	object oAtton = GetObjectByTag("atton", 0);
	object oKreia = GetObjectByTag("kreia", 0);
	object oFakeatton = GetObjectByTag("fakeatton", 0);
	SetLocalBoolean(oFakeatton, 40, 1);
	if ((nParam1 == 1)) {
		if (GetIsObjectValid(oAtton)) {
			DelayCommand(0.1, AssignCommand(oFakeatton, ActionStartConversation(GetPCSpeaker(), "203atton", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
	}
	else {
		if ((nParam1 == 2)) {
			if (GetIsObjectValid(oKreia)) {
				DelayCommand(0.1, AssignCommand(oFakeatton, ActionStartConversation(GetPCSpeaker(), "203kreia", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			}
		}
	}
}

