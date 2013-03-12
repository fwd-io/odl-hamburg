# Docpad Skeleton for Open Device Labs

Want to start a local Open Device Lab? Need a simple one-page website without spending to much time developing it?
Try the docpad.odl skeleton. Enter your texts, a list of devices and some data about your site, and you're good to go!

You can have a look at how the skeleton will look [here](http://fwd-io.github.com/odl.docpad).

## Getting Started

0. [Install Docpad](http://docpad.org/docs/install)
1. Clone the odl.docpad repository

        git clone git://github.com/fwd-io/odl.docpad.git

2. Install the dependencies

        cd odl.docpad
        npm install

22. To make docpad generate your site and refresh it when files are changed, type

        docpad run

3. Take a look at your fresh website at [http://localhost:9778](http://localhost:9778)
4. Customize to your liking! For details see the customization section below.

For example usage of the skeleton, check out the [ODL Hamburg site](https://www.github.com/fwd-io/odl-hamburg). For hints regarding docpad, have a look at the [Docpad Documentation](http://docpad.org/docs/).

Enjoy!

## Customization

### Twitter

With odl.docpad comes a small javascript utility that reads twitter status updates and inserts them into the site. It can be found in `documents/js/twitter.js`. To use it, enter your twitter username (Without the '@') in the `user` variable of the script.

### docpad.coffeee 

Here you can enter some general information about your identity (e.g. facebook, twitter, email) which will be used for links, widgets and information on the page.

### i18n

Create a separate document in `documents/` for every language you want to support. Name your default file `index.html`. For every document, fill out the `languageName` value for the document itself and the `languageName` and `file` values in the `i18n` list for the other documents. Your language options will automagically appear in the upper right corner of the documents.

## Deploy

### Github Pages

Deployment to github pages is very simple. With the skeleton comes a shell script that automates the process of pushing the contents of the `out/` folder to the gh-pages branch for you. Just run:

    ./gh-pages.sh

//Note//: For that script to work, you must have specified a remote named `origin` that points to your github repository. Also, if you have development plugins like the livereload-plugin installed, you may want to run `docpad generate --env static` instead of `docpad run` which will generate static files in `out/` without the livereload scripts.

### Any other server

To generate files for a webserver, use
    
    docpad generate --env static

This will render your website into `out/` and make sure the files are compatible to a static environment like an apache server.