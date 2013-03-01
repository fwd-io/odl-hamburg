<script>
    if(!Modernizr.svg)
    {
        $("img").each(function() {
            var oldSrc = $(this).attr("src");
            var newSrc = "/assets/img/bitmaps" + oldSrc.slice(oldSrc.lastIndexOf("/"), oldSrc.lastIndexOf(".")) + ".png";
            $(this).attr("src", newSrc);
        });
    }
</script>