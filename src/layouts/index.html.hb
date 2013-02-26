<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>{{document.title}}</title>
	{{#getBlock "styles" "/assets/css/styles.css" "/assets/css/fonts.css" "/assets/css/normalize.css"}}{{/getBlock}}
	{{#getBlock "meta"}}{{/getBlock}}
	<script src="js/vendor/modernizr.js"></script>
</head>

<body>
	<nav>
		<ul class="horizontal wide">
			<li class="separated"><a href="http://www.example.com">Blog</a></li>
			<li class="separated"><a href="http://www.example.com">Open Device Labs Germany</a></li>
			<li class="last"><a href="http://www.example.com">Open Device Labs Worldwide</a></li>
		</ul>
	</nav>

	<header class="container padded">
		<div class="row">
			<div class="col12">
				<img src="/assets/img/header.svg">
			</div>
		</div>
		<div class="row">
			<div class="col12">
				{{{document.content.hero}}}
			</div>
		</div>
	</header>

	<div class="container social-quicklinks"><div class="row">
		<div class="col12">
			<ul class="horizontal wide">
				<li>
					<img src="/assets/img/facebook.svg" width="16" height="16">
					<a href="{{{site.facebook}}}">Facebook</a>
				</li>
				<li>
					<img src="/assets/img/twitter.svg" width="16" height="16">
					<a href="http://www.twitter.com/{{site.twitter}}">@{{site.twitter}}</a>
				</li>
				<li>
					<img src="/assets/img/mail.svg" width="16" height="16">
					<a href="mailto:{{{site.email}}}">{{{site.email}}}</a>
				</li>
			</ul>
		</div>
	</div></div>

	<div class="container dark-tile-bg padded">
	<div class="row clearfix quickinfo">
		<div class="col4">
			{{{document.content.quickinfo-1}}}
		</div>
		<div class="col4">
			{{{document.content.quickinfo-2}}}
		</div>
		<div class="col4 last">
			{{{document.content.quickinfo-3}}}	
		</div>
	</div>

	<div class="row" id="device-table">
		<div class="col12">
			<table>
			    <thead>
			        <tr>
			            <th>Manufacturer</th>
			            <th>Model</th>
			            <th>OS / Version</th>
			            <th>Contributor</th>
			        </tr>
			    </thead>
			    <tbody>
			        {{#each document.devices}} 
			            <tr>
			                <td>{{this.manufacturer}}</td>
			                <td><span class="{{this.type}}"></span>{{this.model}}</td>
			                <td><span class="{{#lowercase this.os}}{{/lowercase}}"></span>{{this.os}} {{this.version}}</td>
			                <td>{{this.contributor}}</td>
			            </tr>
			        {{/each}}
			    </tbody>
			</table>
		</div>
	</div>
	</div>

	<div class="container padded">
	<div class="contact row clearfix">
		<div class="col6">
			{{{document.content.contact}}}
			<ul>
				<li><b>Twitter:</b> <a href="http://www.twitter.com/{{site.twitter}}">@{{site.twitter}}</a></li>
				<li><b>Telefon:</b> {{{site.phone}}}</li>
				<li><b>E-Mail:</b> <a href="mailto:{{{site.email}}}">{{{site.email}}}</a></li>
			</ul>
		</div>

		<div class="col6 last">
			{{{document.content.google-maps}}}
		</div>
	</div>
	</div>

	<div class="container dark-tile-bg padded">
	<div class="row clearfix">
		<div class="col4">
			<h2>News</h2>
			<p>The Hamburg Open Device Lab is located at the Office of <a href="http://www.fwd.io">FWD.IO</a> in Hamburg, Spitalerstraße 16, 5th floor. Close to the HVV station Mönckebergstraße and...</p>
			<p>The Hamburg Open Device Lab is located at the Office of <a href="http://www.fwd.io">FWD.IO</a> in Hamburg, Spitalerstraße 16, 5th floor. Close to the HVV station Mönckebergstraße and...</p>
		</div>
		<div id="twitter" class="col4">
			<h2>Twitter: @{{site.twitter}}</h2>
		</div>
		<div class="col4 last">
			<h2>Facebook</h2>
			<iframe src="http://www.facebook.com/plugins/likebox.php?href={{#safeurl site.facebook}}{{/safeurl}}&amp;show_faces=true&amp;colorscheme=light&amp;stream=false&amp;border_color&amp;header=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:99%;" allowTransparency="true"></iframe>
		</div>
	</div>
	</div>
	{{#if document.partner-logos}}
		<div class="container padded">
			<div class="row">
				<div class="col12">
					<h2>Meet our Partners</h2>
				</div>
			</div>
			<div class="row clearfix">
				{{#each document.partner-logos}}
					<div class="col3 last"><img src="{{this}}" alt="" class="center"></div>
				{{/each}}
			</div>
		</div>
	{{/if}}

	<footer>
		{{{document.content.footer}}}
	</footer>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<!-- local fallback -->
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1-8-3-min.js"><\/script>')</script>

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
{{#getBlock "scripts" "js/twitter.js"}}{{/getBlock}}

</body>
</html>