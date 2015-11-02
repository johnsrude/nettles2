/**
* NewSys(TM) Date Javascript Library
*
* This library provides utility functions for calculating and
* displaying date information from the perspective of the end
* user, as opposed to when NewSys rendered a document.
*
* @author Patrick O'Lone <polone@townnews.com>
* @copyright TownNews.com (C) 2003-2004
* @version 1.6
*/

/**
* Show today's date in a human readable format
*
* @param integer nID
* The unique ID that will determine "which" class will dynamically
* be updated. This is needed in case multiple instances occur.
*
* @access public
*/
function showCurrentDate( nID )
{
	// The textual name of days in the week

	var rgDayNames = new Array( "Sunday", "Monday", "Tuesday",
		                        "Wednesday", "Thursday",
		                        "Friday", "Saturday" );

    // The textual name of months of the year

    var rgMonthNames = new Array( "January", "February", "March", "April",
		                          "May", "June", "July", "August", "September",
		                          "October", "November", "December");
    
	var objDate = new Date();
	var nYear = (objDate.getYear() < 200) ? objDate.getYear() + 1900 : objDate.getYear();

    var szDate =  rgDayNames[objDate.getDay()];
	szDate += ", " + rgMonthNames[objDate.getMonth()];
	szDate += " " + objDate.getDate();
	szDate += ", " + nYear;

	document.write(szDate);
}

/**
* Show today's current time, based on the end-user's location
*
* This feature performs a real-time clock calculation in browsers
* that support DHTML features. Every 60 seconds, the clock will
* automatically update the timer. The feature is supported in
* IE 4.0+ and Netscape 6.0+. Other browsers will render a static
* time value.
*
* @param integer nID
* The unique ID that will determine "which" class will dynamically
* be updated. This is needed in case multiple instances occur.
*
* @access public
*/
function showCurrentTime( nID )
{
    var objDate = new Date();
    var nHours = ((objDate.getHours() < 1) ? objDate.getHours()+12 : objDate.getHours());
    var nTimeout = 60;
	var ampm = ((objDate.getHours() < 1) ? 1 : 0);
	
    var szTime = "" + ((nHours >12) ? nHours -12 : nHours);
    szTime += ((objDate.getMinutes() < 10) ? ":0" : ":") + objDate.getMinutes();
    if(ampm)
    {
    	     szTime += " A.M.";
    	}
    	else
    	{
         szTime += (nHours >= 12) ? " P.M." : " A.M.";
     }

	document.write(szTime);
}
