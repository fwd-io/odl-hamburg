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
				<p>{{document.content.hero}}<b>Open Device Lab</b> is established to help the local web developer community to be able to test their work on the ever-growing range of mobile devices.</p>
			</div>
		</div>
	</header>

	<div class="container social-quicklinks"><div class="row">
		<div class="col12">
			<ul class="horizontal wide">
				<li>
					<img src="/assets/img/facebook.svg" width="16" height="16">
					<a href="http://www.facebook.com">Facebook</a>
				</li>
				<li>
					<img src="/assets/img/twitter.svg" width="16" height="16">
					<a href="http://www.twitter.com/{{document.twitter}}">Twitter: @{{document.twitter}}</a>
				</li>
				<li>
					<img src="/assets/img/mail.svg" width="16" height="16">
					<a href="mailto:&#104;&#101;&#108;&#108;&#111;&#064;&#111;&#112;&#101;&#110;&#100;&#101;&#118;&#105;&#099;&#101;&#108;&#097;&#098;&#046;&#100;&#101;">E-Mail: &#104;&#101;&#108;&#108;&#111;&#064;&#111;&#112;&#101;&#110;&#100;&#101;&#118;&#105;&#099;&#101;&#108;&#097;&#098;&#046;&#100;&#101;</a>
				</li>
			</ul>
		</div>
	</div></div>

	<div class="container dark-tile-bg padded">
	<div class="row clearfix quickinfo">
		<div class="col4">
			<h2>Über Open Device Labs</h2>
			<p>
				Open Device Labs - der kostenlose Gerätepark für Entwickler. ODLs ist eine neue, weltweite Bewegung um Software-Entwicklern Zugriff auf möglichst viele Testgeräte zu ermöglichen.
			</p>
			<a href="www.example.com">Die Idee hinter den ODLs</a>
		</div>
		<div class="col4">
			<h2>ODL Hamburg</h2>
			<p>Open Device Labs - der kostenlose Gerätepark für Entwickler. ODLs ist eine neue, weltweite Bewegung um Software-Entwicklern Zugriff auf möglichst viele Testgeräte zu ermöglichen.</p>
		</div>
		<div class="col4 last">
			<h2>Mitmachen!</h2>
			<p>Open Device Labs - der kostenlose Gerätepark für Entwickler. ODLs ist eine neue, weltweite Bewegung um Software-Entwicklern Zugriff auf möglichst viele Testgeräte zu ermöglichen.</p>
			<button class="donate"><img src="/assets/img/donate_device.svg" width="44" height="65">Donate a device</button>
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
			<h2>Visit Us!</h2>
			<p>
				The Hamburg Open Device Lab is located at the Office of <a href="http://www.fwd.io">FWD.IO</a> in Hamburg, Spitalerstraße 16, 5th floor. Close to the HVV station Mönckebergstraße and to the main station. You are welcome to visit us anytime, just give us a short message in advance!
			</p>

			<ul>
				<li><b>Twitter:</b> <a href="http://www.twitter.com/{{document.twitter}}">@{{document.twitter}}</a></li>
				<li><b>Telefon:</b> 1234 1234</li>
				<li><b>E-Mail:</b> hello@opendevicelab.de</li>
			</ul>
		</div>

		<div class="col6 last">
			<iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=de&amp;geocode=&amp;q=spitalerstra%C3%9Fe+16&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=45.8712,107.138672&amp;ie=UTF8&amp;hq=spitalerstra%C3%9Fe+16&amp;hnear=&amp;radius=15000&amp;ll=53.551719,10.001433&amp;spn=0.071946,0.071946&amp;t=m&amp;output=embed"></iframe>
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
			<h2>Twitter: @ODL_HH</h2>
		</div>
		<div class="col4 last">
			<h2>Facebook</h2>
			<iframe src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fplatform&amp;show_faces=true&amp;colorscheme=light&amp;stream=false&amp;border_color&amp;header=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:99%;" allowTransparency="true"></iframe>
		</div>
	</div>
	</div>
	
	<div class="container padded">
		<div class="row">
			<div class="col12">
				<h2>Meet our Partners</h2>
			</div>
		</div>
		<div class="row">
			<div class="col3"><img src="/assets/img/donate_device.svg" alt="" class="center"></div>
			<div class="col3"><img src="/assets/img/donate_device.svg" alt="" class="center"></div>
			<div class="col3"><img src="/assets/img/donate_device.svg" alt="" class="center"></div>
			<div class="col3 last"><img src="/assets/img/donate_device.svg" alt="" class="center"></div>
		</div>
	</div>

	<footer>
		<p><span class="responsive-line">The Open Device Lab Hamburg is kindly provided by <img src="/assets/img/fwdio.svg" alt="FWD.IO" height="20em"><span><span class="responsive-line"> (C) 2012 | Design by LAUNCH/CO<span></p>
	</footer>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<!-- local fallback -->
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.8.3.min.js"><\/script>')</script>

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