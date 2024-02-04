void main() {
	ActionTakeItem(GetObjectByTag("qu_deadsalvager1", 0), GetFirstPC());
	ActionTakeItem(GetObjectByTag("qu_deadsalvager1", 0), GetFirstPC());
	ActionTakeItem(GetObjectByTag("qu_deadwill", 0), GetFirstPC());
	ActionTakeItem(GetObjectByTag("qu_fakewill", 0), GetFirstPC());
	CreateItemOnObject("g_w_sbrcrstl06", GetFirstPC(), 1, 0);
	CreateItemOnObject("g_w_sbrcrstl05", GetFirstPC(), 1, 0);
}