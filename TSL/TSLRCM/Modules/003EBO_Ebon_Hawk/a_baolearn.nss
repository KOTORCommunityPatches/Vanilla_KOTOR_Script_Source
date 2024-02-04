void main() {
	object oBaoDur = GetObjectByTag("BaoDur", 0);
	object oPC = GetFirstPC();
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			if (GetSpellAcquired(265, oPC)) {
				GrantSpell(265, oBaoDur);
			}
			else {
				if (GetSpellAcquired(266, oPC)) {
					GrantSpell(266, oBaoDur);
				}
				else {
					if (GetSpellAcquired(267, oPC)) {
						GrantSpell(267, oBaoDur);
					}
					else {
						if (GetSpellAcquired(268, oPC)) {
							GrantSpell(268, oBaoDur);
						}
					}
				}
			}
			break;
		case 1:
			if (GetSpellAcquired(258, oPC)) {
				GrantSpell(258, oBaoDur);
			}
			else {
				if (GetSpellAcquired(259, oPC)) {
					GrantSpell(259, oBaoDur);
				}
				else {
					if (GetSpellAcquired(260, oPC)) {
						GrantSpell(260, oBaoDur);
					}
					else {
						if (GetSpellAcquired(261, oPC)) {
							GrantSpell(261, oBaoDur);
						}
						else {
							if (GetSpellAcquired(262, oPC)) {
								GrantSpell(262, oBaoDur);
							}
							else {
								if (GetSpellAcquired(263, oPC)) {
									GrantSpell(263, oBaoDur);
								}
								else {
									if (GetSpellAcquired(264, oPC)) {
										GrantSpell(264, oBaoDur);
									}
								}
							}
						}
					}
				}
			}
			break;
		case 2:
			if (GetSpellAcquired(176, oPC)) {
				GrantSpell(176, oBaoDur);
			}
			else {
				if (GetSpellAcquired(182, oPC)) {
					GrantSpell(182, oBaoDur);
				}
				else {
					if (GetSpellAcquired(183, oPC)) {
						GrantSpell(183, oBaoDur);
					}
					else {
						if (GetSpellAcquired(270, oPC)) {
							GrantSpell(270, oBaoDur);
						}
					}
				}
			}
			break;
	}
}