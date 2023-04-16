#include "k_inc_end"

void main() {
	
	AurPostString("xplode", 5, 5, 5.0);
	
	DelayCommand(0.5, PlayExplosion("end_explode03", TRUE, TRUE));
}
