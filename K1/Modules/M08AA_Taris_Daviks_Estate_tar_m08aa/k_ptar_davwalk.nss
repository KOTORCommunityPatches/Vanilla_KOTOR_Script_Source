#include "k_inc_tar"

void WalkCalo() {
	ActionMoveToObject(GetObjectByTag("tar08_wpspcalo3", 0), FALSE, 1.0);
	ActionDoCommand(SetFacingPoint(GetPosition(GetFirstPC())));
}

void WalkDavik() {
	ActionMoveToObject(GetObjectByTag("tar08_wpdavtour5", 0), FALSE, 1.0);
	ActionDoCommand(SetFacingPoint(GetPosition(GetFirstPC())));
}

void main() {
	
	AssignCommand(GetObjectByTag("Davik082", 0), WalkDavik());
	AssignCommand(GetObjectByTag("Calo082", 0), WalkCalo());
}
