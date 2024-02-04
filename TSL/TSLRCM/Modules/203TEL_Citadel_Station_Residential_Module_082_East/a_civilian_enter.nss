void main() {
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return;
	}
	CreateObject(1, "203_civrobbed", GetLocation(GetObjectByTag("wp_civilian_1", 0)), 0);
	object oCivrobbed = GetObjectByTag("civrobbed", 0);
	SetLocalBoolean(OBJECT_SELF, 36, 1);
	DelayCommand(2.0, AssignCommand(oCivrobbed, ClearAllActions()));
	DelayCommand(2.0, AssignCommand(oCivrobbed, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}