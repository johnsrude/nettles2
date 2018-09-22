<%@ Page Title="The Nettles - Media" Language="C#" MasterPageFile="~/NettlesMasterPage.master" AutoEventWireup="true"
    CodeFile="Media.aspx.cs" Inherits="Media" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="description" content="Free Irish music and videos. Acoustic. Celtic. Folkadelic. Irish music from Corvallis, Oregon." />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">



        <div id="music_player">
            <h3>CDs</h3>
            <ul>
                <li>
                    <a href="media/CD/FermoyLasses_Cooleys.mp3">
                        <img src="img/nettles_tiny.jpg" alt="Fermoy Lasses / Cooley&rsquo;s" />
                        Fermoy Lasses / Cooley&rsquo;s</a></li>
                <li>
                    <a href="media/CD/Scollay's Reel.mp3">
                        <img src="img/flow_tiny.jpg" alt="Scollay&rsquo;s Reel" />
                        Scollay&rsquo;s Reel</a></li>
            </ul>

            <h3>Live Recordings</h3>
            <ul>
                <li>
                    <h4><a href="media/Nettles_at_EFS_Feb2014_LongGoneClip.mp3">Long Gone</a></h4>
                    <cite>"Long Gone" by <a href="http://www.larryunger.net/">Larry Unger</a>. The Nettles at Eugene Folklore Society contra dance, February 2014</cite></li>
                <li>
                    <h4><a href="media/Nettles_at_EFS_Feb2014_DevilClip.mp3">Devil in the Strawstack</a></h4>
                    <cite>The Nettles at Eugene Folklore Society contra dance, February 2014.</cite></li>
            </ul>
        </div>

    </div>
    <div id="sidebar">
        <div id="store_sidebar">
            <h3>Store</h3>
            <ul>
                <li>
                    <a href="http://cdbaby.com/cd/nettles" onclick="this.target='_blank';">
                        <img src="img/nettles_tiny.jpg" alt="The Nettles CD" /></a></li>
                <li>
                    <a href="http://cdbaby.com/cd/nettles2" onclick="this.target='_blank';">
                        <img src="img/flow_tiny.jpg" alt="Flow CD" /></a></li>
            </ul>
        </div>
        <div id="videos">

            <h3>Videos</h3>
            <ul>
                <li>
                    <div class="videoWrapper">
                        <iframe width="420" height="200" src="https://www.youtube-nocookie.com/embed/mKenA6qpPrY?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    </div>
                    <div class="videoWrapper">
                        <iframe width="420" height="200" src="https://www.youtube-nocookie.com/embed/v0Mff0TUNDo?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    </div>
                    <div class="videoWrapper">
                        <iframe width="420" height="200" src="https://www.youtube-nocookie.com/embed/pBuDjwlEo88?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
