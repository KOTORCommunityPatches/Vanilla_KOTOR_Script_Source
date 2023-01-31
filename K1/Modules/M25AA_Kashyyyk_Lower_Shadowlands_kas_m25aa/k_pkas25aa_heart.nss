#include "k_inc_kas"

void main() {
	
	object oWP_Mando = GetWaypointByTag("k_pkas_wp_mandal");
	object oWP_Swoop1 = GetWaypointByTag("k_pkas_wp_swoop");
	object oWP_Swoop2 = GetWaypointByTag("k_pkas_wp_swoop2");
	object oWP_Swoop3 = GetWaypointByTag("k_pkas_wp_swoop3");
	location lMando = GetLocation(oWP_Mando);
	location lSwoop1 = GetLocation(oWP_Swoop1);
	location lSwoop2 = GetLocation(oWP_Swoop2);
	location lSwoop3 = GetLocation(oWP_Swoop3);
	
	if (GetMandalorianPlotGlobal() == 2)
		{
			SetMandalorianPlotGlobal(3);
			
			CreateObject(OBJECT_TYPE_CREATURE, "kas25_mandcomm", lMando);
			CreateObject(OBJECT_TYPE_PLACEABLE, "kas25_mandswoop", lSwoop1);
			CreateObject(OBJECT_TYPE_PLACEABLE, "kas25_mandswoop2", lSwoop2);
			CreateObject(OBJECT_TYPE_PLACEABLE, "kas25_mandswoop3", lSwoop3);
		}
}