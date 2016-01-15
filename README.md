# Hyde

> This is a variation on the [Hyde](http://hyde.getpoole.com/) Jekyll theme by [@mdo](https://twitter.com/mdo). It features an alternative posts and sidebar layout, some typography tweaks, support for tags and categories, and is compatible with Jekyll 3.0. It's otherwise pretty much the same as the original.


Hyde is a brazen two-column [Jekyll](http://jekyllrb.com) theme that pairs a prominent sidebar with uncomplicated content. It's based on [Poole](http://getpoole.com), the Jekyll butler.

![Hyde screenshot](https://cloud.githubusercontent.com/assets/3727684/12344311/b85c3dd4-baf0-11e5-939b-ef328c9cc38d.png)


## Contents

- [Usage](#usage)
- [Options](#options)
  - [Sidebar menu](#sidebar-menu)
  - [Sticky sidebar content](#sticky-sidebar-content)
  - [Themes](#themes)
  - [Reverse layout](#reverse-layout)
- [License](#license)


## Usage

Fork this repo and clone your fork locally. `cd` into the directory and run:

```
gem install jekyll jekyll-gist redcarpet
```

To start the server, run:

```
jekyll serve
```

Visit [http://localhost:4000/](http://localhost:4000/) in a browser.

## Options

Hyde includes some customizable options, typically applied via classes on the `<body>` element.


### Sidebar menu

By default, the sidebar will contain a generated list of categories assigned to any of your posts.


### Sticky sidebar content

By default Hyde ships with a sidebar that affixes its content to the bottom of the sidebar. You can optionally disable this by removing the `.sidebar-sticky` class from the sidebar's `.container`. Sidebar content will then normally flow from top to bottom.

```html
<!-- Default sidebar -->
<div class="sidebar">
  <div class="container sidebar-sticky">
    ...
  </div>
</div>

<!-- Modified sidebar -->
<div class="sidebar">
  <div class="container">
    ...
  </div>
</div>
```


### Themes

Hyde ships with eight optional themes based on the [base16 color scheme](https://github.com/chriskempson/base16). Apply a theme to change the color scheme (mostly applies to sidebar and links).

![Hyde in red](https://cloud.githubusercontent.com/assets/3727684/12344316/c0835ed4-baf0-11e5-9238-8ba761a75aa1.png)

There are eight themes available at this time.

![Hyde theme classes](https://f.cloud.github.com/assets/98681/1817044/e5b0ec06-6f68-11e3-83d7-acd1942797a1.png)

To use a theme, add anyone of the available theme classes to the `<body>` element in the `default.html` layout, like so:

```html
<body class="theme-base-08">
  ...
</body>
```

To create your own theme, look to the Themes section of [included CSS file](https://github.com/poole/hyde/blob/master/public/css/hyde.css). Copy any existing theme (they're only a few lines of CSS), rename it, and change the provided colors.

### Reverse layout

![Hyde with reverse layout](https://cloud.githubusercontent.com/assets/3727684/12344317/c29492d8-baf0-11e5-8d12-828dc0b97395.png)

Hyde's page orientation can be reversed with a single class.

```html
<body class="layout-reverse">
  ...
</body>
```


## License

Open sourced under the [MIT license](LICENSE.md).

<3
