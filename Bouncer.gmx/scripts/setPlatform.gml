global.platform = iOS

switch(global.platform)
{
    case iOS: global.detail = GRAPHICLOW
         break;
    case html5: global.detail = GRAPHICLOWEST
         break;
    case Windows: global.detail = GRAPHICHIGHEST
         break;
    case Mac: global.detail = GRAPHICHIGHEST
         break;
    default: global.detail = GRAPHICMID
}
