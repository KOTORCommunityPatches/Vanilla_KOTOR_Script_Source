#include "k_inc_utility"

void main() {
	
	UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
	
	if (!GetGlobalBoolean("KOR_LASHOWE_TUK"))
		{
			object oWP_TukQueen = GetObjectByTag("k36_way_tukqueen", 0);
			object oWP_TukMook1 = GetObjectByTag("k36_way_tukhen1", 0);
			object oWP_TukMook2 = GetObjectByTag("k36_way_tukhen2", 0);
			location lQuuen = GetLocation(oWP_TukQueen);
			location lMook1 = GetLocation(oWP_TukMook1);
			location lMook2 = GetLocation(oWP_TukMook2);
			
			CreateObject(OBJECT_TYPE_CREATURE, "kor36_tukataquee", lQuuen);
			CreateObject(OBJECT_TYPE_CREATURE, "kor36_tukatahen1", lMook1);
			CreateObject(OBJECT_TYPE_CREATURE, "kor36_tukatahen2", lMook2);
			
			SetGlobalBoolean("KOR_LASHOWE_TUK", TRUE);
		}
}