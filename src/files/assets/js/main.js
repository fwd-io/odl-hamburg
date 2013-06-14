
// Twitter timeline
!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");

// svg fallback
if(!Modernizr.svg)
{
    $("img").each(function() {
        var oldSrc = $(this).attr("src");
        var newSrc = "/assets/img/bitmaps" + oldSrc.slice(oldSrc.lastIndexOf("/"), oldSrc.lastIndexOf(".")) + ".png";
        $(this).attr("src", newSrc);
    });
}