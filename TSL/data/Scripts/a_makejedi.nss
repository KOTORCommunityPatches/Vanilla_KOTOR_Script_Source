// This global script is intended to be used for making each CNPC a Jedi.
/* Parameter Count: 1 (Which CNPC you intend to make a Jedi.)

NPC numbers, as specified in NPC.2da

0       Atton
1       BaoDur
2       Mand
3       g0t0
4       Handmaiden
5       hk47
6       Kreia
7       Mira
8       T3m4
9       VisasMarr
10      Hanharr
11      Disciple

*/
//// CFA 10-5-04

void main()
{
    // Grab the Parameter.
    int nScriptNumber = GetScriptParameter( 1 );

    // If Param = 0, then it's Atton. (Trying to make it consistent with the CNPC integers.)
    if ( nScriptNumber == 0 ) {
        AddMultiClass (CLASS_TYPE_JEDISENTINEL, GetObjectByTag ("Atton") );
    }

    // If Param = 1, then it's Bao-Dur. (Trying to make it consistent with the CNPC integers.)
    if ( nScriptNumber == 1 ) {
        AddMultiClass (CLASS_TYPE_JEDIGUARDIAN, GetObjectByTag ("BaoDur") );
    }

    // If Param = 4, then it's the Handmaiden. (Trying to make it consistent with the CNPC integers.)
    if ( nScriptNumber == 4 ) {
        AddMultiClass (CLASS_TYPE_JEDIGUARDIAN, GetObjectByTag ("Handmaiden") );
    }

    // If Param = 7, then it's Mira. (Trying to make it consistent with the CNPC integers.)
    if ( nScriptNumber == 7 ) {
        AddMultiClass (CLASS_TYPE_JEDISENTINEL, GetObjectByTag ("Mira") );
    }

    // If Param = 11, then it's the Disciple. (Trying to make it consistent with the CNPC integers.)
    if ( nScriptNumber == 11 ) {
        AddMultiClass (CLASS_TYPE_JEDICONSULAR, GetObjectByTag ("Disciple") );
    }
}
