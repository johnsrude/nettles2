<%@ Page Title="The Nettles - Store" Language="C#" MasterPageFile="~/NettlesMasterPage.master" AutoEventWireup="true"
    CodeFile="Store.aspx.cs" Inherits="Store" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<meta name="description" content="Music reviews and CDs for sale. Acoustic. Celtic. Folkadelic. Irish music from Corvallis, Oregon." />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div id="store">
            <h2>
                Store</h2>
            <%--<object id="CDBaby" class="store_object" data="http://www.cdbaby.com/Artist/TheNettles#ctl00_rightColumn_upAlbums" type="text/html" >
Go to <a href="http://www.cdbaby.com/Artist/TheNettles">CDBaby</a>
</object>--%>
            <ul>
                <li><a href="http://cdbaby.com/cd/nettles" onclick="this.target='_blank';">
                    <img src="img/nettles.jpg" width="200" height="200" alt="THE NETTLES: The Nettles" /></a></li>
                <li><a href="http://cdbaby.com/cd/nettles2" onclick="this.target='_blank';">
                    <img src="img/flow.jpg" width="200" height="200" alt="THE NETTLES: Flow" /></a></li>
            </ul>
        </div>
    </div>
    <div id="sidebar">
        <div id="music_player">
            <h3>
                Listen</h3>
            <%--<object width='400' height='234'>
<param name="webplayer" id="http://musiclibre.org/flash/dark_player" value='playlist_url=http://www.TheNettles.com/media/CD&rounded_corner=1&skin_color_1=-116,-20,-38,0&skin_color_2=-103,100,0,0' type='application/x-shockwave-flash' pluginspage='http://www.adobe.com/go/getflashplayer'/>
</object>--%>
            <%--<embed src='http://musiclibre.org/flash/dark_player' width='400' height='234' wmode='transparent' flashVars='playlist_url=http://www.TheNettles.com/media/CD&rounded_corner=1&skin_color_1=-116,-20,-38,0&skin_color_2=-103,100,0,0' type='application/x-shockwave-flash' pluginspage='http://www.adobe.com/go/getflashplayer'/>--%>
            <ul>
                <li>
                    <a href="media/CD/FermoyLasses_Cooleys.mp3"><img src="img/nettles_tiny.jpg" alt="Fermoy Lasses / Cooley&rsquo;s" /> Fermoy Lasses / Cooley&rsquo;s</a></li>
                <li>
                    <a href="media/CD/Scollay's Reel.mp3"><img src="img/flow_tiny.jpg" alt="Scollay&rsquo;s Reel" /> Scollay&rsquo;s Reel</a></li>
            </ul>
        </div>
        <div id="reviews_sidebar">
            <h3>
                Reviews</h3>
            <ul>
                <li>
                    <blockquote>
                        There is enough of a twist on the traditional to keep it interesting for the people
                        who prefer a little something new, but not so much that those who are looking for
                        their beloved sounds will feel cheated. Indeed, this is truly a Celtic CD that many
                        people would enjoy.</blockquote>
                    <cite><a href="http://celticmp3s.com/2011/04/review-the-nettles-by-the-nettles/">Catherine
                        L. Tully, Celtic MP3s Music Magazine</a></cite> </li>
                <li>
                    <blockquote>
                        We have a rating system for CD&rsquo;s we receive so that DJ&rsquo;s in other genres
                        have some guidelines when they play a CD they may not be familiar with. We rate
                        1 the worst and 7 the best. I rated The Nettles a 7. All music sent to WVUD is catalogued
                        into the station music library. I had a hard time giving this one up. I found The
                        Nettles CD to be exciting, fresh and alive. Very enjoyable listening
                    </blockquote>
                    <cite>Ellen Ellis, The Green Willow;, WVUD, Newark, DE</cite></li>
                <li>
                    <blockquote>
                        This album is really very nice. . . . A marvelous get-up-and-go album to play first
                        thing in the morning
                    </blockquote>
                    <cite>Victory Review, June, 2000</cite></li>
                <li>
                    <blockquote>
                        Rimheach! [Gaelic: &lsquo;Superb!&rsquo;] The combination of musical talent, expertise
                        of the instrumentation and the musical feeling, Celtic spirit, makes it impossible
                        to sit still. Everyone at the station was tapping their feet, wiggling in their
                        seats or dancing, and some were doing all three.
                    </blockquote>
                    <cite>Dave MacLean, Radio Scotland</cite></li>
                <li>
                    <blockquote>
                        Outstanding! A perfect fit for the sound of our programs of Celtic music....It&rsquo;s
                        in heavy rotation right now.
                    </blockquote>
                    <cite>Marty Scarborough, KASU-FM program director</cite></li>
                <li>
                    <blockquote>
                        ...this CD truly shines as a Celtic album! From the opening set...you&rsquo;ll think
                        you&rsquo;ve wandered into some small, crowded bar where the beer is cheap and the
                        music ever so sweet. Just make sure you put your soft-soled dancing shoes on
                    </blockquote>
                    <cite><a href="http://www.greenmanreview.com/nettles.html">The Green Man Review</a></cite></li>
                <li>
                    <blockquote>
                        [The Nettles&rsquo; CD is] A delightful collection of energetic tunes. I&rsquo;ll
                        be playing it again
                    </blockquote>
                    <cite>Jan Vanderhorst, Just Us Folk;, CKPC 92.1 FM, Brantford, Ontario,Canada</cite></li>
                <li>
                    <blockquote>
                        Your CD arrived this week and I enjoyed it so much I made it the featured album
                        on today&rsquo;s program. I reckon The Nettles would be great fun at pub gigs and
                        the like. There&rsquo;s a lot of energy and I really like the direct approach you
                        take with the music. You mix up American and Irish tunes delightfully through the
                        album, as well as tossing in a couple of tunes of &lsquo;other parentage&rsquo; sitting
                        very well with the rest. The album works well for my taste. It gives a strong indication
                        of your &lsquo;live&rsquo; sound...I would love to see you guys live on stage...Thanks
                        for sending me a copy--it will continue to get airplay.
                    </blockquote>
                    <cite>Bruce Cameron, Come All Ye; (longest-running folk program on Australian radio),
                        2MCE-FM, Bathurst, New South Wales, Australia</cite></li>
                <li>
                    <blockquote>
                        Excellent, all-around. Great arrangements and musicianship!
                    </blockquote>
                    <cite>Steve Jerrett, Sunday Morning Coffeehouse, KOPN, Columbia, MO.</cite></li>
            </ul>
        </div>
    </div>
</asp:Content>
