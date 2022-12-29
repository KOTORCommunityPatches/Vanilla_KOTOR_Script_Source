#include "k_inc_tar"

void main() {
	
	object oRakghoul = GetObjectByTag("hendarsfate", 0);
	
	DelayCommand(0.5, AssignCommand(oRakghoul, TAR_PlotMoveObject(GetObjectByTag("tar04_wprakghoul", 0), 1)));
}
