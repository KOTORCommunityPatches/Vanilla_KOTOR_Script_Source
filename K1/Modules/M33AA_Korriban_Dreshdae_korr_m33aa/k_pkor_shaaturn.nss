// Likely used a Korriban include that does not exist in the shipped game files.

#include "k_inc_utility"

void main() {
	
	object oStudent1 = GetObjectByTag("k33_shastudent1", 0);
	vector vPosition = GetPosition(oStudent1);
	
	SetFacingPoint(vPosition);
}
