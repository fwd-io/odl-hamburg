<!doctype html>
<html lang="{{document.languageName}}">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{site.title}}</title>
    {{#ifCond document.languageName "en"}} 
      <link rel="canonical" href="http://hamburg.opendevicelab.de">
    {{/ifCond}}
    {{#getBlock "styles" document.pathToRoot "/assets/css/styles.css"}}{{/getBlock}}
    {{#getBlock "meta"}}{{/getBlock}}
    <script src="{{document.pathToRoot}}/assets/js/vendor/modernizr.js"></script>
    <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', '{{site.gid}}']);
      _gaq.push(['_setDomainName', '{{site.gdomain}}']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    </script> 
  </head>

  <body>
    <nav>
      <ul class="horizontal wide">
        <li><a target="_blank" href="http://www.opendevicelab.com">Open Device Labs Worldwide</a></li>
      </ul>
      <span class="language-switch">
        <a href="{{document.pathToRoot}}/{{document.name}}">{{document.languageName}}</a>
        {{#each document.i18n}}
          <a href="{{../document.pathToRoot}}/{{this.file}}.html">{{this.languageName}}</a>
        {{/each}}
      </span>
    </nav>

    <header class="container padded">
      <div class="row">
        <div class="col12">
          <img src="{{document.pathToRoot}}/assets/img/header.svg">
        </div>
      </div>
      <div class="row">
        <div class="col12">
          <p>
          {{{document.content.hero}}}
          </p>
        </div>
      </div>
    </header>

    <div class="container social-quicklinks">
      <div class="row">
        <div class="col12">
          <ul class="horizontal wide">
            <li>
              <img src="{{document.pathToRoot}}/assets/img/facebook.svg" width="16" height="16">
              <a target="_blank" href="{{{site.facebook}}}">Facebook</a>
            </li>
            <li>
              <img src="{{document.pathToRoot}}/assets/img/twitter.svg" width="16" height="16">
              <a target"_blank" href="http://www.twitter.com/{{site.twitter}}">@{{site.twitter}}</a>
            </li>
            <li>
              <img src="{{document.pathToRoot}}/assets/img/mail.svg" width="22" height="16">
              <a href="mailto:{{{site.email}}}">{{{site.email}}}</a>
            </li>
          </ul>
        </div>
      </div>
    </div>

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
          <button class="donate"><img src="{{document.pathToRoot}}/assets/img/donate_device.svg">{{document.content.donate-button}}</button>
        </div>
      </div>

      <div class="row" id="device-table">
        <div class="col12">
          <h2>Our Devices</h2>
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
              {{#each devices}} 
              <tr {{#if this.dead }} class="dead" {{/if}}>
                <td>{{{this.manufacturer}}}</td>
                <td><span class="{{this.type}}"></span>{{{this.model}}}</td>
                <td><span class="{{#lowercase this.os}}{{/lowercase}}"></span>{{this.os}} {{this.version}}</td>
                <td>{{{this.contributor}}}</td>
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
            {{#if site.phone}}<li><b>Phone:</b> {{{site.phone}}}</li>{{/if}}
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
        <div id="twitter" class="col4">
          <h2>Twitter: @{{site.twitter}}</h2>
        </div>
        <div class="col4 odls-germany">
          {{{document.content.odls-germany}}}
        </div>
        <div class="col4 last">
          <h2>Facebook</h2>
          <iframe src="//www.facebook.com/plugins/likebox.php?href={{#safeurl site.facebook}}{{/safeurl}}&amp;width=292&amp;height=258&amp;show_faces=true&amp;colorscheme=light&amp;stream=false&amp;border_color&amp;header=false&amp;appId={{site.appid}}" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:99%; height:300px;" allowTransparency="true"></iframe>
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
        <div class="row center">
          {{#each document.partner-logos}}
            <img src="{{this}}" alt="" class="logo">
          {{/each}}
        </div>
      </div>
    {{/if}}

    <footer>
      {{{document.content.footer}}}
    </footer>

  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <!-- local fallback -->
  <script>window.jQuery || document.write('<script src="assets/js/vendor/jquery.1.9.1.min.js"><\/script>')</script>

  {{#getBlock "scripts" document.pathToRoot "/assets/js/main.js"}}{{/getBlock}}

  </body>
</html>