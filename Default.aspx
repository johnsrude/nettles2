<%@ Page Title="The Nettles - Celtic. Eclectic. Folkadelic." Language="C#" MasterPageFile="~/NettlesMasterPage.master"
    AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="description" content="Celtic. Eclectic. Folkadelic. The Nettles are a Celtic band that play at dances, festivals, concerts and clubs in the Pacific Northwest of the USA. Irish music, Scottish music, American Oldtime, The Nettles put it all through their folkadelic kaleidoscope.  Irish music from Corvallis, Oregon." />
    <%-- Facebook stuff which isn't XHTML compliant --%>
    <meta property="fb:app_id" content="158456340863985" />
    <meta property="fb:admins" content="832013851" />
    <meta property="og:title" content="The Nettles" />
    <meta property="og:type" content="band" />
    <meta property="og:url" content="TheNettles.com" />
    <meta property="og:image" content="http://www.TheNettles.com/img/nettles_tiny.jpg" />
    <meta property="og:site_name" content="The Nettles" />
    <meta property="fb:page_id" content="36520111286" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div id="news">
            <h2>
                News</h2>
            <ul>
                <li><a class="twitter-timeline" href="https://twitter.com/TheNettlesBand" data-widget-id="356534798329708548"
                    data-link-color="#993366" data-chrome="transparent noheader nofooter noborders noscrollbar">
                    Tweets by @TheNettlesBand</a>
                    <script type="text/javascript">
                        !function (d, s, id) {
                            var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https';
                            if (!d.getElementById(id)) {
                                js = d.createElement(s);
                                js.id = id;
                                js.src = p + "://platform.twitter.com/widgets.js";
                                fjs.parentNode.insertBefore(js, fjs);
                            }
                        } (document, "script", "twitter-wjs");</script>
                </li>
            </ul>
            <p>
            </p>
        </div>
    </div>
    <div id="sidebar">
<%--        <div id="next_show">
            <h3>
                Next Show</h3>
                    <h3>
                        Saturday, January 24, 7:30pm, Eugene, OR</h3>
                    <a href="http://www.efn.org/~efs">Eugene Folklore Society</a> Contra Dance, Gym
                    of the former Dunn School, <a href="http://g.co/maps/c3m73">3411 Willamette St.</a>
                    Beginner&rsquo;s lesson at 7pm. Caller: Laurel Thomas        </div>--%>
        <div id="links">
            <h3>
                Keep in Touch</h3>
            <ul>
                <%--<li><a href="http://eepurl.com/csuz1">Subscribe to monthly email newsletter</a></li>--%>
                <li><a href="http://www.facebook.com/folkadelic">
                    <img src="img/facebook.png" alt="Facebook" />Facebook</a></li>
                <li><a href="http://twitter.com/TheNettlesBand">
                    <img src="img/twitter.png" alt="Twitter" />Twitter</a></li>
                <li><a href="http://www.youtube.com/TheNettles">
                    <img src="img/youtube.png" alt="YouTube" />YouTube</a></li>
                <li><a href="mailto:kevin@thenettles.com">Email</a></li>
            </ul>
        </div>
        <div id="store_sidebar">
            <h3>
                Store</h3>
            <ul>
                <li><a href="http://cdbaby.com/cd/nettles" onclick="this.target='_blank';">
                    <img src="img/nettles_tiny.jpg" alt="The Nettles CD" /></a></li>
                <li><a href="http://cdbaby.com/cd/nettles2" onclick="this.target='_blank';">
                    <img src="img/flow_tiny.jpg" alt="Flow CD" /></a></li>
            </ul>
        </div>
    </div>
</asp:Content>
