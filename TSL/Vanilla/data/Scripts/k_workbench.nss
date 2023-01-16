// k_workbench
//
// Global workbench script: start workbench tutorial if first time used,
// otherwise start workbench.
//
// DEM 022404


#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    if( GetGlobalNumber( "000_Workbench" ) < 3 )
        {
        ActionStartConversation( GetLastUsedBy( ) );
        }

    else {
            if(GetGlobalNumber("000_Workbench") < 5) DecrementGlobalNumber("000_Workbench",2);
            ShowUpgradeScreen(OBJECT_INVALID, GetLastUsedBy( ) );
         }
}







