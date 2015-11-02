﻿http: //widgets.twimg.com/j/2/widget.js
/**
 * Twitter - http://twitter.com
 * Copyright (C) 2010 Twitter
 * Author: Dustin Diaz (dustin@twitter.com)
 *
 * V 2.2.5 Twitter search/profile/faves/list widget
 * http://twitter.com/widgets
 * For full documented source see http://twitter.com/javascripts/widgets/widget.js
 * Hosting and modifications of the original source IS allowed.
 *
 * Example usage:
 <script src="path/to/widget.js"></script>
 <script>
 new TWTR.Widget({
 type: 'search',
 search: "your search query", // includes all advanced search queries.
 width: 250,
 height: 350,
 interval: 6000,
 subject: "What's being said about...",
 title: "San Francisco",
 rpp: 30,
 footer: "Follow me",
 theme: {
 shell: {
 background: '#1deb25',
 color: '#ffffff'
 },
 tweets: {
 background: 'silver',
 color: 'blue',
 links: 'black'
 }
 },
 
 features: {
 avatars: true, // defaults to false for profile widget, but true for search & faves widget
 hashtags: true,
 timestamp: true,
 fullscreen: false, // ignores width and height and just goes full screen
 scrollbar: false,
 live: true,
 loop: true,
 behavior: 'default',
 dateformat: 'absolute', // defaults to relative (eg: 3 minutes ago)
 toptweets: true // only for search widget
 }
 }).render().start();
 </script>
 *
 */
/**
 * @namespace TWTR public namespace for Twitter widget
 */
TWTR = window.TWTR || {},
Array.forEach || (Array.prototype.filter = function (a, b) {
    var c = b || window,
        d = [];
    for (var e = 0, f = this.length; e < f; ++e) {
        if (!a.call(c, this[e], e, this)) continue;
        d.push(this[e])
    }
    return d
}, Array.prototype.indexOf = function (a, b) {
    var b = b || 0;
    for (var c = 0; c < this.length; ++c) if (this[c] === a) return c;
    return -1
}),


function () {
    function h(a) {
        a = a || window.event;
        var b = a.target || a.srcElement,
            h, i, j, k, l;
        while (b && b.nodeName.toLowerCase() !== "a") b = b.parentNode;
        b && b.nodeName.toLowerCase() === "a" && b.href && (h = b.href.match(c), h && (i = 550, j = h[2] in d ? 420 : 560, k = Math.round(g / 2 - i / 2), l = 0, f > j && (l = Math.round(f / 2 - j / 2)), window.open(b.href, "intent", e + ",width=" + i + ",height=" + j + ",left=" + k + ",top=" + l), a.returnValue = !1, a.preventDefault && a.preventDefault()))
    }
    function b(a, b, c) {
        this.el = a, this.prop = b, this.from = c.from, this.to = c.to, this.time = c.time, this.callback = c.callback, this.animDiff = this.to - this.from
    }
    function a(a, b, c) {
        for (var d = 0, e = a.length; d < e; ++d) b.call(c || window, a[d], d, a)
    }
    if (!TWTR || !TWTR.Widget) {
        b.canTransition = function () {
            var a = document.createElement("twitter");
            a.style.cssText = "-webkit-transition: all .5s linear;";
            return !!a.style.webkitTransitionProperty
        }(), b.prototype._setStyle = function (a) {
            switch (this.prop) {
            case "opacity":
                this.el.style[this.prop] = a, this.el.style.filter = "alpha(opacity=" + a * 100 + ")";
                break;
            default:
                this.el.style[this.prop] = a + "px"
            }
        }, b.prototype._animate = function () {
            var a = this;
            this.now = new Date, this.diff = this.now - this.startTime, this.diff > this.time ? (this._setStyle(this.to), this.callback && this.callback.call(this), clearInterval(this.timer)) : (this.percentage = Math.floor(this.diff / this.time * 100) / 100, this.val = this.animDiff * this.percentage + this.from, this._setStyle(this.val))
        }, b.prototype.start = function () {
            var a = this;
            this.startTime = new Date, this.timer = setInterval(function () {
                a._animate.call(a)
            }, 15)
        }, TWTR.Widget = function (a) {
            this.init(a)
        }, function () {
            function G(a) {
                function b() {
                    return a.needle.metadata && a.needle.metadata.result_type && a.needle.metadata.result_type == "popular" ? '<span class="twtr-popular">' + a.needle.metadata.recent_retweets + "+ recent retweets</span>" : ""
                }
                var c = '<div class="twtr-tweet-wrap"> \n        <div class="twtr-avatar"> \n          <div class="twtr-img"><a target="_blank" href="http://twitter.com/intent/user?screen_name=' + a.user + '"><img alt="' + a.user + ' profile" src="' + g(a.avatar) + '"></a></div> \n        </div> \n        <div class="twtr-tweet-text"> \n          <p> \n            <a target="_blank" href="http://twitter.com/intent/user?screen_name=' + a.user + '" class="twtr-user">' + a.user + "</a> " + a.tweet + ' \n            <em>\n            <a target="_blank" class="twtr-timestamp" time="' + a.timestamp + '" href="http://twitter.com/' + a.user + "/status/" + a.id + '">' + a.created_at + '</a> &middot;\n            <a target="_blank" class="twtr-reply" href="http://twitter.com/intent/tweet?in_reply_to=' + a.id + '">reply</a> &middot; \n            <a target="_blank" class="twtr-rt" href="http://twitter.com/intent/retweet?tweet_id=' + a.id + '">retweet</a> &middot; \n            <a target="_blank" class="twtr-fav" href="http://twitter.com/intent/favorite?tweet_id=' + a.id + '">favorite</a> \n            </em> ' + b() + " \n          </p> \n        </div> \n      </div>",
                    d = document.createElement("div");
                d.id = "tweet-id-" + ++G._tweetCount, d.className = "twtr-tweet", d.innerHTML = c, this.element = d
            }
            function F(a, b, c) {
                this.time = a || 6e3, this.loop = b || !1, this.repeated = 0, this.callback = c, this.haystack = []
            }
            function E(a, b, c) {
                this.job = a, this.decayFn = b, this.interval = c, this.decayRate = 1, this.decayMultiplier = 1.25, this.maxDecayTime = 18e4
            }
            var c = {},
                d = location.protocol.match(/https/),
                e = /^.+\/profile_images/,
                f = "https://s3.amazonaws.com/twitter_production/profile_images",
                g = function (a) {
                    return d ? a.replace(e, f) : a
                },
                h = {},
                i = function (a) {
                    var b = h[a];
                    b || (b = new RegExp("(?:^|\\s+)" + a + "(?:\\s+|$)"), h[a] = b);
                    return b
                },
                j = function (a, b, c, d) {
                    var b = b || "*",
                        c = c || document,
                        e = [],
                        f = c.getElementsByTagName(b),
                        g = i(a);
                    for (var h = 0, j = f.length; h < j; ++h) g.test(f[h].className) && (e[e.length] = f[h], d && d.call(f[h], f[h]));
                    return e
                },
                k = function () {
                    var a = navigator.userAgent;
                    return {
                        ie: a.match(/MSIE\s([^;]*)/)
                    }
                }(),
                l = function (a) {
                    if (typeof a == "string") return document.getElementById(a);
                    return a
                },
                m = function (a) {
                    return a.replace(/^\s+|\s+$/g, "")
                },
                n = function () {
                    var a = self.innerHeight,
                        b = document.compatMode;
                    if (b || k.ie) a = b == "CSS1Compat" ? document.documentElement.clientHeight : document.body.clientHeight;
                    return a
                },
                o = function (a, b) {
                    var c = a.target || a.srcElement;
                    return b(c)
                },
                p = function (a) {
                    try {
                        return a && 3 == a.nodeType ? a.parentNode : a
                    } catch (b) {}
                },
                q = function (a) {
                    var b = a.relatedTarget;
                    b || (a.type == "mouseout" ? b = a.toElement : a.type == "mouseover" && (b = a.fromElement));
                    return p(b)
                },
                r = function (a, b) {
                    b.parentNode.insertBefore(a, b.nextSibling)
                },
                s = function (a) {
                    try {
                        a.parentNode.removeChild(a)
                    } catch (b) {}
                },
                t = function (a) {
                    return a.firstChild
                },
                u = function (a) {
                    var b = q(a);
                    while (b && b != this) try {
                        b = b.parentNode
                    } catch (c) {
                        b = this
                    }
                    if (b != this) return !0;
                    return !1
                },
                v = function () {
                    if (document.defaultView && document.defaultView.getComputedStyle) return function (a, b) {
                        var c = null,
                            d = document.defaultView.getComputedStyle(a, "");
                        d && (c = d[b]);
                        var e = a.style[b] || c;
                        return e
                    };
                    if (document.documentElement.currentStyle && k.ie) return function (a, b) {
                        var c = a.currentStyle ? a.currentStyle[b] : null;
                        return a.style[b] || c
                    }
                }(),
                w = {
                    has: function (a, b) {
                        return (new RegExp("(^|\\s)" + b + "(\\s|$)")).test(l(a).className)
                    },
                    add: function (a, b) {
                        this.has(a, b) || (l(a).className = m(l(a).className) + " " + b)
                    },
                    remove: function (a, b) {
                        this.has(a, b) && (l(a).className = l(a).className.replace(new RegExp("(^|\\s)" + b + "(\\s|$)", "g"), ""))
                    }
                },
                x = {
                    add: function (a, b, c) {
                        a.addEventListener ? a.addEventListener(b, c, !1) : a.attachEvent("on" + b, function () {
                            c.call(a, window.event)
                        })
                    },
                    remove: function (a, b, c) {
                        a.removeEventListener ? a.removeEventListener(b, c, !1) : a.detachEvent("on" + b, c)
                    }
                },
                y = function () {
                    function c(a) {
                        return parseInt(a.substring(4, 6), 16)
                    }
                    function b(a) {
                        return parseInt(a.substring(2, 4), 16)
                    }
                    function a(a) {
                        return parseInt(a.substring(0, 2), 16)
                    }
                    return function (d) {
                        return [a(d), b(d), c(d)]
                    }
                }(),
                z = {
                    bool: function (a) {
                        return typeof a == "boolean"
                    },
                    def: function (a) {
                        return typeof a != "undefined"
                    },
                    number: function (a) {
                        return typeof a == "number" && isFinite(a)
                    },
                    string: function (a) {
                        return typeof a == "string"
                    },
                    fn: function (a) {
                        return typeof a == "function"
                    },
                    array: function (a) {
                        if (a) return z.number(a.length) && z.fn(a.splice);
                        return !1
                    }
                },
                A = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
                B = function (a) {
                    function g() {
                        var a = new Date;
                        return a.getDate() != b.getDate() || a.getYear() != b.getYear() || a.getMonth() != b.getMonth() ? " - " + A[b.getMonth()] + " " + b.getDate() + ", " + b.getFullYear() : ""
                    }
                    var b = new Date(a);
                    k.ie && (b = Date.parse(a.replace(/( \+)/, " UTC$1")));
                    var c = "",
                        d = function () {
                            var a = b.getHours();
                            if (a > 0 && a < 13) {
                                c = "am";
                                return a
                            }
                            if (a < 1) {
                                c = "am";
                                return 12
                            }
                            c = "pm";
                            return a - 12
                        }(),
                        e = b.getMinutes(),
                        f = b.getSeconds();
                    return d + ":" + e + c + g()
                },
                C = function (a) {
                    var b = new Date,
                        c = new Date(a);
                    k.ie && (c = Date.parse(a.replace(/( \+)/, " UTC$1")));
                    var d = b - c,
                        e = 1e3,
                        f = e * 60,
                        g = f * 60,
                        h = g * 24,
                        i = h * 7;
                    if (isNaN(d) || d < 0) return "";
                    if (d < e * 2) return "right now";
                    if (d < f) return Math.floor(d / e) + " seconds ago";
                    if (d < f * 2) return "about 1 minute ago";
                    if (d < g) return Math.floor(d / f) + " minutes ago";
                    if (d < g * 2) return "about 1 hour ago";
                    if (d < h) return Math.floor(d / g) + " hours ago";
                    if (d > h && d < h * 2) return "yesterday";
                    return d < h * 365 ? Math.floor(d / h) + " days ago" : "over a year ago"
                },
                D = {
                    link: function (a) {
                        return a.replace(/\b(((https*\:\/\/)|www\.)[^\"\']+?)(([!?,.\)]+)?(\s|$))/g, function (a, b, c, d, e) {
                            var f = c.match(/w/) ? "http://" : "";
                            return '<a class="twtr-hyperlink" target="_blank" href="' + f + b + '">' + (b.length > 25 ? b.substr(0, 24) + "..." : b) + "</a>" + e
                        })
                    },
                    at: function (a) {
                        return a.replace(/\B[@ï¼ ]([a-zA-Z0-9_]{1,20})/g, function (a, b) {
                            return '@<a target="_blank" class="twtr-atreply" href="http://twitter.com/intent/user?screen_name=' + b + '">' + b + "</a>"
                        })
                    },
                    list: function (a) {
                        return a.replace(/\B[@ï¼ ]([a-zA-Z0-9_]{1,20}\/\w+)/g, function (a, b) {
                            return '@<a target="_blank" class="twtr-atreply" href="http://twitter.com/' + b + '">' + b + "</a>"
                        })
                    },
                    hash: function (a) {
                        return a.replace(/(^|\s+)#(\w+)/gi, function (a, b, c) {
                            return b + '<a target="_blank" class="twtr-hashtag" href="http://twitter.com/search?q=%23' + c + '">#' + c + "</a>"
                        })
                    },
                    clean: function (a) {
                        return this.hash(this.at(this.list(this.link(a))))
                    }
                };
            E.prototype = {
                start: function () {
                    this.stop().run();
                    return this
                },
                stop: function () {
                    this.worker && window.clearTimeout(this.worker);
                    return this
                },
                run: function () {
                    var a = this;
                    this.job(function () {
                        a.decayRate = a.decayFn() ? Math.max(1, a.decayRate / a.decayMultiplier) : a.decayRate * a.decayMultiplier;
                        var b = a.interval * a.decayRate;
                        b = b >= a.maxDecayTime ? a.maxDecayTime : b, b = Math.floor(b), a.worker = window.setTimeout(function () {
                            a.run.call(a)
                        }, b)
                    })
                },
                destroy: function () {
                    this.stop(), this.decayRate = 1;
                    return this
                }
            }, F.prototype = {
                set: function (a) {
                    this.haystack = a
                },
                add: function (a) {
                    this.haystack.unshift(a)
                },
                start: function () {
                    if (this.timer) return this;
                    this._job();
                    var a = this;
                    this.timer = setInterval(function () {
                        a._job.call(a)
                    }, this.time);
                    return this
                },
                stop: function () {
                    this.timer && (window.clearInterval(this.timer), this.timer = null);
                    return this
                },
                _next: function () {
                    var a = this.haystack.shift();
                    a && this.loop && this.haystack.push(a);
                    return a || null
                },
                _job: function () {
                    var a = this._next();
                    a && this.callback(a);
                    return this
                }
            }, G._tweetCount = 0, c.loadStyleSheet = function (a, b) {
                if (!TWTR.Widget.loadingStyleSheet) {
                    TWTR.Widget.loadingStyleSheet = !0;
                    var c = document.createElement("link");
                    c.href = a, c.rel = "stylesheet", c.type = "text/css", document.getElementsByTagName("head")[0].appendChild(c);
                    var d = setInterval(function () {
                        var a = v(b, "position");
                        a == "relative" && (clearInterval(d), d = null, TWTR.Widget.hasLoadedStyleSheet = !0)
                    }, 50)
                }
            }, function () {
                var a = !1;
                c.css = function (b) {
                    function e() {
                        document.getElementsByTagName("head")[0].appendChild(c)
                    }
                    var c = document.createElement("style");
                    c.type = "text/css";
                    if (k.ie) c.styleSheet.cssText = b;
                    else {
                        var d = document.createDocumentFragment();
                        d.appendChild(document.createTextNode(b)), c.appendChild(d)
                    }!k.ie || a ? e() : window.attachEvent("onload", function () {
                        a = !0, e()
                    })
                }
            }(), TWTR.Widget.isLoaded = !1, TWTR.Widget.loadingStyleSheet = !1, TWTR.Widget.hasLoadedStyleSheet = !1, TWTR.Widget.WIDGET_NUMBER = 0, TWTR.Widget.matches = {
                mentions: /^@[a-zA-Z0-9_]{1,20}\b/,
                any_mentions: /\b@[a-zA-Z0-9_]{1,20}\b/
            }, TWTR.Widget.jsonP = function (a, b) {
                var c = document.createElement("script"),
                    d = document.getElementsByTagName("head")[0];
                c.type = "text/javascript", c.src = a, d.insertBefore(c, d.firstChild), b(c);
                return c
            }, TWTR.Widget.prototype = function () {
                var e = d ? "https://" : "http://",
                    f = window.location.hostname.match(/twitter\.com/) ? window.location.hostname + ":" + window.location.port : "twitter.com",
                    h = e + "search." + f + "/search.",
                    i = e + "api." + f + "/1/statuses/user_timeline.",
                    m = e + f + "/favorites/",
                    o = e + "api." + f + "/1/",
                    p = 25e3,
                    q = d ? "https://twitter-widgets.s3.amazonaws.com/j/1/default.gif" : "http://widgets.twimg.com/j/1/default.gif";
                return {
                    init: function (a) {
                        var b = this;
                        this._widgetNumber = ++TWTR.Widget.WIDGET_NUMBER, TWTR.Widget["receiveCallback_" + this._widgetNumber] = function (a) {
                            b._prePlay.call(b, a)
                        }, this._cb = "TWTR.Widget.receiveCallback_" + this._widgetNumber, this.opts = a, this._base = h, this._isRunning = !1, this._hasOfficiallyStarted = !1, this._hasNewSearchResults = !1, this._rendered = !1, this._profileImage = !1, this._isCreator = !! a.creator, this._setWidgetType(a.type), this.timesRequested = 0, this.runOnce = !1, this.newResults = !1, this.results = [], this.jsonMaxRequestTimeOut = 19e3, this.showedResults = [], this.sinceId = 1, this.source = "TWITTERINC_WIDGET", this.id = a.id || "twtr-widget-" + this._widgetNumber, this.tweets = 0, this.setDimensions(a.width, a.height), this.interval = a.interval || 6e3, this.format = "json", this.rpp = a.rpp || 50, this.subject = a.subject || "", this.title = a.title || "", this.setFooterText(a.footer), this.setSearch(a.search), this._setUrl(), this.theme = a.theme ? a.theme : this._getDefaultTheme(), a.id || document.write('<div class="twtr-widget" id="' + this.id + '"></div>'), this.widgetEl = l(this.id), a.id && w.add(this.widgetEl, "twtr-widget"), a.version >= 2 && !TWTR.Widget.hasLoadedStyleSheet && (d ? c.loadStyleSheet("https://twitter-widgets.s3.amazonaws.com/j/2/widget.css", this.widgetEl) : a.creator ? c.loadStyleSheet("/stylesheets/widgets/widget.css", this.widgetEl) : c.loadStyleSheet("http://widgets.twimg.com/j/2/widget.css", this.widgetEl)), this.occasionalJob = new E(function (a) {
                            b.decay = a, b._getResults.call(b)
                        }, function () {
                            return b._decayDecider.call(b)
                        }, p), this._ready = z.fn(a.ready) ? a.ready : function () {}, this._isRelativeTime = !0, this._tweetFilter = !1, this._avatars = !0, this._isFullScreen = !1, this._isLive = !0, this._isScroll = !1, this._loop = !0, this._showTopTweets = this._isSearchWidget ? !0 : !1, this._behavior = "default", this.setFeatures(this.opts.features), this.intervalJob = new F(this.interval, this._loop, function (a) {
                            b._normalizeTweet(a)
                        });
                        return this
                    },
                    setDimensions: function (a, b) {
                        this.wh = a && b ? [a, b] : [250, 300], a == "auto" || a == "100%" ? this.wh[0] = "100%" : this.wh[0] = (this.wh[0] < 150 ? 150 : this.wh[0]) + "px", this.wh[1] = (this.wh[1] < 100 ? 100 : this.wh[1]) + "px";
                        return this
                    },
                    setRpp: function (a) {
                        var a = parseInt(a);
                        this.rpp = z.number(a) && a > 0 && a <= 100 ? a : 30;
                        return this
                    },
                    _setWidgetType: function (a) {
                        this._isSearchWidget = !1, this._isProfileWidget = !1, this._isFavsWidget = !1, this._isListWidget = !1;
                        switch (a) {
                        case "profile":
                            this._isProfileWidget = !0;
                            break;
                        case "search":
                            this._isSearchWidget = !0, this.search = this.opts.search;
                            break;
                        case "faves":
                        case "favs":
                            this._isFavsWidget = !0;
                            break;
                        case "list":
                        case "lists":
                            this._isListWidget = !0
                        }
                        return this
                    },
                    setFeatures: function (a) {
                        if (a) {
                            z.def(a.filters) && (this._tweetFilter = a.filters), z.def(a.dateformat) && (this._isRelativeTime = a.dateformat !== "absolute");
                            if (z.def(a.fullscreen) && z.bool(a.fullscreen) && a.fullscreen) {
                                this._isFullScreen = !0, this.wh[0] = "100%", this.wh[1] = n() - 90 + "px";
                                var b = this;
                                x.add(window, "resize", function (a) {
                                    b.wh[1] = n(), b._fullScreenResize()
                                })
                            }
                            z.def(a.loop) && z.bool(a.loop) && (this._loop = a.loop);
                            if (z.def(a.behavior) && z.string(a.behavior)) switch (a.behavior) {
                            case "all":
                                this._behavior = "all";
                                break;
                            case "preloaded":
                                this._behavior = "preloaded";
                                break;
                            default:
                                this._behavior = "default"
                            }
                            if (z.def(a.toptweets) && z.bool(a.toptweets)) {
                                this._showTopTweets = a.toptweets;
                                var d = this._showTopTweets ? "inline-block" : "none";
                                c.css("#" + this.id + " .twtr-popular { display: " + d + "; }")
                            }
                            if (!z.def(a.toptweets)) {
                                this._showTopTweets = !0;
                                var d = this._showTopTweets ? "inline-block" : "none";
                                c.css("#" + this.id + " .twtr-popular { display: " + d + "; }")
                            }
                            if (z.def(a.avatars) && z.bool(a.avatars)) if (!a.avatars) c.css("#" + this.id + " .twtr-avatar, #" + this.id + " .twtr-user { display: none; } " + "#" + this.id + " .twtr-tweet-text { margin-left: 0; }"), this._avatars = !1;
                            else {
                                var e = this._isFullScreen ? "90px" : "40px";
                                c.css("#" + this.id + " .twtr-avatar { display: block; } #" + this.id + " .twtr-user { display: inline; } " + "#" + this.id + " .twtr-tweet-text { margin-left: " + e + "; }"), this._avatars = !0
                            } else this._isProfileWidget ? (this.setFeatures({
                                avatars: !1
                            }), this._avatars = !1) : (this.setFeatures({
                                avatars: !0
                            }), this._avatars = !0);
                            z.def(a.hashtags) && z.bool(a.hashtags) && (a.hashtags ? "" : c.css("#" + this.id + " a.twtr-hashtag { display: none; }"));
                            if (z.def(a.timestamp) && z.bool(a.timestamp)) {
                                var f = a.timestamp ? "block" : "none";
                                c.css("#" + this.id + " em { display: " + f + "; }")
                            }
                            z.def(a.live) && z.bool(a.live) && (this._isLive = a.live), z.def(a.scrollbar) && z.bool(a.scrollbar) && (this._isScroll = a.scrollbar)
                        } else this._isProfileWidget && (this.setFeatures({
                            avatars: !1
                        }), this._avatars = !1), (this._isProfileWidget || this._isFavsWidget) && this.setFeatures({
                            behavior: "all"
                        });
                        return this
                    },
                    _fullScreenResize: function () {
                        var a = j("twtr-timeline", "div", document.body, function (a) {
                            a.style.height = n() - 90 + "px"
                        })
                    },
                    setTweetInterval: function (a) {
                        this.interval = a;
                        return this
                    },
                    setBase: function (a) {
                        this._base = a;
                        return this
                    },
                    setUser: function (a, b) {
                        this.username = a, this.realname = b || " ", this._isFavsWidget ? this.setBase(m + a + ".") : this._isProfileWidget && this.setBase(i + this.format + "?screen_name=" + a), this.setSearch(" ");
                        return this
                    },
                    setList: function (a, b) {
                        this.listslug = b.replace(/ /g, "-").toLowerCase(), this.username = a, this.setBase(o + a + "/lists/" + this.listslug + "/statuses."), this.setSearch(" ");
                        return this
                    },
                    setProfileImage: function (a) {
                        this._profileImage = a, this.byClass("twtr-profile-img", "img").src = g(a), this.byClass("twtr-profile-img-anchor", "a").href = "http://twitter.com/intent/user?screen_name=" + this.username;
                        return this
                    },
                    setTitle: function (a) {
                        this.title = a, this.widgetEl.getElementsByTagName("h3")[0].innerHTML = this.title;
                        return this
                    },
                    setCaption: function (a) {
                        this.subject = a, this.widgetEl.getElementsByTagName("h4")[0].innerHTML = this.subject;
                        return this
                    },
                    setFooterText: function (a) {
                        this.footerText = z.def(a) && z.string(a) ? a : "Join the conversation", this._rendered && (this.byClass("twtr-join-conv", "a").innerHTML = this.footerText);
                        return this
                    },
                    setSearch: function (a) {
                        this.searchString = a || "", this.search = encodeURIComponent(this.searchString), this._setUrl();
                        if (this._rendered) {
                            var b = this.byClass("twtr-join-conv", "a");
                            b.href = "http://twitter.com/" + this._getWidgetPath()
                        }
                        return this
                    },
                    _getWidgetPath: function () {
                        return this._isProfileWidget ? this.username : this._isFavsWidget ? this.username + "/favorites" : this._isListWidget ? this.username + "/lists/" + this.listslug : "#search?q=" + this.search
                    },
                    _setUrl: function () {
                        function c() {
                            return a.sinceId == 1 ? "" : "&since_id=" + a.sinceId + "&refresh=true"
                        }
                        function b() {
                            return "&" + +(new Date) + "=cachebust"
                        }
                        var a = this;
                        this._isProfileWidget ? this.url = this._base + "&callback=" + this._cb + "&include_rts=true" + "&count=" + this.rpp + c() + "&clientsource=" + this.source : this._isFavsWidget || this._isListWidget ? this.url = this._base + this.format + "?callback=" + this._cb + c() + "&include_rts=true" + "&clientsource=" + this.source : (this.url = this._base + this.format + "?q=" + this.search + "&include_rts=true" + "&callback=" + this._cb + "&rpp=" + this.rpp + c() + "&clientsource=" + this.source, this.runOnce || (this.url += "&result_type=mixed")), this.url += b();
                        return this
                    },
                    _getRGB: function (a) {
                        return y(a.substring(1, 7))
                    },
                    setTheme: function (a, b) {
                        var d = this,
                            e = " !important",
                            f = window.location.hostname.match(/twitter\.com/) && window.location.pathname.match(/goodies/);
                        if (b || f) e = "";
                        this.theme = {
                            shell: {
                                background: function () {
                                    return a.shell.background || d._getDefaultTheme().shell.background
                                }(),
                                color: function () {
                                    return a.shell.color || d._getDefaultTheme().shell.color
                                }()
                            },
                            tweets: {
                                background: function () {
                                    return a.tweets.background || d._getDefaultTheme().tweets.background
                                }(),
                                color: function () {
                                    return a.tweets.color || d._getDefaultTheme().tweets.color
                                }(),
                                links: function () {
                                    return a.tweets.links || d._getDefaultTheme().tweets.links
                                }()
                            }
                        };
                        var g = "#" + this.id + " .twtr-doc, \n                     #" + this.id + " .twtr-hd a, \n                     #" + this.id + " h3, \n                     #" + this.id + " h4, \n                     #" + this.id + " .twtr-popular {\n            background-color: " + this.theme.shell.background + e + ";\n            color: " + this.theme.shell.color + e + ";\n          }\n          #" + this.id + " .twtr-popular {\n            color: " + this.theme.tweets.color + e + ";\n            background-color: rgba(" + this._getRGB(this.theme.shell.background) + ", .3)" + e + ";\n          }\n          #" + this.id + " .twtr-tweet a {\n            color: " + this.theme.tweets.links + e + ";\n          }\n          #" + this.id + " .twtr-bd, #" + this.id + " .twtr-timeline i a, \n          #" + this.id + " .twtr-bd p {\n            color: " + this.theme.tweets.color + e + ";\n          }\n          #" + this.id + " .twtr-new-results, \n          #" + this.id + " .twtr-results-inner, \n          #" + this.id + " .twtr-timeline {\n            background: " + this.theme.tweets.background + e + ";\n          }";
                        k.ie && (g += "#" + this.id + " .twtr-tweet { background: " + this.theme.tweets.background + e + "; }"), c.css(g);
                        return this
                    },
                    byClass: function (a, b, c) {
                        var d = j(a, b, l(this.id));
                        return c ? d : d[0]
                    },
                    render: function () {
                        var a = this;
                        if (!TWTR.Widget.hasLoadedStyleSheet) {
                            window.setTimeout(function () {
                                a.render.call(a)
                            }, 50);
                            return this
                        }
                        this.setTheme(this.theme, this._isCreator), this._isProfileWidget && w.add(this.widgetEl, "twtr-widget-profile"), this._isScroll && w.add(this.widgetEl, "twtr-scroll"), !this._isLive && !this._isScroll && (this.wh[1] = "auto"), this._isSearchWidget && this._isFullScreen && (document.title = "Twitter search: " + escape(this.searchString)), this.widgetEl.innerHTML = this._getWidgetHtml();
                        var b = this.byClass("twtr-timeline", "div");
                        if (this._isLive && !this._isFullScreen) {
                            var c = function (b) {
                                    a._behavior !== "all" && u.call(this, b) && a.pause.call(a)
                                },
                                d = function (b) {
                                    a._behavior !== "all" && u.call(this, b) && a.resume.call(a)
                                };
                            this.removeEvents = function () {
                                x.remove(b, "mouseover", c), x.remove(b, "mouseout", d)
                            }, x.add(b, "mouseover", c), x.add(b, "mouseout", d)
                        }
                        this._rendered = !0, this._ready();
                        return this
                    },
                    removeEvents: function () {},
                    _getDefaultTheme: function () {
                        return {
                            shell: {
                                background: "#8ec1da",
                                color: "#ffffff"
                            },
                            tweets: {
                                background: "#ffffff",
                                color: "#444444",
                                links: "#1985b5"
                            }
                        }
                    },
                    _getWidgetHtml: function () {
                        function c() {
                            return a._isFullScreen ? " twtr-fullscreen" : ""
                        }
                        function b() {
                            return a._isProfileWidget ? '<a target="_blank" href="http://twitter.com/" class="twtr-profile-img-anchor"><img alt="profile" class="twtr-profile-img" src="' + q + '"></a>\n                      <h3></h3>\n                      <h4></h4>' : "<h3>" + a.title + "</h3><h4>" + a.subject + "</h4>"
                        }
                        var a = this,
                            e = d ? "https://twitter-widgets.s3.amazonaws.com/i/widget-logo.png" : "http://widgets.twimg.com/i/widget-logo.png";
                        this._isFullScreen && (e = "https://twitter-widgets.s3.amazonaws.com/i/widget-logo-fullscreen.png");
                        var f = '<div class="twtr-doc' + c() + '" style="width: ' + this.wh[0] + ';">\n            <div class="twtr-hd">' + b() + ' \n            </div>\n            <div class="twtr-bd">\n              <div class="twtr-timeline" style="height: ' + this.wh[1] + ';">\n                <div class="twtr-tweets">\n                  <div class="twtr-reference-tweet"></div>\n                  <!-- tweets show here -->\n                </div>\n              </div>\n            </div>\n            <div class="twtr-ft">\n              <div><a target="_blank" href="http://twitter.com"><img alt="" src="' + e + '"></a>\n                <span><a target="_blank" class="twtr-join-conv" style="color:' + this.theme.shell.color + '" href="http://twitter.com/' + this._getWidgetPath() + '">' + this.footerText + "</a></span>\n              </div>\n            </div>\n          </div>";
                        return f
                    },
                    _appendTweet: function (a) {
                        this._insertNewResultsNumber(), r(a, this.byClass("twtr-reference-tweet", "div"));
                        return this
                    },
                    _slide: function (a) {
                        var c = this,
                            d = t(a).offsetHeight;
                        this.runOnce && (new b(a, "height", {
                            from: 0,
                            to: d,
                            time: 500,
                            callback: function () {
                                c._fade.call(c, a)
                            }
                        })).start();
                        return this
                    },
                    _fade: function (a) {
                        var c = this;
                        if (b.canTransition) {
                            a.style.webkitTransition = "opacity 0.5s ease-out", a.style.opacity = 1;
                            return this
                        }(new b(a, "opacity", {
                            from: 0,
                            to: 1,
                            time: 500
                        })).start();
                        return this
                    },
                    _chop: function () {
                        if (this._isScroll) return this;
                        var a = this.byClass("twtr-tweet", "div", !0),
                            b = this.byClass("twtr-new-results", "div", !0);
                        if (a.length) {
                            for (var c = a.length - 1; c >= 0; c--) {
                                var d = a[c],
                                    e = parseInt(d.offsetTop);
                                if (e > parseInt(this.wh[1])) s(d);
                                else break
                            }
                            if (b.length > 0) {
                                var f = b[b.length - 1],
                                    g = parseInt(f.offsetTop);
                                g > parseInt(this.wh[1]) && s(f)
                            }
                        }
                        return this
                    },
                    _appendSlideFade: function (a) {
                        var b = a || this.tweet.element;
                        this._chop()._appendTweet(b)._slide(b);
                        return this
                    },
                    _createTweet: function (a) {
                        a.timestamp = a.created_at, a.created_at = this._isRelativeTime ? C(a.created_at) : B(a.created_at), this.tweet = new G(a), this._isLive && this.runOnce && (this.tweet.element.style.opacity = 0, this.tweet.element.style.filter = "alpha(opacity:0)", this.tweet.element.style.height = "0");
                        return this
                    },
                    _getResults: function () {
                        var a = this;
                        this.timesRequested++, this.jsonRequestRunning = !0, this.jsonRequestTimer = window.setTimeout(function () {
                            a.jsonRequestRunning && (clearTimeout(a.jsonRequestTimer), a.jsonRequestTimer = null), a.jsonRequestRunning = !1, s(a.scriptElement), a.newResults = !1, a.decay()
                        }, this.jsonMaxRequestTimeOut), TWTR.Widget.jsonP(a.url, function (b) {
                            a.scriptElement = b
                        })
                    },
                    clear: function () {
                        var b = this.byClass("twtr-tweet", "div", !0),
                            c = this.byClass("twtr-new-results", "div", !0);
                        b = b.concat(c), a(b, function (a) {
                            s(a)
                        });
                        return this
                    },
                    _sortByMagic: function (a) {
                        var b = this;
                        this._tweetFilter && (this._tweetFilter.negatives && (a = a.filter(function (a) {
                            if (!b._tweetFilter.negatives.test(a.text)) return a
                        })), this._tweetFilter.positives && (a = a.filter(function (a) {
                            if (b._tweetFilter.positives.test(a.text)) return a
                        })));
                        switch (this._behavior) {
                        case "all":
                            this._sortByLatest(a);
                            break;
                        case "preloaded":
                        default:
                            this._sortByDefault(a)
                        }
                        this._isLive && this._behavior !== "all" && (this.intervalJob.set(this.results), this.intervalJob.start());
                        return this
                    },
                    _loadTopTweetsAtTop: function (b) {
                        var c = [],
                            d = [],
                            e = [];
                        a(b, function (a) {
                            a.metadata && a.metadata.result_type && a.metadata.result_type == "popular" ? d.push(a) : c.push(a)
                        });
                        var f = d.concat(c);
                        return f
                    },
                    _sortByLatest: function (a) {
                        this.results = a, this.results = this.results.slice(0, this.rpp), this.results = this._loadTopTweetsAtTop(this.results), this.results.reverse();
                        return this
                    },
                    _sortByDefault: function (b) {
                        var c = this,
                            d = function (a) {
                                return (new Date(a)).getTime()
                            };
                        this.results.unshift.apply(this.results, b), a(this.results, function (a) {
                            a.views || (a.views = 0)
                        }), this.results.sort(function (a, b) {
                            return d(a.created_at) > d(b.created_at) ? -1 : d(a.created_at) < d(b.created_at) ? 1 : 0
                        }), this.results = this.results.slice(0, this.rpp), this.results = this._loadTopTweetsAtTop(this.results);
                        var e = this.results;
                        this.results = this.results.sort(function (a, b) {
                            if (a.views < b.views) return -1;
                            if (a.views > b.views) return 1;
                            return 0
                        }), this._isLive || this.results.reverse()
                    },
                    _prePlay: function (a) {
                        this.jsonRequestTimer && (clearTimeout(this.jsonRequestTimer), this.jsonRequestTimer = null), k.ie || s(this.scriptElement);
                        if (a.error) this.newResults = !1;
                        else if (a.results && a.results.length > 0) this.response = a, this.newResults = !0, this.sinceId = a.max_id_str, this._sortByMagic(a.results), this.isRunning() && this._play();
                        else if ((this._isProfileWidget || this._isFavsWidget || this._isListWidget) && z.array(a) && a.length) {
                            this.newResults = !0;
                            if (!this._profileImage && this._isProfileWidget) {
                                var b = a[0].user.screen_name;
                                this.setProfileImage(a[0].user.profile_image_url), this.setTitle(a[0].user.name), this.setCaption('<a target="_blank" href="http://twitter.com/intent/user?screen_name=' + b + '">' + b + "</a>")
                            }
                            this.sinceId = a[0].id_str, this._sortByMagic(a), this.isRunning() && this._play()
                        } else this.newResults = !1;
                        this._setUrl(), this._isLive && this.decay()
                    },
                    _play: function () {
                        var b = this;
                        this.runOnce && (this._hasNewSearchResults = !0), this._avatars && this._preloadImages(this.results), this._isRelativeTime && (this._behavior == "all" || this._behavior == "preloaded") && a(this.byClass("twtr-timestamp", "a", !0), function (a) {
                            a.innerHTML = C(a.getAttribute("time"))
                        });
                        if (!this._isLive || this._behavior == "all" || this._behavior == "preloaded") {
                            a(this.results, function (a) {
                                a.retweeted_status && (a = a.retweeted_status), b._isProfileWidget && (a.from_user = a.user.screen_name, a.profile_image_url = a.user.profile_image_url);
                                if (b._isFavsWidget || b._isListWidget) a.from_user = a.user.screen_name, a.profile_image_url = a.user.profile_image_url;
                                a.id = a.id_str, b._createTweet({
                                    id: a.id,
                                    user: a.from_user,
                                    tweet: D.clean(a.text),
                                    avatar: a.profile_image_url,
                                    created_at: a.created_at,
                                    needle: a
                                });
                                var c = b.tweet.element;
                                b._behavior == "all" ? b._appendSlideFade(c) : b._appendTweet(c)
                            });
                            if (this._behavior != "preloaded") return this
                        }
                        return this
                    },
                    _normalizeTweet: function (a) {
                        var b = this;
                        a.views++, this._isProfileWidget && (a.from_user = b.username, a.profile_image_url = a.user.profile_image_url);
                        if (this._isFavsWidget || this._isListWidget) a.from_user = a.user.screen_name, a.profile_image_url = a.user.profile_image_url;
                        this._isFullScreen && (a.profile_image_url = a.profile_image_url.replace(/_normal\./, "_bigger.")), a.id = a.id_str, this._createTweet({
                            id: a.id,
                            user: a.from_user,
                            tweet: D.clean(a.text),
                            avatar: a.profile_image_url,
                            created_at: a.created_at,
                            needle: a
                        })._appendSlideFade()
                    },
                    _insertNewResultsNumber: function () {
                        if (!this._hasNewSearchResults) this._hasNewSearchResults = !1;
                        else if (this.runOnce && this._isSearchWidget) {
                            var a = this.response.total > this.rpp ? this.response.total : this.response.results.length,
                                b = a > 1 ? "s" : "",
                                c = this.response.warning && this.response.warning.match(/adjusted since_id/) ? "more than" : "",
                                d = document.createElement("div");
                            w.add(d, "twtr-new-results"), d.innerHTML = '<div class="twtr-results-inner"> &nbsp; </div><div class="twtr-results-hr"> &nbsp; </div><span>' + c + " <strong>" + a + "</strong> new tweet" + b + "</span>", r(d, this.byClass("twtr-reference-tweet", "div")), this._hasNewSearchResults = !1
                        }
                    },
                    _preloadImages: function (b) {
                        this._isProfileWidget || this._isFavsWidget || this._isListWidget ? a(b, function (a) {
                            var b = new Image;
                            b.src = g(a.user.profile_image_url)
                        }) : a(b, function (a) {
                            (new Image).src = g(a.profile_image_url)
                        })
                    },
                    _decayDecider: function () {
                        var a = !1;
                        this.runOnce ? this.newResults && (a = !0) : (this.runOnce = !0, a = !0);
                        return a
                    },
                    start: function () {
                        var a = this;
                        if (!this._rendered) {
                            setTimeout(function () {
                                a.start.call(a)
                            }, 50);
                            return this
                        }
                        this._isLive ? this.occasionalJob.start() : this._getResults(), this._isRunning = !0, this._hasOfficiallyStarted = !0;
                        return this
                    },
                    stop: function () {
                        this.occasionalJob.stop(), this.intervalJob && this.intervalJob.stop(), this._isRunning = !1;
                        return this
                    },
                    pause: function () {
                        this.isRunning() && this.intervalJob && (this.intervalJob.stop(), w.add(this.widgetEl, "twtr-paused"), this._isRunning = !1), this._resumeTimer && (clearTimeout(this._resumeTimer), this._resumeTimer = null);
                        return this
                    },
                    resume: function () {
                        var a = this;
                        !this.isRunning() && this._hasOfficiallyStarted && this.intervalJob && (this._resumeTimer = window.setTimeout(function () {
                            a.intervalJob.start(), a._isRunning = !0, w.remove(a.widgetEl, "twtr-paused")
                        }, 2e3));
                        return this
                    },
                    isRunning: function () {
                        return this._isRunning
                    },
                    destroy: function () {
                        this.stop(), this.clear(), this.runOnce = !1, this._hasOfficiallyStarted = !1, this._profileImage = !1, this._isLive = !0, this._tweetFilter = !1, this._isScroll = !1, this.newResults = !1, this._isRunning = !1, this.sinceId = 1, this.results = [], this.showedResults = [], this.occasionalJob.destroy(), this.jsonRequestRunning && clearTimeout(this.jsonRequestTimer), w.remove(this.widgetEl, "twtr-scroll"), this.removeEvents();
                        return this
                    }
                }
            }()
        }();
        if (window.__twitterIntentHandler) return;
        var c = /twitter\.com(\:\d{2,4})?\/intent\/(\w+)/,
            d = {
                tweet: !0,
                retweet: !0,
                favorite: !0
            },
            e = "scrollbars=yes,resizable=yes,toolbar=no,location=yes",
            f = screen.height,
            g = screen.width;
        document.addEventListener ? document.addEventListener("click", h, !1) : document.attachEvent && document.attachEvent("onclick", h), window.__twitterIntentHandler = !0
    }
}()