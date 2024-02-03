void main() {
	int int1;
	int int2;
	object oNPC = GetPartyMemberByIndex(1);
	string string1 = GetTag(oNPC);
	if ((string1 == "Atton")) {
		int1 = 0;
	}
	else {
		if ((string1 == "BaoDur")) {
			int1 = 1;
		}
		else {
			if ((string1 == "Mand")) {
				int1 = 2;
			}
			else {
				if ((string1 == "Handmaiden")) {
					int1 = 4;
				}
				else {
					if ((string1 == "hk47")) {
						int1 = 5;
					}
					else {
						if ((string1 == "Kreia")) {
							int1 = 6;
						}
						else {
							if ((string1 == "T3m4")) {
								int1 = 8;
							}
							else {
								if ((string1 == "VisasMarr")) {
									int1 = 9;
								}
								else {
									if ((string1 == "Disciple")) {
										int1 = 11;
									}
								}
							}
						}
					}
				}
			}
		}
	}
	object object3 = GetPartyMemberByIndex(2);
	string string3 = GetTag(object3);
	if ((string3 == "Atton")) {
		int2 = 0;
	}
	else {
		if ((string3 == "BaoDur")) {
			int2 = 1;
		}
		else {
			if ((string3 == "Mand")) {
				int2 = 2;
			}
			else {
				if ((string3 == "Handmaiden")) {
					int2 = 4;
				}
				else {
					if ((string3 == "hk47")) {
						int2 = 5;
					}
					else {
						if ((string3 == "Kreia")) {
							int2 = 6;
						}
						else {
							if ((string3 == "T3m4")) {
								int2 = 8;
							}
							else {
								if ((string3 == "VisasMarr")) {
									int2 = 9;
								}
								else {
									if ((string3 == "Disciple")) {
										int2 = 11;
									}
								}
							}
						}
					}
				}
			}
		}
	}
	SetNPCSelectability(int1, 1);
	SetNPCSelectability(int2, 1);
}

