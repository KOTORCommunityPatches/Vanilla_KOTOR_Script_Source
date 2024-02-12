// a_ia_use_parts
// Parameter Count: 1
// Param1 - The number of the PC's Repair Parts we want to use.

#include "k_inc_utility"

void main()
{
    int nPartCount = GetScriptParameter( 1 );
    UT_RemoveRepairParts( nPartCount );
}
