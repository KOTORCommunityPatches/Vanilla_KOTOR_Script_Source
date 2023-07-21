// Byte code does not match

// Prototypes
string sub4();
string sub3();
void sub2();
int sub1(int intParam1);

string sub4() {
	int nGlobal = GetGlobalNumber("K_CURRENT_NUMBER");
	if ((nGlobal == 15)) {
		return "05_2c";
	}
	else {
		if ((nGlobal == 20)) {
			return "05_4c";
		}
		else {
			if ((nGlobal == 25)) {
				return "05_5c";
			}
			else {
				if ((nGlobal == 30)) {
					return "05_7c";
				}
				else {
					if ((nGlobal == 35)) {
						return "05_3c";
					}
					else {
						if ((nGlobal == 40)) {
							return "NULL";
						}
						else {
							if ((nGlobal == 45)) {
								return "05_8c";
							}
						}
					}
				}
			}
		}
	}
	return "NULL";
}

string sub3() {
	int nGlobal = GetGlobalNumber("K_FUTURE_NUMBER");
	if ((nGlobal == 15)) {
		return "05_2a";
	}
	else {
		if ((nGlobal == 20)) {
			return "05_4a";
		}
		else {
			if ((nGlobal == 25)) {
				return "05_5a";
			}
			else {
				if ((nGlobal == 30)) {
					return "05_7a";
				}
				else {
					if ((nGlobal == 35)) {
						return "05_3a";
					}
					else {
						if ((nGlobal == 40)) {
							return "NULL";
						}
						else {
							if ((nGlobal == 45)) {
								return "05_8a";
							}
						}
					}
				}
			}
		}
	}
	return "NULL";
}

void sub2() {
	StartNewModule("ebo_m44aa", "", "17", "", "", "", "", "");
}

int sub1(int intParam1) {
	if ((intParam1 == 0)) {
		return 5;
	}
	else {
		if ((intParam1 == 1)) {
			return 10;
		}
		else {
			if ((intParam1 == 2)) {
				return 15;
			}
			else {
				if ((intParam1 == 3)) {
					return 20;
				}
				else {
					if ((intParam1 == 4)) {
						return 25;
					}
					else {
						if ((intParam1 == 5)) {
							return 30;
						}
						else {
							if ((intParam1 == 6)) {
								return 35;
							}
							else {
								if ((intParam1 == 7)) {
									return 40;
								}
								else {
									if ((intParam1 == 8)) {
										return 45;
									}
									else {
										if ((intParam1 == 9)) {
											return 50;
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
	return (-1);
}

void main() {
	int int1 = GetSelectedPlanet();
	int1 = sub1(int1);
	SetGlobalNumber("K_FUTURE_PLANET", int1);
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	int int6 = GetGlobalNumber("K_STAR_MAP");
	int int8 = GetGlobalNumber("K_CAPTURE_LEV");
	if (((int6 == 40) && (int8 == 5))) {
		sub2();
		SetGlobalNumber("K_CURRENT_PLANET", 40);
	}
	else {
		StartNewModule("ebo_m12aa", sub4(), "8", sub3(), "", "", "", "");
		SetGlobalNumber("K_CURRENT_PLANET", sub1(int1));
	}
}

