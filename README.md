bootmaker
=========

A `Makefile` for working with [Bootstrap](http://twitter.github.com/bootstrap).


Installation
------------

From the command line, run the following:

```bash
curl -L http://git.io/bootmake > Makefile
```

In order to take advantage of the `Makefile`, you will need to install `recess` with
[`npm`](http://npmjs.org/). Also, in order to automatically compile your
files, install `watchr`:

```bash
npm install -g recess
sudo gem install watchr
```

Then, create the necessary files with the following command:

```bash
make
```


Production
----------

To concatenate the CSS files when going into production, simple run:

```bash
make css
```

And edit the `index.html` file to point to `css/production.css` rather
than the separate Bootstrap files and your `dev.less` stylesheet.

```html
<link rel="stylesheet" href="css/production.css">
```


Automation
----------

If you've installed `watchr`, the CSS files can automatically be
compiled for you by running:

```bash
make watch
```

Now, everytime you save the `dev.less` file, the `production.css` file
will be updated. Pretty nifty, huh?

Make sure you also make the necessary changes to `index.html` to point
to the `production.css` file.


Serve
-----

Since it's best to use a simple HTTP server when creating your site, a
`serve` command has been added to the `Makefile`:

```bash
make serve
```

You can also specify what port you'd prefer to use:


```bash
make serve port=5555
```
