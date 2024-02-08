// a_ia_use_comspk
// Parameter Count: 1
// Param1 - The number of the PC's Computer Spikes we want to use.

#include "k_inc_utility"

void main()
{
    int nSpikeCount = GetScriptParameter( 1 );
    UT_RemoveComputerSpikes( nSpikeCount );
}
