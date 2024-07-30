// a_addforcepoints
// Parameter Count: 1
// Param1 - The number of Force points bestowed.
// This generic script add X Force points to the PC.
// CFA 4-5-04

void main()
{
    int nParam1 = GetScriptParameter( 1 );

    AddBonusForcePoints ( GetFirstPC (), nParam1 );

}
