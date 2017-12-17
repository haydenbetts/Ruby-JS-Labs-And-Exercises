# Introduction to Basscss

## Objectives

1. Explain how classes guide our approach to styles
2. Describe the main components of Basscss

## An empty canvas
When creating an application, we sometimes start our styling from scratch. Another way of styling our application,
though, would be to use frameworks — CSS that has already been written for us. By doing so, we don't have to write any
(or much, at least) CSS ourselves. This is both a blessing and a curse: we save a lot of time by following the
conventions and styling of the framework, but we give up customizability.

Usually, CSS frameworks are used to either quickly mock up a front-end for an application prototype, or if the developer
isn't particularly inclined to write their own CSS. Since CSS is kind of out of scope for this course, we'll stick to
using frameworks for now. This will allow us to completely focus on our JavaScript, instead of fiddling too much with
HTML and CSS. This lesson focuses on showing the high-level features of Basscss — feel free to use the links below to
explore at your own pace.


## Staying classy
![Classy Tom Hanks](https://media.giphy.com/media/HDNcjt5ELkJSE/giphy.gif)

Frameworks provide us with a whole slew of classes that we can use to style our application. Classes allow us to reuse
styling across several components. There are usually also _utility_ classes that provide us with handy styles, like
aligning text, rounding corners, and so on.

## Basscss
Basscss is a very lightweight CSS framework that focuses on sane defaults and more complex layout possibilities. It's
not an all-in-one framework like Bootstrap or Foundation, but it will help us to help lay out the application in a
better way. It doesn't make our buttons like fancy or anything like that, but we're not concerned with that right now.


## Typography
Basscss has default styles for all [typographic elements](http://www.basscss.com/#basscss-typography) (`<p>`, `<h1>`,
`<h2>`, `<ul>`, and so on). Less styling to worry about!


## Grid
The [grid](http://www.basscss.com/#basscss-grid) in Basscss uses a standard 12-column layout system that can also be
found in Bootstrap, Foundation and other frameworks. Since we're trying to stay ahead of the curve though, we'll forego
this grid in favor of the flexbox layout, which will solve most of our problems.

## Flexbox
Flexbox is a relatively new concept that more and more developers are starting to use. It allows for powerful layout
solutions that can't be achieved using traditional layouting techniques (that use floats, much like the grid found in
Basscss). Basscss provides us with handy [layout classes](http://www.basscss.com/#basscss-flexbox) that we can use to
quickly create any kind of layout we want. In a nutshell, we can tell elements using flexbox to stretch or shrink, or
to align themselves if needed. This abstraction is very powerful, and was super complicated to do before the arrival of
Flexbox. Welcome to the (almost) golden age of web layout!

## Scrappy-Doo's nametag
Let's play around with Basscss a bit! Scrappy-Doo needs a new nametag, and we just happen to need some practice with our
new CSS framework. A match made in heaven! This is what our end result will look like:

![Scrappy-Doo's nametag](http://i.imgur.com/w4QpqBZ.png)

_**Editor's note**: All of these images will eventually be updated to reflect that this is Scrappy-Doo and not Scooby-Doo. We regret the error and have assigned our curriculum team to go educate themselves on classic cartoon characters._

First of all, let's add Basscss to our project. We can include a `link`
tag directly to the source in between `<head>` and `</head>`:

```
<link href="https://npmcdn.com/basscss@8.0.1/css/basscss.min.css" rel="stylesheet">
```

That was easy. Now let's add a `div` to the body with a capped width at 300px. Usually we don't have to do this, but since
we're starting from scratch, we need to cheat a little to get going. Otherwise, our nametag would take up all available
width (i.e. the entire browser)!

```html
<body>
  <div style="width: 300px">

  </div>
</body>
```

Now that that's done, we'll add the container for our nametag that holds all other components:

```html
<body>
  <div style="width: 300px">
    <div class="flex">

    </div>
  </div>
</body>
```

Yay, flexbox! Next, we'll add Scrappy-Doo's image, as well as his name and job title.

```html
<div style="width: 300px">
  <div class="flex">
    <img src="http://i.imgur.com/KveOp9g.png" alt="Scrappy-Doo">
    <div>
      <h1>Scrappy-Doo</h1>
      <small>Pet Detective</small>
    </div>
  </div>
</div>
```

![step 1](https://curriculum-content.s3.amazonaws.com/skills-based-js/basscss_step_1.png)

Hmm... well, we're slowly getting there, but not quite yet. First things first, let's add a rounded border to our flex
container:

```html
<div style="width: 300px">
  <div class="flex border rounded">
    <img src="http://i.imgur.com/KveOp9g.png" alt="Scrappy-Doo">
    <div>
      <h1>Scrappy-Doo</h1>
      <small>Pet Detective</small>
    </div>
  </div>
</div>
```

![step 2](https://curriculum-content.s3.amazonaws.com/skills-based-js/basscss_step_2_border_rounded.png)

Now we'll remove any existing margins on the title, and align items in the center:

```html
<div style="width: 300px">
  <div class="flex items-center border rounded">
    <img src="http://i.imgur.com/KveOp9g.png" alt="Scrappy-Doo">
    <div>
      <h1 class="m0">Scrappy-Doo</h1>
      <small>Pet Detective</small>
    </div>
  </div>
</div>
```

![step 3](https://curriculum-content.s3.amazonaws.com/skills-based-js/basscss_step_3_items-centered_m0.png)

We don't want to the image to take up more space than it should, so let's add a `flex-none` class to make it shrink:

```html
<img class="flex-none" src="http://i.imgur.com/KveOp9g.png" alt="Scrappy-Doo">
```

The text is kind of pushed up against the image... Let's fix that by adding a bit of right margin to the image:

```html
<img class="flex-none mr1" src="http://i.imgur.com/KveOp9g.png" alt="Scrappy-Doo">
```

![step 4](https://curriculum-content.s3.amazonaws.com/skills-based-js/basscss_step_4_flex-none_mr1.png)

Great! As a finishing touch, we'll use one of Basscss' typographic utilities, `.caps`, to make our job title appear in
uppercase letters:

```html
<small class="caps">Pet Detective</small>
```

![step 5](https://curriculum-content.s3.amazonaws.com/skills-based-js/basscss_step_5_caps.png)

And that's it! Here's the full code for the nametag:

```html
<div style="width: 300px">
  <div class="flex items-center border rounded">
    <img class="flex-none mr1" src="http://i.imgur.com/KveOp9g.png" alt="Scrappy-Doo">
    <div>
      <h1 class="m0">Scrappy-Doo</h1>
      <small class="caps">Pet Detective</small>
    </div>
  </div>
</div>
```

We just created a visual component that looks _kind_ of custom, without writing any CSS ourselves. Pretty neat, huh?
Feel free to dive into Basscss' documentation to learn even more, so your applications can take on a whole new look!

## Resources
- [Basscss](http://www.basscss.com)
