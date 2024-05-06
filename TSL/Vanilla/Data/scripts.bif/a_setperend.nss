// a_setperend
// Parameter Count: 1
// Param1 - The # to set the global to.
// This sets the destruction of Peragus flag to whatever the param is.
// CFA 1/11

#include "k_inc_debug"
#include "k_inc_utility"
void main()
{

    int nParam1 = GetScriptParameter( 1 );
    SetGlobalNumber("106PER_Peragus_End", nParam1);

}
