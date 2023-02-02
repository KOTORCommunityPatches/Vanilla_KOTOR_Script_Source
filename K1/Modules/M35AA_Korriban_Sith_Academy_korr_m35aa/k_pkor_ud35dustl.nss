// Byte code does not match

#include "k_inc_switch"
 
 void main() {
 	int int1 = GetUserDefinedEventNumber();
 	if ((int1 == 1001)) {
 	}
 	else {
 		if ((int1 == 1002)) {
 		}
 		else {
 			if ((int1 == 1003)) {
 			}
 			else {
 				if ((int1 == 1004)) {
 				}
 				else {
 					if ((int1 == 1005)) {
 					}
 					else {
 						if ((int1 == 1006)) {
 						}
 						else {
 							if ((int1 == 1007)) {
 								if (IsNPCPartyMember(2)) {
 									object oPC = GetFirstPC();
 									object oCarth = GetObjectByTag("carth", 0);
 									AssignCommand(oCarth, ActionStartConversation(oPC, "kor35_carth2", 0, 0, 0, "", "", "", "", "", ""));
 								}
 							}
 							else {
 								if ((int1 == 1008)) {
 								}
 								else {
 									if ((int1 == 1009)) {
 									}
 									else {
 										if ((int1 == 1010)) {
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
