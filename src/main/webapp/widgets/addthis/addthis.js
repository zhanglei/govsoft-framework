$.fn.addthis = function(a) {
    a = a || {};
    return this.each(function() {
        if (!$(this).attr("class").match(/(^|\s)addthis_org_cn($|\s)/)) $(this).addClass("addthis_org_cn");
        $$addthis.initBtn(this)
    })
};
var $$addthis = {
    gourl: "http://addthis.org.cn/go/?act=share",
    timeDelayout: 420,
    favsN: 46,
    favs: {
        "fav": {
            id: 0,
            name: "本地收藏"
        },
        "google": {
            id: 1,
            name: "谷歌书签"
        },
        "gmail": {
            id: 31,
            name: "Gmail"
        },
        "xiaonei": {
            id: 22,
            name: "人人网"
        },
        "kaixin": {
            id: 23,
            name: "开心网"
        },
        "sinav": {
            id: 28,
            name: "新浪微博"
        },
        "sohubai": {
            id: 24,
            name: "搜狐&middot;白"
        },
        "tsohu": {
            id: 42,
            name: "搜狐微博"
        },
        "digu": {
            id: 35,
            name: "嘀咕"
        },
        "zuosa": {
            id: 29,
            name: "做啥"
        },
        "douban": {
            id: 21,
            name: "豆瓣/九点"
        },
        "renjian": {
            id: 38,
            name: "人间"
        },
        "jianghu": {
            id: 36,
            name: "淘江湖"
        },
        "wealink": {
            id: 44,
            name: "若邻网"
        },
        "cnfol": {
            id: 46,
            name: "中金微博"
        },
        "baidu": {
            id: 2,
            name: "百度搜藏"
        },
        "yahoo": {
            id: 3,
            name: "雅虎收藏"
        },
        "qq": {
            id: 4,
            name: "QQ书签"
        },
        "qqzone": {
            id: 43,
            name: "QQ空间"
        },
        "baiduhi": {
            id: 39,
            name: "百度空间"
        },
        "youdao": {
            id: 41,
            name: "有道"
        },
        "t139": {
            id: 45,
            name: "139社区"
        },
        "tongxue": {
            id: 32,
            name: "同学微博"
        },
        "s51": {
            id: 37,
            name: "51社区"
        },
        "hotmail": {
            id: 40,
            name: "Hotmail"
        },
        "vivi": {
            id: 5,
            name: "新浪ViVi"
        },
        "live": {
            id: 11,
            name: "微软Live"
        },
        "googlereader": {
            id: 30,
            name: "GReader"
        },
        "buzz": {
            id: 47,
            name: "Buzz"
        },
        "xianguo": {
            id: 27,
            name: "鲜果"
        },
        "hexun": {
            id: 12,
            name: "和讯网摘"
        },
        "misterwong": {
            id: 14,
            name: "Mister-Wong"
        },
        "diglog": {
            id: 16,
            name: "Diglog"
        },
        "wake": {
            id: 10,
            name: "挖客"
        },
        "leshou": {
            id: 19,
            name: "乐收"
        },
        "follow5": {
            id: 33,
            name: "5享网"
        },
        "poco": {
            id: 20,
            name: "POCO"
        },
        "f115": {
            id: 25,
            name: "115收藏"
        },
        "pdf": {
            id: 34,
            name: "生成pdf"
        },
        "print": {
            id: 888,
            name: "打印"
        },
        "delicious": {
            id: 71,
            name: "Delicious"
        },
        "digg": {
            id: 72,
            name: "Digg"
        },
        "facebook": {
            id: 73,
            name: "Facebook"
        },
        "twitter": {
            id: 74,
            name: "Twitter"
        },
        "reddit": {
            id: 75,
            name: "Reddit"
        },
        "myspace": {
            id: 76,
            name: "Myspace"
        }
    },
    e: encodeURIComponent,
    gotourl: function(a) {
        open($$addthis.gourl + a, 'addthis', 'width=750,height=500,left=50,top=50,toolbar=no,menubar=no,location=no,scrollbars=yes,status=yes,resizable=yes');
        return false
    },
    windowOffset: function() {
        var a = {
            width: 0,
            height: 0,
            left: 0,
            top: 0,
            right: 0,
            bottom: 0
        };
        if (window.innerWidth && window.innerWidth.constructor == Number) {
            a.width = window.innerWidth;
            a.height = window.innerHeight;
            a.left = window.pageXOffset;
            a.top = window.pageYOffset
        } else if (document.documentElement && (document.documentElement.clientWidth || document.documentElement.clientHeight)) {
            a.width = document.documentElement.clientWidth;
            a.height = document.documentElement.clientHeight;
            a.left = document.documentElement.scrollLeft;
            a.top = document.documentElement.scrollTop
        } else if (document.body && (document.body.clientWidth || document.body.clientHeight)) {
            a.width = document.body.clientWidth;
            a.height = document.body.clientHeight;
            a.left = document.body.scrollLeft;
            a.top = document.body.scrollTop
        }
        a.right = a.left + a.width;
        a.bottom = a.top + a.height;
        return a
    },
    showposition: function(a, b, c, d) {
        if (!$.boxModel) {
            b.css("width", (b.get(0).clientWidth + parseInt(b.css("padding-left")) + parseInt(b.css("padding-right")) + (parseInt(b.css("border-left-width")) ? parseInt(b.css("border-left-width")) : 0) + (parseInt(b.css("border-right-width")) ? parseInt(b.css("border-right-width")) : 0)) + "px")
        }
        a.css("width", b.get(0).offsetWidth + "px");
        c.css("width", b.get(0).offsetWidth + "px");
        a.css("height", b.get(0).offsetHeight + "px");
        c.css("height", b.get(0).offsetHeight + "px");
        var e = d.offset();
        var f = $$addthis.windowOffset();
        var g = a.offset();
        var h = 0,
        top = 0;
        if (f.right - e.left <= a.width()) {
            h = e.left + d.width() - a.width()
        } else {
            h = e.left
        }
        if (f.bottom - e.top - (d.find("*").height() || 16) <= a.height()) {
            top = e.top - a.height()
        } else {
            top = e.top + d.height()
        }
        a.css("left", h + "px");
        a.css("top", top + "px");
        a.css("visibility", "visible");
        e = f = g = h = top = null
    },
    showThisItem: function(a) {
        $(".addthis_box").hide();
        $(a).show()
    },
    initBtn: function(m) {
        m.mouse_over = function(f, e) {
            if (m.locked) {
                $$addthis.showThisItem(m.addbox);
                clearTimeout(m.timeOut);
                return false
            }
            m.locked = true;
            var g = $(m).attr("i") ? "|" + $(m).attr("i") + "|": "";
            m.u = $(m).attr("u") ? $(m).attr("u") : document.location.href;
            m.t = $(m).attr("t") ? $(m).attr("t") : document.title;
            m.e = $(m).attr("e") ? $(m).attr("e") : "mouseover";
            m.argStr = "&u=" + $$addthis.e(m.u);
            m.argStr += "&t=" + $$addthis.e(m.t);
            var h = $(m).attr("d") ? $(m).attr("d") : (window.getSelection ? window.getSelection().toString() : document.getSelection ? document.getSelection() : document.selection.createRange().text);
            m.argStr += "&d=" + $$addthis.e(h);
            m.argStr += "&tag=" + $$addthis.e($(m).attr("tag") ? $(m).attr("tag") : "");
            m.addthis = m;
            $(".addthis_box").hide();
            var i = $('<div class="addthis_box"></div>').get();
            $("body").append(i);
            m.addbox = i;
            var j = "";
            j += '<iframe class="bgfrm" frameborder="0" tabindex="-1" src="javascript:;"></iframe>';
            j += '<div class="addshow"><div class="addh"><div class="addt">分享到:</div></div><div class="addbody"><div class="addlist">';
            var k = 0;
            for (var l in $$addthis.favs) {
                if ((!g && k < 14) || (g && g.indexOf("|" + $$addthis.favs[l].id + "|") >= 0)) {
                    j += '<div class="li"><a class="add_' + $$addthis.favs[l].id + '" item="' + $$addthis.favs[l].id + '" href="#">' + $$addthis.favs[l].name + '</a></div>';
                    k++
                }
            }
            if (k < $$addthis.favsN) {
                j += '<div class="li"><a class="add_999" href="#">更多分享(' + $$addthis.favsN + ')</a></div>'
            }
            j += '</div><div style="clear:both;line-height:0"></div></div>';
            j += '<div class="addbottom">by:<a href="http://addthis.org.cn" target="_blank">分享家{Addthis中国}</a></div>';
            j += '</div>';
            $(i).html(j);
            if ($(m).attr("abordercolor")) $(i).css({
                "border-color": $(m).attr("abordercolor")
            });
            if ($(m).attr("aheadbgcolor")) {
                $(i).find(".addh").css({
                    "background-color": $(m).attr("aheadbgcolor")
                });
                $(i).find(".addbottom").css({
                    "background-color": $(m).attr("aheadbgcolor")
                })
            }
            $$addthis.showposition($(i), $(i).find(".addshow"), $(i).find(".bgfrm"), $(m));
            $(i).find(".addlist .li").mouseover(function(a) {
                if ($$addthis.isMouseLeaveOrEnter(a || event, this)) $(this).addClass("on")
            }).mouseout(function(a) {
                if ($$addthis.isMouseLeaveOrEnter(a || event, this)) $(this).removeClass("on")
            }).children("a").click(m.listclick);
            $(i).find(".addlist .add_999").click(function(a) {
                $(i).find(".addlist a").unbind("click");
                var b = "";
                for (var c in $$addthis.favs) {
                    b += '<div class="li"><a class="add_' + $$addthis.favs[c].id + '" item="' + $$addthis.favs[c].id + '" href="#">' + $$addthis.favs[c].name + '</a></div>'
                }
                var d = $(m.addbox).find(".addlist");
                d.html(b);
                d.css({
                    "height": "192px",
                    "overflow": "auto",
                    "overflow-x": "hidden"
                });
                $(m.addbox).css({
                    "height": "auto"
                });
                $(i).find(".addlist a").click(m.listclick);
                return false
            });
            $(m).mouseout(function(a) {
                if ($$addthis.isMouseLeaveOrEnter(a || event, m)) {
                    m.timeOut = setTimeout(m.boxmouseout, $$addthis.timeDelayout)
                }
            });
            $(m.addbox).mouseover(function(a) {
                if ($$addthis.isMouseLeaveOrEnter(a || event, m.addbox)) {
                    if (m.e == "click") {
                        clearTimeout(m.timeOut)
                    } else if (m.e == "mouseover") {
                        m.boxmouseover(a);
                        clearTimeout(m.timeOut)
                    }
                }
            });
            $(m.addbox).mouseout(function(a) {
                if ($$addthis.isMouseLeaveOrEnter(a || event, m.addbox)) {
                    m.timeOut = setTimeout(m.boxmouseout, $$addthis.timeDelayout)
                }
            });
            g = btn_t = btn_u = h = i = j = null
        };
        m.listclick = function(a) {
            if ($(this).attr("item")) {
                if (Number($(this).attr("item")) == 0) {
                    $$addthis.localFav(m.t, m.u)
                } else if (Number($(this).attr("item")) == 888) {
                    window.print()
                } else {
                    $$addthis.gotourl('&id=' + $.attr(this, "item") + m.argStr)
                }
                $(m.addbox).hide();
                return false
            }
        };
        m.boxmouseover = function(a) {
            $$addthis.showposition($(m.addbox), $(m.addbox).find(".addshow"), $(m.addbox).find(".bgfrm"), $(m));
            $(m.addbox).show()
        };
        m.boxmouseout = function(a) {
            $(m.addbox).fadeOut()
        };
        if ($(m).attr("e") == "click") {
            $(m).click(function(a) {
                m.mouse_over(m, a);
                return false
            })
        } else {
            $(m).click(function(a) {
                return false
            }).mouseover(function(a) {
                m.mouse_over(m, a)
            })
        }
    },
    localFav: function(t, u) {
        try {
            window.external.AddFavorite(u, t)
        } catch(e) {
            try {
                window.sidebar.addPanel(t, u, "")
            } catch(e) {
                alert("使用快捷键 Ctrl+D 或 Cmd+D 来收藏此页！")
            }
        }
    },
    isMouseLeaveOrEnter: function(e, a) {
        if (e.type != 'mouseout' && e.type != 'mouseover') return false;
        var b = e.relatedTarget ? e.relatedTarget: e.type == 'mouseout' ? e.toElement: e.fromElement;
        while (b && b != a) b = b.parentNode;
        return (b != a)
    }
};