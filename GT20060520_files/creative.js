/**
 * Display ads from Adsys
 *
 * @param string sAdsURL The base URL from Adsys to pull ad data from
 * @param string sDomain The domain name for the given suite of ads
 * @param array aAdSet The ads to be displayed
 *
 * @access public
 */
function displayAd(sAdsURL, sDomain, aAdSet)
{
   var adNumber = null;
   var adLink = "";
   var nUsed = 0;
   var aAds = new Array();
   var sAdUniqueURL = sSubURL = sAdsURL;
   var sAdsBaseURL = ""
   var sFlashVars = ""

   // Create the "superglobal" adsys array

   if (!document.adsys) {
      document.adsys = new Array();
   }

   // Remove "duplicate" ads

   for(nUsed = 0; nUsed < aAdSet.length; nUsed++) {
          if (!document.adsys[aAdSet[nUsed][1]]) {
                aAds[aAds.length] = aAdSet[nUsed];
          }
   }

   // Randomly find an ad

   if (aAds.length == 0) {
      document.write("<!-- Error: No ads assigned to position; problem with javascript file creation -->");
      return;
   } else if (aAds.length == 1) {
      adNumber = 0;
   } else {
      adNumber = Math.floor(Math.random()*aAds.length);
   }

   // Ad the adNumber to the list of ads we've seen

   document.adsys[aAds[adNumber][1]] = 1;

   // Assign the "base" URI for all operations

   sAdsBaseURL = "/creative/" + sDomain + "/" + aAds[adNumber][0];
   sAdsBaseURL += "/" + aAds[adNumber][1] + "." + aAds[adNumber][2];
   
   sAdUniqueURL += "/" + Math.floor(Math.random()*100000000) + sAdsBaseURL;
   sAdClickURL = "/c" + Math.floor(Math.random()*100000000);

   // Determine which "type" of ad we are going to render

   switch(aAds[adNumber][2]) {

       // For Flash files, build the following <object> tags

       case "swf":
          if (aAds[adNumber][5][0] != '') {

              // Build the URL for retrieving the ad element
              
              sSubURL += sAdClickURL;
              sSubURL += "/creative/" + sDomain + "/" + aAds[adNumber][6];
              sSubURL += "/" + aAds[adNumber][1] + "." + aAds[adNumber][2];
              
              // Add a Flash variable to 
              
              sFlashVars = "clickTAG=" + sSubURL + "%3Fr%3D" + aAds[adNumber][5][0];
              for(var x = 1; x < aAds[adNumber][5].length; x++) {
              	 sFlashVars += "&clickTAG"+(x+1)+"=" + sSubURL + "%3Fr%3D" + aAds[adNumber][5][x];
              }
              
              sAdUniqueURL += "?" + sFlashVars;
              
          }

          adLink = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" ';
          adLink += 'codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" ';
          adLink += 'width="' + aAds[adNumber][3] + '" height="' + aAds[adNumber][4];
          adLink += '" name="' + aAds[adNumber][1] + '" id="' + aAds[adNumber][1] + '">';
          adLink += '<param name="play" value="true">';
          adLink += '<param name="movie" value="' + sAdUniqueURL + '" />';
          adLink += '<param name="quality" value="high" />';
          adLink += '<param name="wmode" value="opaque" />';
          adLink += '<param name="FlashVars" value="' + sFlashVars + '" />';
          adLink += '<embed src="' + sAdUniqueURL + '" quality="high" ';
          adLink += 'FlashVars="' + sFlashVars + '" ';
          adLink += 'wmode="opaque" ';
          adLink += 'width="' + aAds[adNumber][3] + '" height="' + aAds[adNumber][4];
          adLink += '" name="' + aAds[adNumber][1];
          adLink += '" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer">';
          adLink += '</embed>';
          adLink += '</object>';
          break;

      // Format a javascript file URL for text-based ads

      case "js":
          adLink = '<scr'+'ipt type="text/javascript" src="' + sAdUniqueURL + '">';
          adLink += '</scr'+'ipt>';
          break;

      // The default is to assume image-style servering

      default:
          if (aAds[adNumber][3] != "") {
            if (aAds[adNumber][3].substring(0,7) == "mailto:") {
                adLink = '<a href="' + aAds[adNumber][3] + '">';
            } else {
                adLink = '<a href="' + sAdsURL + sAdClickURL + sAdsBaseURL + '?r=' + aAds[adNumber][3] + '"';
                if (aAds[adNumber][4] == "1") {
                   adLink += ' target="_blank"';
                }
                adLink += '>';
            }
         }

         adLink += '<img alt="*" border="0" src="' + sAdUniqueURL + '" />';

         if (aAds[adNumber][3] != "") {
            adLink += '</a>';
         }
   }

   document.write(adLink);
}
