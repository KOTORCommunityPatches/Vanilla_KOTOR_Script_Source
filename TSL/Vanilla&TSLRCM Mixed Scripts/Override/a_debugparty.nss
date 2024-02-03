// Prototypes
void sub1();

void sub1() {
	if (IsNPCPartyMember(0)) {
		RemovePartyMember(0);
	}
	RemoveAvailableNPC(0);
	if (IsNPCPartyMember(1)) {
		RemovePartyMember(1);
	}
	RemoveAvailableNPC(1);
	if (IsNPCPartyMember(2)) {
		RemovePartyMember(2);
	}
	RemoveAvailableNPC(2);
	if (IsNPCPartyMember(3)) {
		RemovePartyMember(3);
	}
	RemoveAvailableNPC(3);
	if (IsNPCPartyMember(4)) {
		RemovePartyMember(4);
	}
	RemoveAvailableNPC(4);
	if (IsNPCPartyMember(5)) {
		RemovePartyMember(5);
	}
	RemoveAvailableNPC(5);
	if (IsNPCPartyMember(6)) {
		RemovePartyMember(6);
	}
	RemoveAvailableNPC(6);
	if (IsNPCPartyMember(7)) {
		RemovePartyMember(7);
	}
	RemoveAvailableNPC(7);
	if (IsNPCPartyMember(8)) {
		RemovePartyMember(8);
	}
	RemoveAvailableNPC(8);
	if (IsNPCPartyMember(9)) {
		RemovePartyMember(9);
	}
	RemoveAvailableNPC(9);
}

void main() {
	sub1();
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		return;
	}
	AddAvailableNPCByTemplate(0, "p_atton");
	AddAvailableNPCByTemplate(1, "p_baodur");
	AddAvailableNPCByTemplate(2, "p_mand");
	AddAvailableNPCByTemplate(3, "p_g0t0");
	AddAvailableNPCByTemplate(5, "p_hk47");
	AddAvailableNPCByTemplate(6, "p_kreia");
	AddAvailableNPCByTemplate(8, "p_t3m4");
	AddAvailableNPCByTemplate(9, "p_visas");
	if ((nParam1 == 1)) {
		AddAvailableNPCByTemplate(7, "p_mira");
		AddAvailableNPCByTemplate(4, "p_handmaiden");
	}
	else {
		if ((nParam1 == 2)) {
			AddAvailableNPCByTemplate(10, "p_hanharr");
			AddAvailableNPCByTemplate(4, "p_handmaiden");
		}
		else {
			if ((nParam1 == 3)) {
				AddAvailableNPCByTemplate(7, "p_mira");
				AddAvailableNPCByTemplate(11, "p_disciple");
			}
			else {
				if ((nParam1 == 4)) {
					AddAvailableNPCByTemplate(10, "p_hanharr");
					AddAvailableNPCByTemplate(11, "p_disciple");
				}
			}
		}
	}
}

