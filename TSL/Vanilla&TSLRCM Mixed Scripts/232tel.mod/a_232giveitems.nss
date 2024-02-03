void main() {
	object object1 = GetItemPossessedBy(OBJECT_SELF, "g_i_medeqpmnt02");
	object object3 = GetItemPossessedBy(OBJECT_SELF, "g_i_medeqpmnt04");
	object object5 = GetItemPossessedBy(OBJECT_SELF, "g_w_fraggren01");
	object object7 = GetItemPossessedBy(OBJECT_SELF, "g_w_iongren01");
	object object9 = GetItemPossessedBy(OBJECT_SELF, "g_i_drdrepeqp001");
	ActionGiveItem(object1, GetFirstPC());
	ActionGiveItem(object3, GetFirstPC());
	ActionGiveItem(object5, GetFirstPC());
	ActionGiveItem(object7, GetFirstPC());
	ActionGiveItem(object9, GetFirstPC());
}

