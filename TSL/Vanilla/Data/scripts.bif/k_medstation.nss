// k_medstation
//
// Global medical station script: start medical station tutorial if first time
// used, otherwise start medical station.
//
// DEM 022404
// modified 08/19/04 KDS


#include "k_inc_debug"
#include "k_inc_utility"

void main()
{

            ShowChemicalUpgradeScreen(GetLastUsedBy( ) );
}
