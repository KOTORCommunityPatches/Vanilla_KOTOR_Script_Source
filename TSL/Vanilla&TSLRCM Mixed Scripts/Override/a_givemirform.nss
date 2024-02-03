void main() {
	object oPC = GetFirstPC();
	object oMira = GetObjectByTag("Mira", 0);
	if (GetSpellAcquired(265, oPC)) {
		GrantSpell(265, oMira);
	}
	else {
		if (GetSpellAcquired(266, oPC)) {
			GrantSpell(266, oMira);
		}
		else {
			if (GetSpellAcquired(267, oPC)) {
				GrantSpell(267, oMira);
			}
			else {
				if (GetSpellAcquired(268, oPC)) {
					GrantSpell(268, oMira);
				}
			}
		}
	}
}

