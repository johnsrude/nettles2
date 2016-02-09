<%@ Page Title="The Nettles - Shows" Language="C#" MasterPageFile="~/NettlesMasterPage.master"
    AutoEventWireup="true" CodeFile="Shows.aspx.cs" Inherits="Shows" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="description" content="Come hear The Nettles! Shows past and future. Acoustic. Celtic. Folkadelic. Irish music from Corvallis, Oregon." />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div id="shows">
            <h2>Shows</h2>
            <ul>
                <li>
                    <h3>Saturday, February 27, 7:30pm, Eugene, OR</h3>
                    <a href="http://www.eugenefolklore.org/htm/efs-contradances.htm">Eugene Folklore Society Contra Dance</a>, Gym
                    of the former Dunn School, <a href="http://g.co/maps/c3m73">3411 Willamette St.</a>
                    Beginner&rsquo;s lesson at 7pm. Caller: William Watson</li>
                <li>
                    <h3>Thursday, March 10, 8pm, Corvallis, OR</h3>
                    <a href="http://corvallisfolklore.org/home/contradancing/">Corvallis Folklore Society Contra Dance</a>,
                    Gatton Hall, First Congregational Church, 4515 SW West Hills Road. Beginner&rsquo;s
                    lesson at 7:30pm. Caller: Woody Lane
                </li>
                <li>
                    <h3>Sunday, March 13, Milwaukie, OR</h3>
                    <a href="http://portlandroadhouse.org">Portland Roadhouse</a>.
                    Milwaukie Community Club, 10666 SE 42nd Ave. Caller: TBD
                </li>
                <li>
                    <h3>Thursday, March 17, 4pm, Corvallis, OR</h3>
                    St Patrick's Day Beer Garden at <a href="http://cloudandkellys.com/">McMenamins Corvallis Pub</a>, 
                    420 NW Third St., (541) 758-6044. </li>
                <li>
                    <h3>Thursday, March 17, 9pm, Corvallis, OR</h3>
                    St Patrick's Day Party at <a href="http://cloudandkellys.com/">Cloud & Kelly's Public House</a>, 130 SW First
                    St., 541.753.9900. </li>

                <li>
                    <h3>April 8-10, Fall Creek, OR</h3>
                    <a href="http://eugenefolklore.org/CascadeContras/">Cascade Contras</a> at  <a href="http://eugenefolklore.org/CascadeContras/venue/">Sky Camp</a>.
                    with <a href="http://www.notoriousfolk.com/index.html">Notorious</a>. Callers: Cis Hinkle, Lindsey Miller Dono
                </li>
                <li>
                    <h3>Friday, April 15, 7pm, Monterey, CA</h3>
                    House Concert.  Potluck at 6pm.
                </li>
                <li>
                    <h3>Saturday, April 16, Monterey, CA</h3>
                    <a href="http://montereycdc.webs.com">Monterey Country Dance Community's</a> 
                    <a href="http://montereycdc.webs.com/apps/calendar/showEvent?calID=3328920&eventID=259752668&next=showMonth%3fcalID%3d3328920%26year%3d2016%26month%3d3">Spring Fling</a>
                    with Joyride and BLAM! Callers: Jean Gibson-Gorrindo, Warren Blier 
                </li>

                <li>
                    <h3>Saturday, May 14, 6pm, Corvallis, OR</h3>
                    Second Saturdays benefit concert. Sunnyside Up Cafe, 116 NW Third St. $5 donation suggested.
                </li>
                <li>
                    <h3>Saturday, June 4, 8pm, Corvallis, OR</h3>
                    <a href="http://corvallisfolklore.org/home/contradancing/">Corvallis Folklore Society Contra Dance</a>,
                    Gatton Hall, First Congregational Church, 4515 SW West Hills Road. Beginner&rsquo;s
                    lesson at 7:30pm. Caller: Lindsey Miller Dono</li>

                <li>
                    <h3>July 8-10, Veneta, OR</h3>
                    <a href="http://oregoncountryfair.org">Oregon Country Fair</a> Dance Pavilion</li>
            </ul>
            <!-- ------------------------------------------------------------------------------------
                <li>
                    <h3>Saturday, January 9, 8pm, Portland, OR</h3>
                    <a href="http://www.portlandcountrydance.org/Dances.htm">Portland Country Dance Community</a>
                    Contra Dance, Fulton Community Center, 68 SW Miles. Beginner&rsquo;s lesson at 7:30pm.
                    Caller: Amy Carroll</li>
                <li>
                    <h3>Saturday, January 16, 8pm, Corvallis, OR</h3>
                    <a href="http://corvallisfolklore.org/home/contradancing/">Corvallis Folklore Society Contra Dance</a>,
                    Gatton Hall, First Congregational Church, 4515 SW West Hills Road. Beginner&rsquo;s
                    lesson at 7:30pm. Caller: William Watson</li>
                <li>
                    <h3>Saturday, December 19, 9pm, Corvallis, OR</h3>
                    <a href="http://www.bombsawaycafe.com/">Bombs Away Cafe</a> 
                    with <a href="http://eldiablitos.bandcamp.com">El Diabilitos</a>,
                    2527 NW Monroe Ave., Corvallis, OR 97330. (541) 757-7221</li>
                <li>
                    <h3>Friday, November 20, 8pm, Santa Rosa, CA</h3>
                    <a href="http://www.nbcds.org/">North Bay Country Dance Society</a>
                    Contra Dance, Monroe Hall, 1400 W. College Ave.. Lesson at 7:30pm. 
                    Caller: Frannie Marr </li>
                <li>
                    <h3>Saturday, November 21, Hayward, CA</h3>
                    <a href="https://sites.google.com/site/haywardcontra/home/tdogs-12-hour-twirl">12 Hour Twirl</a> Contra Dance,
                     Hayward Veterans Memorial Building, 22737 Main St., Hayward, CA with 
                    <a href="https://www.facebook.com/ContraSutra">Contra Sutra</a>.
                     Callers: Susan Petrick, Frannie Marr</li>
                <li>
                    <h3>Friday, September 19, 8:30pm, Corvallis, OR</h3>
                    "Halfway to St. Patrick's" party at <a href="http://cloudandkellys.com/">Cloud & Kelly's Public House</a>, 130 SW First
                    St., 541.753.9900. </li>
                <li>
                    <h3>Saturday, October 3, 8pm, Corvallis, OR</h3>
                    <a href="http://corvallisfolklore.org/">Corvallis Folklore Society</a> Contra Dance,
                    Gatton Hall, First Congregational Church, 4515 SW West Hills Road. Beginner&rsquo;s
                    lesson at 7:30pm. Caller: <a href="http://woodylanecaller.com/">Woody Lane</a></li>
                <li>
                    <h3>
                        Saturday, January 31, 8pm, Corvallis, OR</h3>
                    Contra Dance, Memorial Union Ballroom, Oregon State University. 
                    Caller: Noah Grunzweig
                </li>
                <li>
                    <h3>
                        Tuesday, March 17, 8pm, Corvallis, OR</h3>
                    St Patrick's Day Party at <a href="http://cloudandkellys.com/">Cloud & Kelly's Public House</a>, 130 SW First
                    St., 541.753.9900. </li>

                <li>
                    <h3>
                        Saturday, May 16, 8pm, Corvallis, OR</h3>
                    <a href="http://corvallisfolklore.org/">Corvallis Folklore Society</a> Contra Dance,
                    Gatton Hall, First Congregational Church, 4515 SW West Hills Road. Beginner&rsquo;s
                    lesson at 7:30pm. Caller: Kelsey Hartman</li>
                <li>
                    <h3>
                        Sunday, September 28, 2-7pm, Salem, OR</h3>
                    <a href="http://eradicationbymastication.org/">Invasive Species Cook-Off</a> at
                    <a href="http://www.zenithvineyard.com/">Zenith Vinyard</a></li>
                <li>
                    <h3>
                        Saturday, October 4, 8pm, Corvallis, OR</h3>
                    <a href="http://corvallisfolklore.org/">Corvallis Folklore Society</a> Contra Dance,
                    Gatton Hall, First Congregational Church, 4515 SW West Hills Road. Beginner&rsquo;s
                    lesson at 7:30pm. Caller: Tarka Ayres</li>
                <li>
                    <h3>
                        Saturday, December 13, 8pm, Portland, OR</h3>
                    <a href="http://www.portlandcountrydance.org/Dances.htm">Portland Country Dance Community</a>
                    Contra Dance, Fulton Community Center, 68 SW Miles. Beginner&rsquo;s lesson at 7:30pm.
                    Caller: Nan Evans</li>
                <li>
                    <h3>
                        2015</h3>
                </li>
                <li>
                    <h3>
                        Saturday, July 26</h3>
                    <a href="Contact.aspx">Private party</a> </li>
                <li>
                    <h3>
                        August 17 - 23, Lake Coeur D'Alene, ID</h3>
                    <a href="http://www.ladyofthelake.org/">Lady of the Lake</a> Family Week. Caller:
                    Susan Michaels</li>

                <li>
                    <h3>
                        Saturday, May 24, 9pm, Seattle, WA</h3>
                    <a href="http://www.nwfolklife.org">Northwest Folklife Festival </a>Contra Dance,
                    Seattle Center, Warren's Roadhouse. Caller: Lynn Ackerson </li>

                <li>
                    <h3>
                        Friday, March 7, 8pm, Eugene, OR</h3>
                    <a href="http://www.eugeneirishfest.org/">Eugene Irish Cultural Festival.</a>
                    Concert with Mick Moloney, Michelle Mulcahy and Dana Lyn at Beall Hall, University of Oregon.
                    </li>
                <li>
                    <h3>
                        Saturday, March 8, 5pm, Eugene, OR</h3>
                    <a href="http://www.eugeneirishfest.org/">Eugene Irish Cultural Festival.</a>
                     Concert at Sheldon High School, 2455 Willakenzie Rd.
                    </li>
                <li>
                    <h3>
                        Sunday, March 9, 5pm,  Milwaukie, OR</h3>
                     <a href="http://portlandroadhouse.org">Portland Roadhouse</a>.
                    Milwaukie Community Club, 10666 SE 42nd Ave. Caller: Lindsey Miller Dono.
                    </li>


                <li>
                    <h3>
                        Friday, March 28, 8pm, San Francisco, CA</h3>
                    <a href="http://www.bacds.org">Bay Area Country Dance Society</a> Contra Dance,
                    St. Paul's Presbyterian Church, 1399 43rd Ave., (corner of 43rd Ave. and Judah
                    St.). Beginner&rsquo;s lesson at 7:30pm. Caller: Jeremy Korr</li>
                <li>
                    <h3>
                        Saturday, March 29, 8pm, Palo Alto, CA</h3>
                    <a href="http://www.bacds.org">Bay Area Country Dance Society</a> Contra Dance,
                    First United Methodist Church, 625 Hamilton Ave. (Near Middlefield Rd), (upstairs
                    in the boxy Social Hall building on the corner at Byron St.). Beginner&rsquo;s lesson
                    at 7:30pm. Caller: Jeremy Korr</li>
                <li>
                    <h3>
                        Sunday, March 30, 4pm, Hayward, CA</h3>
                    <a href="https://sites.google.com/site/haywardcontra/">Traditional Dancers of the Golden
                        State</a> Contra Dance, Hill and Valley Club, 1808 B St. (Corner of B St
                    & Linden St). Caller: Jeremy Korr</li>



                <li>
                    <h3>
                        Saturday, September 7, 8pm, Corvallis, OR</h3>
                    <a href="http://corvallisfolklore.org/">Corvallis Folklore Society</a> Contra Dance, Gatton
                    Hall, First Congregational Church, 4515 SW West Hills Road. <a href="#cfs_directions">
                        (Directions.)</a> Beginner&rsquo;s lesson at 7:30pm. Caller: Andrea Nettleton.</li>
                <li>
                    <h3>
                        Friday-Sunday, September 20-22, Agassiz, BC</h3>
                    <a href="http://www.vcn.bc.ca/vcountry/chehalis">Chehalis Contra Dance Camp </a>
                    at the Chehalis Healing Retreat Centre. With <a href="http://www.latterdaylizards.com/">
                        The Latter Day Lizards</a>. Callers: Lisa Greenleaf and Will Mentor. </li>

                <li>
                    <h3>
                        Friday, January 24, 7:30pm, Corvallis, OR</h3>
                    <a href="http://corvallisfolklore.org//bestcellar/">Best Cellar Coffeehouse,</a>First United
                    Methodist Church, 1165 NW Monroe Ave.. Admission is on a sliding scale of $2 to
                    $10 (kids are free). </li>

                <li>
                    <h3>
                        September 7-9, Rollins, MT</h3>
                    <a href="http://www.missoulafolk.org/bearhug/Bear_Hug_2012.htm">Bear Hug Mountain Festival
                        Dance Camp</a>. Callers: Barb Kirchner and Tony Mates.</li>
                <li>
                    <h3>
                        Friday, September 21, 5-7pm, Corvallis, OR</h3>
                    <a href="http://cloudandkellys.com/">Cloud & Kelly's Public House</a>, 130 SW First
                    St., 541.753.9900. </li>

                <li>
                    <h3>
                        Saturday, September 29, 8pm, Santa Rosa, CA</h3>
                    <a href="http://www.nbcds.org/">North Bay Country Dance Society</a> "Challenging
                    Contra" Dance, Monroe Hall, 1400 W. College Ave.. Not for beginners. 
                    Caller: <a href="http://woodylanecaller.com/">Woody Lane</a> </li>
                <li>
                    <h3>
                        Sunday, September 30, 7pm, Ashland, OR</h3>
                        <a href="http://socontra.org/">Ashland Folk Music Club</a> contra dance, 
                        The Grove, 1195 E. Main St.
                        Beginner&rsquo;s lesson at 6:30pm.
                    Caller: <a href="http://woodylanecaller.com/">Woody Lane</a> </li>


                <li>
                    <h3>
                        Saturday, June 9, 8pm, Portland, OR</h3>
                    <a href="http://www.portlandcountrydance.org/Dances.htm">Portland Country Dance Community</a>
                    "Dusk 'til Done" Contra Dance, Norse Hall, 111 NE 11th (11th & Couch), 1 block North
                    of Burnside. Caller: <a href="http://woodylanecaller.com/">Woody Lane</a></li>

                <li>
                    <h3>
                        Saturday, May 19, 9am, Corvallis, OR</h3>
                    <a href="http://www.locallygrown.org/">Corvallis Farmer&rsquo;s Market </a>Acoustic
                    Concert, 1st & Jackson </li>
                <li>
                <h3>
                        Saturday, October 22, 8pm, Eugene, OR</h3>
                    <a href="http://www.efn.org/~efs">Eugene Folklore Society</a> Contra Dance, Cesar
                    E Chavez Elementary School, <a href="http://tinyurl.com/jhcya">1510 W 14th</a> (enter
                    from Taylor at 15th). Beginner&rsquo;s lesson at 7:30pm. Caller: Sue Baker</li>
                <li>
                    <h3>
                        Saturday, October 29, 7:30pm, Corvallis, OR</h3>
                    <a href="http://delalmarestaurant.com/">Del Alma Restaurant & Bar</a>, 136 SW Washington
                    Ave, Suite 102. (541) 753-2222. Free! </li>
                <li>
                    <h3>
                        Friday-Saturday, July 29-31, Springfield, OR</h3>
                    <a href="http://eugenefolklore.org/madness.html">MidSummer Madness</a> dance weekend
                    at <a href="http://www.livingwaterscamp.net/">Living Waters Camp</a>. Caller: <a
                        href="http://www.dancerhapsody.com/Calling/Calling.html">Seth Tepfer</a>
                </li>

                <li>
                    <h3>
                        Friday, May 13, 8pm, Vancouver, WA</h3>
                    <a href="http://www.contra-van-wa.org/">Contra in the Couve, </a><a href="http://hazeldellgrange.org/index.html">
                        Hazel Dell Grange,</a> 7509 NE Hazel Dell Ave. <a href="http://www.contra-van-wa.org/#Directions">
                            Directions.</a> Beginner&rsquo;s lesson at 7:30pm. Caller: Gordy Euler
                </li>

                <li>
                    <h3>
                        Saturday, April 30, 7:30pm, Salem, OR</h3>
                    Fifth Saturday Contra Dance, Unitarian Universalist Congregation of
                    Salem, 5090 Center St. NE, Salem, OR 97317 
                    Caller: Sue Baker</li>

                <li>
                    <h3>
                        Saturday, April 16, 7:30pm, Ashland, OR</h3>
                    Ashland Folklore Society Contra Dance, Bellview Elementary School, 1070 Tolman Creek
                    Road, Ashland; at intersection of Tolman Creek Road and Siskiyou Boulevard. Beginner&rsquo;s
                    lesson at 7pm, dance at 7:30pm. Caller: Ken Olcott </li>

                    <li>
                    <h3>Saturday, January 8, 6pm, Corvallis, OR</h3> 
                    <a href="http://www.alt2war.org/">Corvallis Alternatives to War</a> Second Saturday benefit concert for <a href="http://www.bradleymanning.org">Bradley Manning</a> . Sunnyside Up Cafe, 116 NW Third St. $5 donation suggested.
                    </li>


                    <h2 ALIGN=CENTER><font size=+2 COLOR="#0AD1A0">2011</font></h2>


                    Caller: <a href="http://www.kluberg.com/erikcalls.html">Erik Weberg</a>
                    Caller: <a href="http://woodylanecaller.com/">Woody Lane</a>
                    Caller: <a href="http://www.phxtmd.org/PTMD/Susan_Petrick.html">Susan Petrick</a>
                    Caller: <a href="http://www.dancerhapsody.com/Calling/Calling.html">Seth Tepfer</a> 
                    Caller: <a href="http://www.richgoss.com">Rich Goss</a>

                    <li>
                    <h3>Sunday, January 31, 4-7:30pm, Newport, OR</h3> "Krab Krack" crab buffet benefit for 
                    <a href="http://www.oregoncoast.history.museum/maritimecenter.html">Oregon Coast History Center</a>.
                    <a href="http://www.bestwesternoregon.com/hotels/best-western-agate-beach-inn/">The Best Western Agate Beach Inn,</a> 3019 N Coast Highway 541-265-9411
                    </li>

                    <li>
                    <h3>Saturday, February 6, 7-9pm, Corvallis, OR</h3> 
                    <a href="http://www.fireworksvenue.com">FireWorks Restaurant & Bar</a>
                     1115 South Third St (Hwy 99W next to First Alternative Coop), 541-754-6958.
                    </li>


                    <li>
                    <h3>Friday, March 5, 6-8pm, Corvallis, OR</h3> "
                    <a href="http://calendar.oregonstate.edu/event/36689/">Empty Bowls"</a>
                     benefit for OSU Emergency Food Pantry and World of Good. OSU Valley Football Center, 724 SW 30th St.
                    </li>

                    <li>
                    <h3>Wednesday, March 17 (St. Patrick&rsquo;s Day), 6-9pm, Corvallis, OR</h3> 
                    <a href="http://www.fireworksvenue.com">FireWorks Restaurant & Bar</a>
                     1115 South Third St (Hwy 99W next to First Alternative Coop), 541-754-6958.
                    </li>

                    <li>
                    <h3>Saturday, March 20, 7:30pm, Corvallis, OR</h3> Benefit for the Unitarian Universalist Fellowship,  2945 Northwest Circle Boulevard. 
                    </li>



                    <li>
                    <h3>Saturday, June 26, 9:30am, Corvallis, OR</h3> 
                    <a href="http://www.locallygrown.org/">
                    Corvallis Farmer&rsquo;s Market 
                    </a>
                    Acoustic Concert, 1st & Jackson
                    </li>


                    <li>
                    <h3>Saturday, March 13, (St. Paturday), 7-9pm, Portland, OR</h3> 
                    <a href="http://www.myspace.com/albertaSt.pub">Alberta St. Pub</a>, 
                     1036 NE Alberta St. 503-754-6958.
                    </li>


                    <li>
                    <h3>Friday, October 2, 7pm, Salem, OR</h3> Concert at
                    Loucks Auditorium, 
                    <a href="http://www.cityofsalem.net/Departments/Library">Salem Public Library</a>, 
                    <a href="http://www.cityofsalem.net/Departments/Library/About%20Us/Pages/CentralLibrary.aspx">585 Liberty St. SE</a>.  
                    </li>

                    <li>
                    <h3>Thursday, October 8, 6:30pm, Eugene, OR</h3> 
                    Benefit for 
                    <a href="http://www.bufordpark.org">Friends of Buford Park and Mt. Pisgah.</a>
                    Veterans Memorial Building ballroom, 1626 Willamette St.. $5-25 donation suggested.
                    </li>

                    <li>
                    <h3>Saturday, October 10, 1:30pm, Salem, OR</h3> Concert at
                    <a href="www.lifesourcenaturalfoods.com">LifeSource</a> Food Fair, 2649 Commercial St SE. 503-361-7973. Free!
                    </li>


                    <li>
                    <h3>Saturday, October 17, 7:30pm, Talent, OR</h3> 
                    Ashland Folklore Society Contra Dance, Talent Middle School Gym, 
                    <a href="http://tinyurl.com/mzyr58">102 Christian Ave.</a>
                    Beginner&rsquo;s lesson at 7pm, dance at 7:30pm. 
                    Caller: Susan Petrick
                    </li>

                    <li>
                    <h3>Saturday, November 21, 7:30pm,  Yachats, OR</h3> 
                    Opening for 
                    <a href="http://www.kevinburke.com/">Kevin Burke</a>. 
                    Acoustic Celtic worldbeat folkadelica at 
                    <a href="http://www.friendsyachatscommons.com/events.html">
                    Yachats Celtic Celebration
                    </a>,
                    Yachats Commons.


                    <li>
                    <h3>Saturday, November 21, noon,  Yachats, OR</h3> 
                    Workshop: "Playing Music for Irish Dancers",  
                    <a href="http://www.friendsyachatscommons.com/events.html">
                    Yachats Celtic Celebration
                    </a>,
                    Yachats Commons.

                    <li>
                    <h3>Saturday, November 21, 1-2pm,  Yachats, OR</h3> 
                    Irish ceili, led by 
                    <a href="http://www.SandAIrishEntertainment.com">Sam Keator</a>,  
                    <a href="http://www.friendsyachatscommons.com/events.html">
                    Yachats Celtic Celebration
                    </a>,
                    Yachats Commons.


                    <li>
                    <h3>Sunday, September 6, 6pm, Corvallis, OR</h3><a href="http://www.southtownSt.party.com">Southtown St. Party</a> benefit for "That&rsquo;s My Farmer!" food assistance program. 
                    <a href="http://www.fireworksvenue.com">FireWorks Restaurant & Bar</a>
                     1115 South Third St (Hwy 99W next to First Alternative Coop), 754-6958. Suggested donation $5-10.


                    <li>
                    <h3>Saturday, May 30, 8pm, Newport, OR</h3> 
                    Contra Dance, West Gym of Newport High School on Fourth and Eads.
                    Beginner&rsquo;s lesson at 7:30pm.    


                    <li>
                    <h3>Saturday, March 14, 9pm, Eugene, OR</h3> <strong>Saint Paturday Party!</strong><br>
                    Pre-Saint Patrick&rsquo;s Day celebration at 
                    <a href="http://www.sambonds.com/">Sam Bonds Garage</a>, 407 Blair Blvd. 
                    Phone: (541)431-6603.  $5.
                    </li>


                    <li>
                    <h3>Saturday, December 5, 8pm, Corvallis, OR</h3> 
                    <a href="http://www.fireworksvenue.com">FireWorks Restaurant & Bar</a>
                     1115 South Third St (Hwy 99W next to First Alternative Coop), 754-6958. Free!
                    </li>

                    <li>
                    <h3>Tuesday, January 20, 7-8:30pm, Corvallis, OR</h3> Benton County Democrats Inaugural Ball Contra Dance, Corvallis Senior Center, 2601 NW Tyler St. (at 27th). Caller: Todd Silverstein.
                    </li>

                    <li>
                    <h3>Sunday, January 31, 4-7:30pm, Newport, OR</h3> "Krab Krack" benefit for Oregon Coast History Center. <a href="http://www.bestwesternoregon.com/hotels/best-western-agate-beach-inn/">The Best Western Agate Beach Inn,</a> 3019 N Coast Highway 541/265-9411
                    </li>



                    <li>
                    <h3>Saturday, February 14, 8-10:30pm, Newport, OR</h3> <a href="http://nanasirishpub.com">Nana&rsquo;s Irish Pub</a>, 613 NW 3rd St.. Free, but tips welcome.
                    </li>

                    <li>
                    <h3>Saturday, February 21</h3>
                    <a href ="Contact.aspx">Private party</a>
                    </li>


                    <li>
                    <h3>Wednesday, August 6, noon, Corvallis, OR</h3> Memorial Union Brick Courtyard, Oregon State University campus. Free.
                    </li>

                    <li>
                    <h3>Sunday, August 24, 1pm, Corvallis, OR</h3><a href="http://www.southtownSt.party.com">Southtown St. Party</a> benefit for South Corvallis Food Bank,  
                    <a href="http://www.fireworksvenue.com">FireWorks Restaurant & Bar</a>
                     1115 South Third St (Hwy 99W next to First Alternative Coop), 754-6958. Suggested donation $5-10.

                    <li>
                    <h3>Sunday, September 14, 2:40-3:40pm, Corvallis, OR</h3> 
                    <a href="http://www.bcdems.net/node/1266">Rock for Change</a> benefit for the Benton County Democrats. 
                    Avery Park Thompson Grove shelter.  Benefit goes noon to 9pm.

                    <li>
                    <h3>Saturday, March 15, 9pm, Eugene, OR</h3> <strong>Saint Paturday Party!</strong><br>
                    <a href="pers.html#laura">Laura</a>, 
                    <a href="pers.html#kevin">Kevin</a> 
                    and
                    <a href="pers.html#brian">Brian</a> of 
                    <a href="http://www.musicfeatures.com/highsierra/calobo/info/">
                    Calobo
                    </a> .
                    Pre-Saint Patrick&rsquo;s Day celebration at 
                    <a href="http://www.sambonds.com/">Sam Bonds Garage</a>, 407 Blair Blvd. 
                    Phone: (541)431-6603.  $5.

                    <li>
                    <h3>Friday, March 21, 8pm, Corvallis, OR</h3> 
                    Concert with reading of Irish tales by Peg Elliott Mayo.
                    <a href="http://www.artcentric.org">The Art Center</a>, 
                    700 SW Madison. 541.754.1551 Free for members, $10 for others.

                    <li>
                    <h3>Saturday, March 22, 8:30pm, Corvallis, OR</h3> 
                    <a href="http://www.bigriverrest.com/">Big River</a>, 
                    101 NW Jackson, 541.757.0694. Free!

                    <li>
                    <h3>Friday, January 25, 8pm, Corvallis, OR</h3> 
                    <a href="http://www.caair.org/">
                    CAAIR
                    </a> 
                    Contra Dance to help Iraqi refugees. Gatton Hall, First Congregational Church, 4515 SW West Hills Road. 
                    <a href="#cfs_directions">(Directions.)</a>
                    Beginner&rsquo;s lesson at 7:30pm.    
                    Caller: Holly Berry


                    <li>
                    <h3>Saturday, October 6, 6pm, Newport, OR</h3> 
                    The Nettles Trio: 
                    <a href="pers.html#laura">Laura</a>, 
                    <a href="pers.html#kevin">Kevin</a> 
                    and
                    <a href="pers.html#ankush">Ankush</a>. 
                    "Culture Shock!" festival, 
                    <a href="http://www.coastarts.org/pac/">Newport Performing Arts Center</a>, 
                    777 W Olive St.. 

                    <li>
                    <h3>Wednesday, August 15, 7pm, Monmouth, OR</h3> 
                    "Wednesday in the Park" concert series, Main St. Park, Main and Warner.
                    </li>

                    <li>
                    <h3>Friday, October 6, 8:30pm, Glen Echo, MD</h3>
                    <a href="http://www.fridaynightdance.org">The Friday Night Dance at Glen Echo Park</a> 
                     with <a href="http://kgbmole.com/marydave.html">Dave Bartley</a>.
                    Caller: <a href="http://www.geocities.com/barbkirchner2003/index.html">
                    Barb Kirchner</a> 

                    <li>
                    <h3>Saturday, October 7, 8pm, Shepherdstown, WV</h3>
                    <a href="http://www.contradancers.com/shepherdstown/dance.htm">Shepherdstown Country Dance</a> 
                     with <a href="http://kgbmole.com/marydave.html">Dave Bartley</a>.
                    Caller: <a href="http://www.geocities.com/barbkirchner2003/index.html">
                    Barb Kirchner</a> 

                    <li>
                    <h3>Sunday, October 8, 7pm, Glen Echo, MD</h3>
                    <a href="http://ceimd.com/php/public.php?Org=fsgw&ProgramID=5&NoTitle=1">The Folklore Society of Greater Washington contra dance</a> 
                     with <a href="http://kgbmole.com/marydave.html">Dave Bartley</a>.
                    Caller: <a href="http://www.geocities.com/barbkirchner2003/index.html">
                    Barb Kirchner</a> 

                    <li>
                    <h3>Monday, October 9, 8pm, Asheville, NC</h3>
                    <a href="http://www.oldfarmersball.com">Monday Contradance at The Grey Eagle</a> 
                     with <a href="http://kgbmole.com/marydave.html">Dave Bartley</a>.
                    Caller: <a href="http://www.geocities.com/barbkirchner2003/index.html">
                    Barb Kirchner</a> 

                    <li>
                    <h3>Tuesday, October 10, 8pm, Winston-Salem, NC</h3>
                    <a href="http://members.aol.com/contrac925/fiddlebow.html">Contra dance at the Vintage Theatre</a> 
                     with <a href="http://kgbmole.com/marydave.html">Dave Bartley</a>.
                    Caller: <a href="http://www.geocities.com/barbkirchner2003/index.html">
                    Barb Kirchner</a> 

                    <li>
                    <h3>Wednesday, October 11, 8pm, Blacksburg, VA</h3>
                    <a href="http://www.twodogwaltz.com/contradance.html">Blacksburg Contradance</a> 
                     with <a href="http://kgbmole.com/marydave.html">Dave Bartley</a>.
                    Caller: <a href="http://www.geocities.com/barbkirchner2003/index.html">
                    Barb Kirchner</a> 

                    <li>
                    <h3>Friday, October 13, 8pm, Chapel Hill, NC</h3>
                    <a href="http://www.tcdancers.org/schedule.html">Triangle Country Dancers contra dance</a> 
                     with <a href="http://kgbmole.com/marydave.html">Dave Bartley</a>.
                    Caller: <a href="http://www.geocities.com/barbkirchner2003/index.html">
                    Barb Kirchner</a> 

                    <li>
                    <h3>Saturday, October 14, 8pm, River Falls, SC</h3>
                    <a href="http://www.harvestmoonfolk.org/schedule.htm">Harvest Moon Folk Society contra dance</a> 
                     with <a href="http://kgbmole.com/marydave.html">Dave Bartley</a>.
                    Caller: <a href="http://www.geocities.com/barbkirchner2003/index.html">
                    Barb Kirchner</a> 

                    <li>
                    <h3>Friday-Sunday, September 23-25, Gibsons, BC</h3> 
                    <a href="http://www.vcn.bc.ca/vcountry/chehalis">
                    Chehalis Contra Dance Camp.
                    </a>
                    at YMCA Camp Elphinstone on British Columbia&rsquo;s Sunshine Coast.
                    The Nettles with 
                    <a href="http://musaique.com/lizards/">The Latter Day Lizards.</a> 
                    Callers: 
                    <a href="http://www.dancerhapsody.com/index.cfm?FuseAction=Bio">Seth Tepfer</a> 
                    and Charlie Fenton.
                    FMI: <a href="mailto:ChehalisDance@yahoo.com">
                    ChehalisDance@yahoo.com
                    </a>
                    </li>


                    <li>
                    <h3>Saturday, December 8, 8pm, Portland, OR</h3> 
                    <a href="http://www.portlandcountrydance.org/Dances.htm">Portland Country Dance Community</a> 
                    Contra Dance, Norse Hall, 111 NE 11th (11th & Couch), 1 block North of Burnside.
                    </a> 
                    Beginner&rsquo;s lesson at 7:30pm. 
                    Caller: Elinor Preston



                    <li>
                    <h3>Friday-Sunday, July 15-17, Juneau, AK</h3>
                    <a href="http://www.ptialaska.net/~ddonalds/campdamp05.html">
                    Camp DAMP.
                    </a>
                    To register, write, call or email 
                    <a href="mailto:eileenh@yahoo.com">
                    Eileen Hosey, 
                    </a>
                    907-789-2912, 2416 Ka-See-An Drive, Juneau, AK 99801.


                    <li>
                    <h3>Wednesday, June 22, noon, Corvallis, OR</h3>  Memorial Union Brick Courtyard, Oregon State University campus. Free.
                    <li>
                    <h3>Thursday, May 26, 8-11pm, Seattle, WA</h3>
                    <a href="http://www.seattledance.org/contra/lake.city.community.center.html">
                    Lake City Contra Dance
                    </a>, 
                    <a href="http://www.seattledance.org/map/lake.city.community.center.html">
                    Lake City Community Center, 12531 - 28th Ave NE
                    </a>. 
                    Start <a href="http://www.nwfolklife.org">
                    Northwest Folklife Festival
                    </a>
                    early! 
                    Caller: <a href="http://www.kluberg.com/erikcalls.html">Erik Weberg</a>

                    <li>
                    <h3>CANCELLED: Saturday, May 7, 7pm, Albany, OR</h3>
                    <a href="pers.html#laura">Laura</a>, 
                    and
                    <a href="pers.html#kevin">Kevin</a>
                    will do a 20 minute American Oldtime music set at
                    Flinn&rsquo;s Old-Time Vaudeville Show, 
                    <a href="http://www.flinns.com">
                    Flinn&rsquo;s Living History Theater,
                    </a>
                    222 First Ave. SW, (541)928-5008 or 1-800-636-5008.  Dinner & show at 6:15pm, Show only at 7pm. FMI:
                    <a href="mailto:info@flinns.com">info@flinns.com</a>

                    <li>
                    <h3>Friday-Sunday, February 18-20, Corvallis, OR</h3> 
                    The
                    <a href="http://cfs.peak.org">
                    Corvallis Folklore Society 
                    </a>
                    presents its first
                    <a href="http://www.quiteapair.us/cfs/weekend/">
                    Urban Contra Dance Camp
                    </a>
                     with The Nettles and Abracadabra (Deb Kirkland, Anita Anderson, and 
                    <a href="http://www.kgbmole.com/marydave.html">
                    Dave Bartley
                    </a>
                    ). Callers: Susan Petrick and
                    <a href="http://www.kluberg.com/erikcalls.html"> 
                    Erik Weberg
                    </a>
                    .
                    Gatton Hall, First Congregational Church, 4515 SW West Hills Road. 
                    <a href="#cfs_directions">(Directions.)</a> 
                    Home hospitality will be provided on a first-come, first-serve basis.
                    For more information, email 
                    <a href="mailto:cfs_dance_weekend@yahoo.com">
                    cfs_dance_weekend@yahoo.com
                    </a>
                    .

                    <li>
                    <h3>Sunday, November 14, 2-3:30pm,  Yachats, OR</h3> 
                    The Nettles Trio: 
                    <a href="pers.html#laura">Laura</a>, 
                    <a href="pers.html#kevin">Kevin</a> 
                    and
                    <a href="pers.html#ankush">Ankush</a>.
                    Acoustic Celtic worldbeat folkadelica at 
                    <a href="http://www.friendsyachatscommons.com/celtic_festival.htm">
                    Yachats Celtic Music Festival
                    </a>
                    ,
                    Yachats Commons.


                    </font size=+1><h3>Saturday, August 21, 7pm, Papaaloa, HI</h3>  
                    <a href="pers.html#laura">Laura</a> and
                    <a href="pers.html#kevin">Kevin</a> 
                    join David Sierra and Steve Ryan of The Hilobillies for a contra dance at
                    the Papaaloa Community Center 24 miles N of Hilo.
                    Directions: North from Hilo, pass milemarker 24,
                    turn right at next intersection,
                    (onto Papaaloa Ave),
                    downhill to stop sign, turn right,
                    1/2 mile to Community Center on left. Potluck at 5pm. Caller: 
                    <a href = "mailto:cindy@contracaller.com">Cindy Holmes</a> 
                    FMI: Call Cindy at 808.938.7310 or 
                    <a href = "mailto:cindy@contracaller.com">email</a> 
                    . Free!
                    <li>

                    <h3>Thursday, January 16, noon, Corvallis, OR</h3> Worldbeat jam with tabla player
                    <a href="pers.html#ankush">Ankush Vimawala</a>. 
                    Memorial Union Lounge, Oregon State University campus. Free.

                    <h3>Friday, March 6, 7:30pm, Corvallis, OR</h3> Worldbeat jam with tabla player
                    <a href="pers.html#ankush">Ankush Vimawala</a>. 
                    <a href="http://osumu.org/events/escape2.htm">escape</a> night club, 
                    OSU campus, across St. from Valley Library next to Waldo on the brick mall. 740-0469.


                    <h2 ALIGN=CENTER><font size=+2 COLOR="#0AD1A0">May</font></h2>

                    <h3>Saturday, May 10, 8 pm, Salem, OR</h3>
                    Laura and Kevin of The Nettles with Tim Crosby, Brad Johnson, Roy Rowland and Jon Neff, 
                    Tom Creelan Memorial Contra Dance, Montag Center, 12th St. between State and Bellevue, 
                    Willamette University 
                    (
                    <a href="http://www.willamette.edu/wu_map_print.pdf">Map</a>
                    ). Beginner&rsquo;s lesson at 7:30pm.  Caller: Todd Silverstein of The Nettles
                    <li>

                    <h3>Thursday, May 15, 7 pm, Corvallis, OR</h3>
                    Laura and Kevin of The Nettles host the 
                    <a href="http://cfs.peak.org">Corvallis Folklore Society</a>
                    "Local Folk" open mic show, outside the 
                    <a href="http://www.caclbca.org/cac_about.htm">Corvallis Art Center</a>,
                    700 SW Madison, south of Central Park
                    . Come a little early to sign up for a spot.
                    <li>

                    <h3>Saturday, June 21, 3-5pm, Corvallis, OR</h3>
                    <a href="http://www.marys-river-wc.peak.org/events/index.htm">
                    Summer Celebration; Watersheds, Wetlands, and Wineries
                    </a>. Proceeds to benefit the Mary&rsquo;s River Watershed Council.
                    <a href="http://www.tyeewine.com">
                    Tyee Wine Cellars
                    </a>
                    , 26335 Greenberry Rd.- 7 miles south of Corvallis.
                    <a href="http://www.tyeewine.com/pics/mapbrown.JPG">
                    Map.
                    </a> 
                    Tickets will be on sale at the gate, and at Grass Roots Books in advance.
                    <li> 

                    <h3>Wednesday, July 16, 7pm, Monmouth, OR</h3> 
                    The Nettles Trio: 
                    <a href="pers.html#laura">Laura</a>, 
                    <a href="pers.html#kevin">Kevin</a> 
                    and
                    <a href="pers.html#ankush">Ankush</a>. 
                    Celtic worldbeat for "Wednesday in the Park" concert series, Main St. Park, Main and Warner.
                    <li>

                    <h3>Friday-Saturday, July 25-26, Port Orchard, WA</h3> 
                    <a href="http://www.writersweekend.com/page0003.html">
                    Writer&rsquo;s Weekend
                    </a>
                    . An affordable way to get quality time with writers (Greg Bear, Mercedes Lackey, Lindsay McKenna, Emma Bull,...) 
                    and other publishing industry professionals. 
                    &lsquo;No Shoes Required&rsquo; conversation, food, music and just plain hanging out. 
                    Learn about writing, eat BBQ, play, sit in the sun...Meet your favorite writers!...schmooze!
                    The Nettles will be hosting open jams and jamming Friday night and Saturday morning.  
                    Then we&rsquo;ll do a concert around Saturday noon.  

                    For more info email 
                    <a href="mailto:info@AnnaMoss.com">Anna Moss</a> or call (360) 537-1000 or (425) 378-3950 
                    <li>


                    <h2 ALIGN=CENTER><font size=+2 COLOR="#0AD1A0">September</font></h2>
                    <h3>Saturday, September 13, 8pm, Lacey, WA</h3> 
                    <a href="http://www.stmartin.edu/alumni/septoberfest.htm">
                    Septoberfest
                    </a>, 
                    Saint Martin&rsquo;s College Pavilion. 
                    <font size=-1>Directions: From 1-5 north (Seattle): Take Exit 109 (Martin Way). Turn right onto Martin Way. 
                    Turn left onto College St.. Turn left onto Pacific Ave.. Turn left into Saint Martin&rsquo;s Pavilion. 
                    From 1-5 south (Olympia/Portland): Take Exit 108 (College St.). Turn right onto College St.. 
                    Turn left onto Pacific Ave.. Turn left into Saint Martin&rsquo;s Pavilion.</font>
                    <li>

                    <h3>Thursday, February 19, 8pm, Portland, OR</h3>
                    Reed Contra Dance, Reed College Student Union, 3203 SE Woodstock Blvd.
                    <a href="http://www.reed.edu/~holmanz/Contra/directionsframes.html">(Directions.)</a>
                    Beginner&rsquo;s lesson at 7:30pm. 
                    Caller: William Watson
                    <li>

                    <h3>Sunday, March 14, 5pm, Eugene, OR</h3> 
                    <a href="http://www.eugeneirishfest.com">
                    Eugene Irish Cultural Festival
                    </a>
                    concert, 
                    <a href="http://www.cozmicpizza.com/">
                    Cozmic Pizza
                    </a>,
                    8th Ave and Charnelton St.
                    <li>


                    <li>
                    <h3>Sunday, June 6, noon-1pm, Philomath, OR</h3> Worldbeat jam with tabla player
                    <a href="pers.html#ankush">Ankush Vimawala</a>.<br> 
                    <a href="http://www.jambasetickets.com/evinfo.php?refnug=inhouse&sid=&eventid=4709">Old Peak Jam</a>, 23161 Old Peak Road, Philomath. FMI: 541-929-7742

                    <li>
                    <h3>Saturday, January 15, 8pm, Tacoma, WA</h3> 
                    <a href="http://www.seattledance.org/contra/tacoma.html">
                    Tacoma Old Time Dance 
                    </a>, 
                    Wells Hall, 310 North K St..
                    <a href="http://www.seattledance.org/contra/tacoma.html">(Directions)</a>
                    Beginner&rsquo;s lesson at 7:30.  
                    Caller: Elinor Preston.

                    <li>
                    <h3>Saturday, September 9, 2:30-4:30pm, Eugene, OR</h3> 
                    <a href="http://www.eugenecelebration.com/">Eugene Celebration</a> 
                     Contra Dance, Tango Center, 
                    194 W.Broadway.
                    Caller: William Watson

                    <li>
                    <h3>Saturday, March 17, 9:30pm, Eugene, OR</h3> <strong>Saint Patrick&rsquo;s Party!</strong><br>
                    <a href="pers.html#laura">Laura</a>, 
                    <a href="pers.html#kevin">Kevin</a> 
                    and
                    <a href="pers.html#brian">Brian</a> of 
                    <a href="http://www.musicfeatures.com/highsierra/calobo/info/">
                    Calobo
                    </a> .
                    Saint Patrick&rsquo;s Day celebration at 
                    <a href="http://www.sambonds.com/">Sam Bonds Garage</a>, 407 Blair Blvd. 
                    Phone: (541)431-6603.  $5.


                    <li>
                    <h3>Friday, May 11, 8-9pm, Salem, OR</h3>
                    The Nettles Duo with Todd Silverstein will do an acoustic set at the 
                    <strong>Hayloft Concerts</strong>, 5304 Center St. NE. Donation requested.
                    <strong>Directions</h3>
                    From I-5 south, take Kuebler Blvd. Exit. 
                    Turn right at the exit and proceed on Kuebler for about 5 miles. (it turns into Cordon Rd.)
                    Turn right onto Center St. (stoplight). 
                    Look for small golf course. (Auburn Center Golf). 
                    Go to the 3rd house past the Golf Course. 
                    Turn in the driveway and park in the pasture or don&rsquo;t turn in the driveway and park on the St. or at the golfcourse.
                    <br>FMI: <a href="mailto:sharonmooree@comcast.net">Sharon Moore</a>,  sharonmooree@comcast.net,  503-364-6713.


                    <li>
                    <h3>Saturday, June 30, 8pm, Newport, OR</h3> 
                    Contra Dance, West Gym of Newport High School on Fourth and Eads.
                    Beginner&rsquo;s lesson at 7:30pm.    
                    Caller: Susan Petrick

                    <li>
                    <h3>Friday-Saturday, July 24-26, <a href="http://www.campwhitebranch.com/">Camp White Branch</a>, OR</h3> 
                    <a href="http://www.efn.org/~efs/MidsummerMadness.html">MidSummer Madness</a> dance weekend. 
                    Caller: Seth Tepfer

            <a id="cfs_directions" />
            <p>
                <strong>Directions to Gatton Hall, First Congregational Church in Corvallis</strong>
                Take Western Blvd. west. After crossing intersection at 35th (traffic light) look
                for split in road. Left curve is continuation of Western Blvd. Straight ahead is
                West Hills Road. GO STRAIGHT! Road is very narrow and speed limit is 25 mph. Church
                is about 1/3 mile down road on your right. Entrance is on north side of the church
                from the parking lot.
            </p>
            -->
        </div>
    </div>
    <div id="sidebar">
        <div id="past_shows">
            <h3>Past Shows</h3>
            <ul>
                <li><a href="http://socontra.org/">Ashland Folk Music Club</a> contra dance </li>
                <li><a href="http://www.bacds.org/sw">Bay Area Country Dance Society Spring Dance Weekend</a>,
                    Aptos, CA </li>
                <li><a href="http://www.well.com/user/cwj/bacds/">Bay Area Country Dance Society </a>
                    contra dance </li>
                <li><a href="http://www.missoulafolk.org/bearhug/Current_Bear_Hug.htm">Bear Hug Mountain
                    Festival Dance Camp</a>, Rollins, MT </li>
                <li>Benton County Fair, Corvallis, OR </li>
                <li><a href="http://www.twodogwaltz.com/contradance.html">Blacksburg Contradance</a>,
                    VA</li>
                <li><a href="http://www.ptialaska.net/~ddonalds/campdamp05.html">Camp DAMP</a>, Juneau,
                    AK </li>
                <li>Celtic Heritage Festival, Eugene, OR </li>
                <li><a href="http://www.vcn.bc.ca/vcountry/chehalis">Chehalis Contra Dance Camp</a>,
                    Gibsons, BC </li>
                <li><a href="http://www.quiteapair.us/cfs/weekend/">Corvallis Contra Dance Weekend</a>,
                    Corvallis, OR </li>
                <li><a href="http://corvallisfolklore.org/">Corvallis Folklore Society</a> contra dance
                </li>
                <li>Corvallis Fall Festival, Corvallis, OR </li>
                <li>"Culture Shock!" festival, <a href="http://www.coastarts.org/pac/">Newport Performing
                    Arts Center</a> Newport, OR </li>
                <li><a href="http://www.davinci-days.org/">DaVinci Days</a>, Corvallis, OR </li>
                <li><a href="http://www.eugenefolklore.org/">Eugene Folklore Society</a> contra dance</li>
                <li><a href="http://www.eugeneirishfest.org/">Eugene Irish Cultural Festival</a></li>
                <li><a href="http://www.fridaynightdance.org">Glen Echo, MD Friday Night Dance</a>
                </li>
                <li><a href="http://www.oldfarmersball.com">Monday Contradance at The Grey Eagle, Ashville,
                    NC</a></li>
                <li><a href="http://www.harvestmoonfolk.org/schedule.htm">Harvest Moon Folk Society
                    contra dance</a>, River Falls, SC</li>
                <li><a href="http://www.ladyofthelake.org/">Lady of the Lake</a> Family Week, Henderson,
                    ID</li>
                <li><a href="http://eugenefolklore.org/madness.html">MidSummer Madness</a>, Springfield,
                    OR</li>
                <li><a href="http://www.geocities.com/montereycdc">Monterey Country Dance Community</a>
                    contra dance </li>
                <li><a href="http://www.nbcds.org/">North Bay Country Dance Society</a> contra dance
                </li>
                <li><a href="http://www.nwfolklife.org">Northwest Folklife Festival</a>, Seattle, WA
                </li>
                <li>Oregon Bach Festival, Eugene, OR </li>
                <li><a href="http://www.oregoncountryfair.org">Oregon Country Fair</a>, Veneta, OR
                </li>
                <li>Oregon Folklife Festival, Corvallis, OR </li>
                <li>Oregon Senate Opening Ceremony, Statehouse, Salem, OR </li>
                <li><a href="http://www.portlandcountrydance.org/Dances.htm">Portland Country Dance
                    Community</a> Dusk to Dawn Dance</li>
                <li><a href="http://www.portlandcountrydance.org/Dances.htm">Portland Country Dance
                    Community</a> contra dance</li>
                <li><a href="http://portlandroadhouse.org">Portland Roadhouse</a></li>
                <li>Scottish Heritage Festival, Salem, OR </li>
                <li><a href="http://seattledance.org/contra/">Seattle contra dance community</a> contra
                    dance </li>
                <li><a href="http://www.stmartin.edu/alumni/septoberfest.htm">Septoberfest</a>, Saint
                    Martin&rsquo;s College, Lacey, WA </li>
                <li><a href="http://www.contradancers.com/shepherdstown/dance.htm">Shepherdstown, WV
                    Country Dance</a></li>
                <li><a href="http://www.tcdancers.org/schedule.html">Triangle Country Dancers contra
                    dance</a>, Chapel Hill, NC</li>
                <li>Willamette Valley Folk Festival, Eugene, OR </li>
                <li><a href="http://www.vcn.bc.ca/vcountry/">Vancouver (BC) Country Dance</a> contra
                    dance </li>
                <li><a href="http://members.aol.com/contrac925/fiddlebow.html">Contra dance at the Vintage
                    Theatre</a>, Winston-Salem, NC</li>
                <li><a href="http://www.wintergrass.com">Wintergrass Bluegrass Festival</a>, Tacoma,
                    WA </li>
                <li><a href="http://www.yachatscelticmusicfestival.com">Yachats Celtic Music Festival</a>,
                    Yachats, OR </li>
                <li>Artists in Residence, Yaquina View Elementary School, Newport, OR </li>
                <li><strong>pub and coffeehouse shows, private parties, weddings, etc.</strong></li>
                <li>2MCE-FM, Bathurst, NSW, AUSTRALIA</li>
                <li>Coral Coast Community Radio, Bundaberg, Queensland, AUSTRALIA</li>
                <li>CKPC-FM, Brantford, Ontario, CANADA</li>
                <li>CKJS, Winnipeg, Manitoba, CANADA </li>
                <li>Gravity FM, Horncastle, Lincolnshire, ENGLAND</li>
                <li>Heritage FM, Perth, AUSTRALIA</li>
                <li>KASU, Memphis, TN</li>
                <li>KBOO, Portland, OR</li>
                <li>KBVR, Corvallis, OR</li>
                <li>KEOS, College Station, TX</li>
                <li>KFAI, Minneapolis, MN</li>
                <li>KLCC, Eugene, OR</li>
                <li>KOPN, Columbia, MO</li>
                <li>KRVM, Eugene, OR</li>
                <li>KSER, Everett, WA</li>
                <li>KVMR-FM, Nevada City, CA</li>
                <li>KXCI, Tucson, AZ</li>
                <li>Radio ZuSa, Luneburg, Niedersachsen, GERMANY</li>
                <li>RDP, (national), PORTUGAL</li>
                <li>RTR-FM, Perth, AUSTRALIA</li>
                <li>Southern FM, Melbourne, AUSTRALIA</li>
                <li>WESS, East Stroudsburg, PA</li>
                <li>WDIY-FM, Allentown, PA</li>
                <li>WMPG, Portland, ME</li>
                <li>WNMC, Traverse City, MI</li>
                <li>WPSC, Wayne, NJ</li>
                <li>WVUD, Newark, DE</li>
                <li>WYMS, Milwaukee, WI</li>
            </ul>
        </div>
    </div>
</asp:Content>
