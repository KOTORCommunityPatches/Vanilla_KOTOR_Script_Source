// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub17();
string sub16();
int sub15();
void sub14();
void sub13();
void sub12();
void sub11();
void sub10();
string sub9();
void sub8(string stringParam1);
void sub7();
void sub6();
int sub5();
int sub4(int intParam1);
void sub3(string stringParam1);
void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub1();

void sub17() {
	StartNewModule("STUNT_00", "", sub9(), "08", "", "", "", "");
}

string sub16() {
	int nGlobal = GetGlobalNumber("K_FUTURE_PLANET");
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
							if ((nGlobal == 55)) {
								return "LIVE_1a";
							}
							else {
								if ((nGlobal == 60)) {
									return "LIVE_2a";
								}
								else {
									if ((nGlobal == 65)) {
										return "LIVE_3a";
									}
									else {
										if ((nGlobal == 70)) {
											return "LIVE_4a";
										}
										else {
											if ((nGlobal == 75)) {
												return "LIVE_5a";
											}
											else {
												if ((nGlobal == 80)) {
													return "LIVE_6a";
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
	return "NULL";
}

int sub15() {
	int nGlobal = GetGlobalNumber("Ebon_Vision");
	int int3 = GetGlobalNumber("K_FUTURE_PLANET");
	sub8(" Start: ST_VisionPlayed()");
	sub8((" nFuture = " + IntToString(int3)));
	sub8(("k_vis_kashyyyk2  = " + IntToString(GetGlobalBoolean("k_vis_kashyyyk2"))));
	sub8(("k_vis_manaan2  = " + IntToString(GetGlobalBoolean("k_vis_manaan2"))));
	sub8(("k_vis_korriban2  = " + IntToString(GetGlobalBoolean("k_vis_korriban2"))));
	sub8(("k_vis_tatooine2  = " + IntToString(GetGlobalBoolean("k_vis_tatooine2"))));
	if (((int3 == 20) && (GetGlobalBoolean("k_vis_kashyyyk2") == 0))) {
		SetGlobalBoolean("k_vis_kashyyyk2", 1);
		return 0;
	}
	else {
		if (((int3 == 25) && (GetGlobalBoolean("k_vis_manaan2") == 0))) {
			SetGlobalBoolean("k_vis_manaan2", 1);
			return 0;
		}
		else {
			if (((int3 == 30) && (GetGlobalBoolean("k_vis_korriban2") == 0))) {
				SetGlobalBoolean("k_vis_korriban2", 1);
				return 0;
			}
			else {
				if (((int3 == 35) && (GetGlobalBoolean("k_vis_tatooine2") == 0))) {
					SetGlobalBoolean("k_vis_tatooine2", 1);
					return 0;
				}
			}
		}
	}
	sub8("Returning True");
	return 1;
}

void sub14() {
	sub8(" Start: ST_PlayPlanetToPlanet()");
	int nRandom = d100(1);
	if ((sub15() == 1)) {
		if ((nRandom > 50)) {
			sub8(" Start: Random Mini-Game Attack");
			SetGlobalBoolean("K_RANDOM_MINI_GAME", 1);
			StartNewModule("m12ab", "", sub9(), "11a", "", "", "", "");
		}
		else {
			StartNewModule("ebo_m12aa", "", sub9(), "08", sub16(), "", "", "");
			SetGlobalNumber("K_CURRENT_PLANET", GetGlobalNumber("K_FUTURE_PLANET"));
		}
	}
	else {
		sub17();
	}
}

void sub13() {
	int nGlobal = GetGlobalNumber("G_FINALCHOICE");
	if ((nGlobal == 1)) {
		StartNewModule("STUNT_44", "", "05_8C", "5_9", "", "", "", "");
	}
	else {
		if ((nGlobal == 2)) {
			StartNewModule("STUNT_42", "", "05_8C", "5_9", "", "", "", "");
		}
	}
	if (((nGlobal == 1) || (nGlobal == 2))) {
		SetGlobalNumber("K_KOTOR_MASTER", 60);
	}
}

void sub12() {
	StartNewModule("STUNT_18", "", sub9(), "08", "", "", "", "");
}

void sub11() {
	SetPlanetSelectable(5, 0);
	SetPlanetSelectable(6, 0);
	SetPlanetSelectable(7, 0);
	SetPlanetSelectable(4, 0);
	if (GetIsLiveContentAvailable(1)) {
		sub3("GALAXY MAP DEBUG ********************** Live Planet 1 is now unselectable");
		SetPlanetSelectable(11, 0);
	}
	if (GetIsLiveContentAvailable(2)) {
		SetPlanetSelectable(12, 0);
	}
	if (GetIsLiveContentAvailable(3)) {
		SetPlanetSelectable(13, 0);
	}
	if (GetIsLiveContentAvailable(4)) {
		SetPlanetSelectable(14, 0);
	}
	if (GetIsLiveContentAvailable(5)) {
		SetPlanetSelectable(15, 0);
	}
	if (GetIsLiveContentAvailable(6)) {
		SetPlanetSelectable(16, 0);
	}
}

void sub10() {
	string string1 = sub9();
	SetGlobalNumber("K_CURRENT_PLANET", 40);
	StartNewModule("STUNT_16", "", string1, "08", "", "", "", "");
}

string sub9() {
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
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
					return "05_7C";
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
							else {
								if ((nGlobal == 55)) {
									return "LIVE_1c";
								}
								else {
									if ((nGlobal == 60)) {
										return "LIVE_2c";
									}
									else {
										if ((nGlobal == 65)) {
											return "LIVE_3c";
										}
										else {
											if ((nGlobal == 70)) {
												return "LIVE_4c";
											}
											else {
												if ((nGlobal == 75)) {
													return "LIVE_5c";
												}
												else {
													if ((nGlobal == 80)) {
														return "LIVE_6c";
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
	}
	return "NULL";
}

void sub8(string stringParam1) {
	PrintString(("RENDER/STUNT Debug ****************** " + stringParam1));
}

void sub7() {
	sub8(" Start: ST_PlayStunt14()");
	StartNewModule("STUNT_14", "", sub9(), "", "", "", "", "");
}

void sub6() {
	StartNewModule("STUNT_12", "", "05_2C", "08", "", "", "", "");
}

int sub5() {
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	if ((nGlobal == 5)) {
		return 0;
	}
	else {
		if ((nGlobal == 10)) {
			return 1;
		}
		else {
			if ((nGlobal == 15)) {
				return 3;
			}
			else {
				if ((nGlobal == 20)) {
					return 5;
				}
				else {
					if ((nGlobal == 25)) {
						return 6;
					}
					else {
						if ((nGlobal == 30)) {
							return 7;
						}
						else {
							if ((nGlobal == 35)) {
								return 4;
							}
							else {
								if ((nGlobal == 40)) {
									return 8;
								}
								else {
									if ((nGlobal == 45)) {
										return 9;
									}
									else {
										if ((nGlobal == 50)) {
											return 10;
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

int sub4(int intParam1) {
	if ((intParam1 == 0)) {
		return 5;
	}
	else {
		if ((intParam1 == 1)) {
			return 10;
		}
		else {
			if ((intParam1 == 2)) {
				return (-1);
			}
			else {
				if ((intParam1 == 3)) {
					return 15;
				}
				else {
					if ((intParam1 == 4)) {
						return 35;
					}
					else {
						if ((intParam1 == 5)) {
							return 20;
						}
						else {
							if ((intParam1 == 6)) {
								return 25;
							}
							else {
								if ((intParam1 == 7)) {
									return 30;
								}
								else {
									if ((intParam1 == 8)) {
										return 40;
									}
									else {
										if ((intParam1 == 9)) {
											return 45;
										}
										else {
											if ((intParam1 == 10)) {
												return 50;
											}
											else {
												if ((intParam1 == 11)) {
													return 55;
												}
												else {
													if ((intParam1 == 12)) {
														return 60;
													}
													else {
														if ((intParam1 == 13)) {
															return 65;
														}
														else {
															if ((intParam1 == 14)) {
																return 70;
															}
															else {
																if ((intParam1 == 15)) {
																	return 75;
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
				}
			}
		}
	}
	return (-1);
}

void sub3(string stringParam1) {
	if ((!ShipBuild())) {
		PrintString(stringParam1);
	}
}

void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub1() {
	string string1 = "NPC_INIT_PLANET_";
	int int1 = 0;
	int1;
	while ((int1 <= 8)) {
		string1 = ("NPC_INIT_PLANET_" + IntToString(int1));
		SetGlobalNumber(string1, 0);
		(int1++);
	}
}

void main() {
	sub1();
	SetGlobalString("K_LAST_MODULE", "");
	sub2("FIRING GALAXY MAP v3.0", 10, 10, 4.0);
	sub3("");
	sub3("GALAXY MAP DEBUG ********************** K_SUP_GALAXYMAP FIRING");
	int int1 = GetSelectedPlanet();
	sub3(("GALAXY MAP DEBUG *********** nSelected Planet Constant = " + IntToString(int1)));
	int1 = sub4(int1);
	SetGlobalNumber("K_FUTURE_PLANET", int1);
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	int int6 = GetGlobalNumber("K_STAR_MAP");
	int int8 = GetGlobalNumber("K_CAPTURED_LEV");
	int int10 = GetGlobalNumber("K_KOTOR_MASTER");
	int int12 = GetGlobalNumber("K_KALO_BANDON");
	SetPlanetSelectable(int1, 0);
	SetPlanetSelectable(sub5(), 1);
	if (((int1 != 30) && (int10 == 15))) {
		SetNPCSelectability(0, 1);
	}
	else {
		if ((int1 == 30)) {
			SetNPCSelectability(0, 0);
		}
	}
	sub3(("GALAXY MAP DEBUG *********** nSelected Planet = " + IntToString(int1)));
	sub3(("GALAXY MAP DEBUG *********** K_FUTURE_PLANET = " + IntToString(int1)));
	sub3(("GALAXY MAP DEBUG *********** K_CURRENT_PLANET = " + IntToString(nGlobal)));
	sub3(("GALAXY MAP DEBUG *********** K_STAR_MAP = " + IntToString(int6)));
	sub3(("GALAXY MAP DEBUG *********** K_CAPTURED_LEV = " + IntToString(int8)));
	sub3(("GALAXY MAP DEBUG *********** K_KOTOR_MASTER = " + IntToString(int10)));
	sub3(("GALAXY MAP DEBUG *********** K_KALO_BANDON = " + IntToString(int12)));
	if (((int1 != (-1)) && (int1 != nGlobal))) {
		if (((int10 == 15) && (int12 == 0))) {
			sub3("GALAXY MAP DEBUG *********** I am running ST_PlayDantooineTakeOff()");
			SetGlobalNumber("K_KALO_BANDON", 10);
			sub6();
		}
		else {
			if (((int6 == 30) && (int12 == 20))) {
				sub3("GALAXY MAP DEBUG *********** I am running ST_PlayStunt14()");
				SetGlobalNumber("K_KALO_BANDON", 30);
				sub7();
			}
			else {
				if (((int6 == 40) && (int8 == 5))) {
					sub3("GALAXY MAP DEBUG *********** I am running ST_PlayLevCaptureStunt()");
					SetPlanetSelectable(3, 0);
					sub10();
				}
				else {
					if ((((int6 == 50) && (int10 == 30)) && (int1 == 45))) {
						sub11();
						sub3("GALAXY MAP DEBUG *********** I am running ST_PlayBastilaTorture()");
						SetGlobalNumber("K_KOTOR_MASTER", 40);
						sub12();
					}
					else {
						if ((int10 == 50)) {
							sub3("GALAXY MAP DEBUG *********** I am running Unknown World Take-Off");
							sub13();
						}
						else {
							if (((int1 != (-1)) && (int1 != nGlobal))) {
								sub3("GALAXY MAP DEBUG *********** Firing Default Transition ST_PlayPlanetToPlanet");
								sub14();
								SetGlobalNumber("K_CURRENT_PLANET", int1);
							}
							else {
								sub3("GALAXY MAP DEBUG ********************** NO PLANETS SELECTED AND/OR AVAILABLE");
							}
						}
					}
				}
			}
		}
		sub3("GALAXY MAP DEBUG ********************** K_SUP_GALAXYMAP ENDING");
		sub3("");
	}
	else {
		sub3("GALAXY MAP DEBUG ********************** INVALID SELECTION K_SUP_GALAXYMAP ENDING");
		sub3("");
	}
}

