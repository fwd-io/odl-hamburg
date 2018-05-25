<!doctype html>
<html lang="{{document.languageName}}">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{site.title}}</title>
    {{#ifCond document.languageName "en"}}
      <link rel="canonical" href="http://hamburg.opendevicelab.de">
      <link rel="alternate" href="http://hamburg.opendevicelab.de/de.html" hreflang="de">
    {{/ifCond}}
    {{#ifCond document.languageName "de"}}
      <link rel="alternate" href="http://hamburg.opendevicelab.de" hreflang="en">
    {{/ifCond}}
    <link rel="stylesheet" type="text/css" href="/assets/css/styles.css">
    {{#getBlock "meta"}}{{/getBlock}}
    <script src="/assets/js/vendor/modernizr.js"></script>
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
          <a class="donate" href="mailto:{{{site.email}}}"><img src="{{document.pathToRoot}}/assets/img/donate_device.svg">{{document.content.donate-button}}</a>
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
                <td><span class="{{this.type}}"></span>{{{this.model}}}{{#if this.private}} *{{/if}}</td>
                <td><span class="{{#lowercase this.os}}{{/lowercase}}"></span>{{this.version}}</td>
                <td>{{{this.contributor}}}</td>
              </tr>
              {{/each}}
            </tbody>
          </table>
          <p>{{document.content.private-device}}</p>
        </div>
      </div>
    </div>

    <div class="container padded">
      <div class="contact row clearfix">
        <div class="col6">
          {{{document.content.contact}}}
          <ul>
            <li><b>Twitter:</b> <a href="http://www.twitter.com/{{site.twitter}}">@{{site.twitter}}</a></li>
            <li><b>Facebook:</b> <a href="{{site.facebook}}">{{site.title}}</a></li>
            {{#if site.phone}}<li><b>Phone:</b> {{{site.phone}}}</li>{{/if}}
            <li><b>E-Mail:</b> <a href="mailto:{{{site.email}}}">{{{site.email}}}</a></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="container dark-tile-bg padded">
      <div class="row clearfix">
        <div class="col4">
          <h2>Twitter: @{{site.twitter}}</h2>
          <a class="twitter-timeline" height="300" data-chrome="noheader nofooter transparent" data-dnt="true" href="https://twitter.com/odl_hh" data-widget-id="{{site.twitterWidgetId}}">Tweets by @odl_hh</a>
        </div>
        <div class="col4 odls-germany">
          {{{document.content.odls-germany}}}
        </div>
        <div class="col4 last">
          <h2>Facebook</h2>
          <iframe src="//www.facebook.com/plugins/likebox.php?href={{#safeurl site.facebook}}{{/safeurl}}&amp;width=292&amp;height=400&amp;show_faces=true&amp;show_border=false&amp;colorscheme=light&amp;stream=false&amp;border_color&amp;header=false&amp;appId={{site.appid}}" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:100%; height:300px;" allowTransparency="true"></iframe>
        </div>
      </div>
    </div>
    {{#if partnerLogos}}
      <div class="container logos padded">
        <div class="row">
          <div class="col12">
            {{{document.content.partner}}}
          </div>
        </div>

        <div class="row center">
          {{#each partnerLogos}}
            <a href="{{this.url}}" target="_blank"><img src="{{this.path}}" alt="" class="logo"></a>
          {{/each}}
        </div>
        {{#if document.content.nokia-program}}
          <div class="row">
            <div class="col12 nokia-program">
              {{{document.content.nokia-program}}}
            </div>
          </div>
        {{/if}}
      </div>
    {{/if}}

    <footer>
      {{{document.content.footer}}}
    </footer>

  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <!-- local fallback -->
  <script>window.jQuery || document.write('<script src="assets/js/vendor/jquery.1.9.1.min.js"><\/script>')</script>

  <script src="/assets/js/main.js"></script>

  </body>
</html>
