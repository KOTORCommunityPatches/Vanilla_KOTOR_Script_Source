void main() {
	AssignCommand(GetPartyMemberByIndex(0), JumpToObject(GetNearestObjectByTag("wp_transabort", OBJECT_SELF, 1), 1));
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetGlobalFadeIn(0.0, 0.5, 0.0, 0.0, 0.0);
}

