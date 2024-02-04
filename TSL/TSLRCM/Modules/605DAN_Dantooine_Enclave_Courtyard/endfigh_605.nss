// Prototypes
void sub2();
void sub1();

void sub2() {
	object oFake_pc605 = GetObjectByTag("fake_pc605", 0);
	object oBodyItem = GetItemInSlot(1, oFake_pc605);
	if (GetIsObjectValid(oBodyItem)) {
		GiveItem(oBodyItem, GetFirstPC());
		AssignCommand(GetFirstPC(), ActionEquipItem(oBodyItem, 1, 1));
	}
	object oHeadItem = GetItemInSlot(0, oFake_pc605);
	if (GetIsObjectValid(oHeadItem)) {
		GiveItem(oHeadItem, GetFirstPC());
		AssignCommand(GetFirstPC(), ActionEquipItem(oHeadItem, 0, 1));
	}
}

void sub1() {
	SwitchPlayerCharacter(0xFFFFFFFF);
	object object1 = SpawnAvailableNPC(2, GetLocation(GetFirstPC()));
	AddPartyMember(2, object1);
	if (GetIsObjectValid(GetObjectByTag("Atton", 0))) {
		AddPartyMember(0, GetObjectByTag("Atton", 0));
		ChangeToStandardFaction(GetObjectByTag("Atton", 0), 2);
	}
	else {
		if (GetIsObjectValid(GetObjectByTag("BaoDur", 0))) {
			AddPartyMember(1, GetObjectByTag("BaoDur", 0));
			ChangeToStandardFaction(GetObjectByTag("BaoDur", 0), 2);
		}
		else {
			if (GetIsObjectValid(GetObjectByTag("g0t0", 0))) {
				AddPartyMember(3, GetObjectByTag("g0t0", 0));
				ChangeToStandardFaction(GetObjectByTag("g0t0", 0), 2);
			}
			else {
				if (GetIsObjectValid(GetObjectByTag("Handmaiden", 0))) {
					AddPartyMember(4, GetObjectByTag("Handmaiden", 0));
					ChangeToStandardFaction(GetObjectByTag("Handmaiden", 0), 2);
				}
				else {
					if (GetIsObjectValid(GetObjectByTag("hk47", 0))) {
						AddPartyMember(5, GetObjectByTag("hk47", 0));
						ChangeToStandardFaction(GetObjectByTag("hk47", 0), 2);
					}
					else {
						if (GetIsObjectValid(GetObjectByTag("Kreia", 0))) {
							AddPartyMember(6, GetObjectByTag("Kreia", 0));
							ChangeToStandardFaction(GetObjectByTag("Kreia", 0), 2);
						}
						else {
							if (GetIsObjectValid(GetObjectByTag("Mira", 0))) {
								AddPartyMember(7, GetObjectByTag("Mira", 0));
								ChangeToStandardFaction(GetObjectByTag("Mira", 0), 2);
							}
							else {
								if (GetIsObjectValid(GetObjectByTag("T3m4", 0))) {
									AddPartyMember(8, GetObjectByTag("T3m4", 0));
									ChangeToStandardFaction(GetObjectByTag("T3m4", 0), 2);
								}
								else {
									if (GetIsObjectValid(GetObjectByTag("VisasMarr", 0))) {
										AddPartyMember(9, GetObjectByTag("VisasMarr", 0));
										ChangeToStandardFaction(GetObjectByTag("VisasMarr", 0), 2);
									}
									else {
										if (GetIsObjectValid(GetObjectByTag("Hanharr", 0))) {
											AddPartyMember(10, GetObjectByTag("Hanharr", 0));
											ChangeToStandardFaction(GetObjectByTag("Hanharr", 0), 2);
										}
										else {
											if (GetIsObjectValid(GetObjectByTag("Disciple", 0))) {
												AddPartyMember(11, GetObjectByTag("Disciple", 0));
												ChangeToStandardFaction(GetObjectByTag("Disciple", 0), 2);
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}

void main() {
	SetAreaUnescapable(0);
	ClearAllActions();
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	DelayCommand(0.3, sub1());
	DelayCommand(0.4, sub2());
	DelayCommand(0.6, DestroyObject(GetObjectByTag("fake_pc605", 0), 0.0, 0, 0.0, 0));
	SetGlobalFadeIn(1.5, 0.2, 0.0, 0.0, 0.0);
	DelayCommand(5.5, DestroyObject(GetObjectByTag("mand_merc2", 0), 0.0, 0, 0.0, 0));
	DelayCommand(5.5, DestroyObject(GetObjectByTag("mand_merc", 0), 0.0, 0, 0.0, 0));
}