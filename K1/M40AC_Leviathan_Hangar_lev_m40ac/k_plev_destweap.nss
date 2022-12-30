void main() {
	
	object oBastSaber = GetItemPossessedBy(GetObjectByTag("Bastila", 0), "bast_temp_saber");
	
	DelayCommand(1.0, DestroyObject(oBastSaber));
	DelayCommand(4.0, DestroyObject(oBastSaber));
	
	object oCarthGun = GetItemInSlot(4, GetObjectByTag("Carth", 0));
	
	if (GetTag(oCarthGun) == "carth_temp_gun")
		{
			DestroyObject(oCarthGun);
		}
}
