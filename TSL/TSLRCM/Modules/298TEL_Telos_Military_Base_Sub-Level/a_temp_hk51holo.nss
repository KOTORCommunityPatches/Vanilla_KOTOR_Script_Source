void main() {
	object oWp_hk51_spawn = GetObjectByTag("wp_hk51_spawn", 0);
	object oHK51holo = CreateObject(1, "HK51holo", GetLocation(oWp_hk51_spawn), 0);
	object oHK47 = GetObjectByTag("HK47", 0);
	DelayCommand(1.0, AssignCommand(oHK47, ClearAllActions()));
	DelayCommand(1.0, AssignCommand(oHK47, ActionStartConversation(GetFirstPC(), "hk51holo2", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}