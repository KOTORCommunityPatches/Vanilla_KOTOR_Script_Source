// JAB-OEI 10/27/04
// Conditional scripts for Mandalore Dialog


int StartingConditional()
{
   int nPlanet = GetScriptParameter(1);
   int nResult = FALSE;

    string sCurModule = GetModuleName();
    string sSubString = GetSubString(sCurModule,3,3);

   AurPostString("Current Module = " + sCurModule + " Substring = " + sSubString,10,5,5.0);

   switch(nPlanet)
   {
        case 2:
        {
            if(sSubString == "TEL")
                nResult = TRUE;
        } break;

        case 3:
        {
            if(sSubString == "NAR")
                nResult = TRUE;
        } break;

        case 4:
        {
            if(sSubString == "DXN")
                nResult = TRUE;
        } break;

        case 5:
        {
            if(sSubString == "OND")
                nResult = TRUE;
        } break;

        case 6:
        {
            if(sSubString == "DAN")
                nResult = TRUE;
        } break;

        case 7:
        {
            if(sSubString == "KOR")
                nResult = TRUE;
        } break;

        case 8:
        {
            if(sSubString == "TEL")
                nResult = TRUE;
        } break;

        case 9:
        {
            if(sSubString == "MAL")
                nResult = TRUE;
        } break;
   }

   return nResult;
}
