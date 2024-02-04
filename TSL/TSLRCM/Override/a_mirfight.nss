void main() {
	object oPC = GetFirstPC();
	object oMira = GetObjectByTag("Mira", 0);
	if (GetSpellAcquired(258, oPC)) {
		GrantSpell(258, oMira);
	}
	else {
		if (GetSpellAcquired(259, oPC)) {
			GrantSpell(259, oMira);
		}
		else {
			if (GetSpellAcquired(260, oPC)) {
				GrantSpell(260, oMira);
			}
			else {
				if (GetSpellAcquired(261, oPC)) {
					GrantSpell(261, oMira);
				}
				else {
					if (GetSpellAcquired(262, oPC)) {
						GrantSpell(262, oMira);
					}
					else {
						if (GetSpellAcquired(263, oPC)) {
							GrantSpell(263, oMira);
						}
						else {
							if (GetSpellAcquired(264, oPC)) {
								GrantSpell(264, oMira);
							}
						}
					}
				}
			}
		}
	}
}