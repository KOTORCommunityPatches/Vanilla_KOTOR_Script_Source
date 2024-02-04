void main() {
	object oComputerPanel = GetObjectByTag("ComputerPanel", 0);
	if (GetIsObjectValid(oComputerPanel)) {
		AssignCommand(oComputerPanel, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}