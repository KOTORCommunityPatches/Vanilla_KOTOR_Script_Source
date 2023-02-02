void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		object oG_I_MEDEQPMNT04 = CreateObject(2, "G_I_MEDEQPMNT04", GetLocation(OBJECT_SELF), 0);
		SetItemStackSize(oG_I_MEDEQPMNT04, 3);
		GiveItem(oG_I_MEDEQPMNT04, GetFirstPC());
	}
	else {
		if ((nParam1 == 1)) {
			object oG_i_medeqpmnt01 = CreateObject(2, "g_i_medeqpmnt01", GetLocation(OBJECT_SELF), 0);
			SetItemStackSize(oG_i_medeqpmnt01, 3);
			GiveItem(oG_i_medeqpmnt01, GetFirstPC());
		}
	}
}
