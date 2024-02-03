void main() {
	if (GetIsObjectValid(GetObjectByTag("Atton", 0))) {
		ChangeToStandardFaction(GetObjectByTag("Atton", 0), 5);
	}
	else {
		if (GetIsObjectValid(GetObjectByTag("BaoDur", 0))) {
			ChangeToStandardFaction(GetObjectByTag("BaoDur", 0), 5);
		}
		else {
			if (GetIsObjectValid(GetObjectByTag("g0t0", 0))) {
				ChangeToStandardFaction(GetObjectByTag("g0t0", 0), 5);
			}
			else {
				if (GetIsObjectValid(GetObjectByTag("Handmaiden", 0))) {
					ChangeToStandardFaction(GetObjectByTag("Handmaiden", 0), 5);
				}
				else {
					if (GetIsObjectValid(GetObjectByTag("hk47", 0))) {
						ChangeToStandardFaction(GetObjectByTag("hk47", 0), 5);
					}
					else {
						if (GetIsObjectValid(GetObjectByTag("Kreia", 0))) {
							ChangeToStandardFaction(GetObjectByTag("Kreia", 0), 5);
						}
						else {
							if (GetIsObjectValid(GetObjectByTag("Mira", 0))) {
								ChangeToStandardFaction(GetObjectByTag("Mira", 0), 5);
							}
							else {
								if (GetIsObjectValid(GetObjectByTag("T3m4", 0))) {
									ChangeToStandardFaction(GetObjectByTag("T3m4", 0), 5);
								}
								else {
									if (GetIsObjectValid(GetObjectByTag("VisasMarr", 0))) {
										ChangeToStandardFaction(GetObjectByTag("VisasMarr", 0), 5);
									}
									else {
										if (GetIsObjectValid(GetObjectByTag("Hanharr", 0))) {
											ChangeToStandardFaction(GetObjectByTag("Hanharr", 0), 5);
										}
										else {
											if (GetIsObjectValid(GetObjectByTag("Disciple", 0))) {
												ChangeToStandardFaction(GetObjectByTag("Disciple", 0), 5);
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

