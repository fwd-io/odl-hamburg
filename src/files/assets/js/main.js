
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

$(function() {
  $.ajax({
    type: 'GET',
    url: "http://api.opendevicelab.com/?countries=Germany",
    async: false,
    jsonpCallback: 'listODLs',
    dataType: 'jsonp',
    crossDomain: 'true'
  });  
});



window.listODLs = function(data) {
  var $odlList = $('.odls-germany-list');

  data.sort(function(a, b) {
      var x = a.loc.city,
        y = b.loc.city;
      return ((x < y) ? -1 : ((x > y) ? 1 : 0));
  });

  $.each(data, function(i, odl) {
    var url = odl.urls[0];
    $odlList.append('<li>');
    if(odl.loc && odl.loc.city ){
      $odlList.append(odl.loc.city + " - ");
    }
    if(url) {
      $odlList.append('<a href="' + url.url +'">' + odl.name + '</a>');
    } else {
      $odlList.append(odl.name);
    }
    $odlList.append('<li>');
  });
  
}