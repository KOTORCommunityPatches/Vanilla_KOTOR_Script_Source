void main() {
	object oHk50cs = GetObjectByTag("hk50cs", 0);
	object oHK502cs = GetObjectByTag("HK502cs", 0);
	object oHK503cs = GetObjectByTag("HK503cs", 0);
	if ((GetGlobalNumber("298TEL_Reactor_Down") == 1)) {
		AssignCommand(oHk50cs, ActionJumpToObject(GetObjectByTag("wp_hk50_end", 0), 1));
		AssignCommand(oHK502cs, ActionJumpToObject(GetObjectByTag("wp_hk502_end", 0), 1));
		AssignCommand(oHK503cs, ActionJumpToObject(GetObjectByTag("wp_hk503_end", 0), 1));
	}
}