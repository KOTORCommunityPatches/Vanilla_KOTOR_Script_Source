// a_playPerMov
// Param1 = # of superscript to call
// This super script plays any one of the Peragus movies depending on the param.
// 0 = Nothing, don't play this, okay?
// 1 = Opening text crawl
// 2 = Ebon Hawk Arrives
// 3 = Harbinger Arrives
// 4 = Turret Pop
// 5 = Ebon Hawk Escapes
// 6 = Escape Ends Light Side
// 7 = Escape Ends Dark Side
// CFA - 2/27/04

void main()
{
int nParam = GetScriptParameter(1);

switch (nParam)

    {
          case 1:        // When nParam == 1 Opening Text Crawl
          {
              PlayMovie ( "permov01" );
          }break;
          case 2:        // When nParam == 2 Ebon Hawk Arrives
          {
              PlayMovie ( "permov02" );
          }break;
          case 3:        // When nParam == 3 Harbinger Arrives
          {
              PlayMovie ( "permov03" );
          }break;
          case 4:        // When nParam == 4 Turret Pop
          {
              PlayMovie ( "permov04" );
          }break;
          case 5:        // When nParam == 5 Ebon Hawk Escapes
          {
              PlayMovie ( "permov05" );
          }break;
          case 6:        // When nParam == 6 Escape Ends Light Side
          {
              PlayMovie ( "permov06" );
          }break;
          case 7:        // When nParam == 7 Escape Ends Dark Side
          {
              PlayMovie ( "permov07" );
          }break;
    }
}

