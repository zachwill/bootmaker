bootmaker
=========

A `Makefile` for working with [Bootstrap](http://twitter.github.com/bootstrap).


Installation
------------

From the command line, run the following:

    curl -L http://git.io/bootmake > Makefile

You will need to install `recess` with
[`npm`](http://npmjs.org/) and [`node.js`](http://nodejs.org/#download):

    npm install -g recess

Then, create the necessary files with the following command:

    make


Production
----------

To concatenate the CSS files when going into production, simple run:

    make css

And edit the `index.html` file to point to `css/production.css` rather
than the separate Bootstrap files and your `dev.less` stylesheet.

    <link rel="stylesheet" href="css/production.css">
