void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			{
				object object1 = SpawnAvailableNPC(6, GetLocation(GetObjectByTag("WP_gspawn_kreia", 0)));
				if ((!GetIsObjectValid(object1))) {
					AurPostString("107PER: AWD-OEI: Kreia didn't spawn.", 5, 9, 30.0);
				return;
				}
				ChangeObjectAppearance(object1, 627);
			}
			break;
		case 1:
			break;
		case 2:
			break;
		case 3:
			{
				object oKreia = GetObjectByTag("kreia", 0);
				if ((!GetIsObjectValid(oKreia))) {
					AurPostString("107PER: AWD-OEI: Kreia didn't spawn.", 5, 8, 30.0);
				return;
				}
				AddPartyMember(6, oKreia);
			}
			break;
	}
}
