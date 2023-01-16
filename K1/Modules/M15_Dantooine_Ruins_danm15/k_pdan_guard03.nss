#include "k_inc_dan"

void main() {
	
	AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_droid01", 0)));
	ExecuteScript("k_pdan_bast01", GetBastila(), -1);
}
