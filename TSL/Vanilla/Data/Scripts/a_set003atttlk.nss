// a_set003atttlk
// Parameter Count: 1
// Param1 - The # to set the global to.
// This sets Atton's script to whatever the Parameter number is.
// CFA 1/4

#include "k_inc_debug"
#include "k_inc_utility"
void main()
{

    int nParam1 = GetScriptParameter( 1 );
    SetGlobalNumber("003EBO_Atton_Talk", nParam1);

}
