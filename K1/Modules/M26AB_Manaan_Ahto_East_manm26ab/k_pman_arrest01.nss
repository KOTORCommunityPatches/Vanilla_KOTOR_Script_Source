#include "k_inc_utility"

void main() {
	
	UT_StoreParty();
	
	DestroyObject(GetObjectByTag("man26_drdcut05", 0));
	DestroyObject(GetObjectByTag("man26_drdcut04", 0));
	DestroyObject(GetObjectByTag("man26_drdcut03", 0));
	DestroyObject(GetObjectByTag("man26_drdcut02", 0));
	DestroyObject(GetObjectByTag("man26_drdcut01", 0));
	DestroyObject(GetObjectByTag("man26_selcut03", 0));
	
	StartNewModule("manm26aa", "wp_jail03");
}