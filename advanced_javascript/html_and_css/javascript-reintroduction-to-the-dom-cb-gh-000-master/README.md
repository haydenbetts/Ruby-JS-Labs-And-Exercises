# Reintroduction to the DOM

## Objectives

1. Explain how DOM nodes are written
2. Describe how to structure the DOM
3. Explain the difference between inline and block elements

## DOM syntax
![Syntax](https://media.giphy.com/media/3o6MbkZSYy4mI3gLYc/giphy.gif)

When writing DOM, we're doing so in HTML, a markup language for web pages. Nodes are elements that have a starting tag, and an ending tag. Some nodes only have a starting tag. Those are called _self-closing_ elements. These elements do not have any content nested inside of them (more technically, they are called a _void_ element).

An example of a normal tag would be the paragraph:

```html
<p>I am a paragraph.</p>
```

An example of a self-closing tag, an image:

```html
<img src="https://media.giphy.com/media/3o6MbkZSYy4mI3gLYc/giphy.gif" alt="A policeman">
```

In self-closing tags, the trailing `/` is optional. This is valid too:

```html
<img src="https://media.giphy.com/media/3o6MbkZSYy4mI3gLYc/giphy.gif" alt="A policeman" />
```

## Trees and leaves
![A tree.](https://media.giphy.com/media/2XflxzDTUtH7VxyfoT6/giphy.gif)

DOM structure can be compared to a tree. You have one big tree trunk from which all other elements spring forth. Those elements can also have children themselves, leading to a branched structure. For clarity's sake, let's assume our tree trunk starts at `<body>`, because those are the only elements that are actually visible on the webpage.

To _nest_ items in an element, we simply add the content between its starting and ending tag:

```html
<body>
  <main>
    <p>I am a nested paragraph in the main element!</p>
  </main>
</body>
```

## Building blocks
![Lego](https://media.giphy.com/media/3ZALZoBtI1KJa/giphy.gif)

Every HTML element has a `display` value. This value can be many things (including `none`, which hides the elements), but the default value for most elements is either `block` or `inline`.

### Block elements
Block elements do two things: they start on a new line, and stretch horizontally. They take up all available width. These elements are usually used to contain other elements within, and are generally used for layout purposes.

Examples of block elements are `<div>`, `<h1>`, `<form>`, `<main>`, `<p>` and so on. MDN has a great [list of all block elements][html-block-elements].

### Inline elements
Contrary to block-level elements, inline elements are shy and less greedy. They only take up as much space as they need. Inline elements can _only_ contain text and other inline elements. If you start adding block-level elements to an inline element, your browser will do all sorts of funky stuff to fix the markup mistakes. Best to avoid that!

Examples of inline elements are `<span>`, `<em>`, `<strong>`, `<a>`, `<img>` and so on. MDN also has a great [list of all inline elements][html-inline-elements].

### Taking it for a spin
Enough chit-chat, let's write some HTML! In the `index.html` file, we'll place all of our markup. Remember, everything goes in the `<body>` tag!

First, we'll add a title to our page:

```html
<h1>My HTML adventure</h1>
```

Next, we'll add a paragraph below the title. We'll also add some highlighted bits of text to the paragraph to make it stand out a little.

```html
<p>
  We're writing HTML markup to display in our <strong>browser</strong>.
  We're basically telling computers what to do. <em>Neat!</em>
</p>
```

What's happening above is that we added some _inline_ elements to our paragraph to style things a little. The `<strong>` tag makes any text within look **important**. It's usually bolded in browsers by default. The `<em>` tag allows us to **emphasize** certain text. This text is typically rendered as italic in browsers.

Oh, wait! Maybe people don't know what HTML is yet. Let's help them out by including a link to MDN to give them a quick explanation. We'll use the`<a>` tag for this.

```html
<p>
  We're writing <a href="https://developer.mozilla.org/en-US/docs/Web/HTML">HTML</a> markup to display in our
  <strong>browser</strong>. We're basically telling computers what to do. <em>Neat!</em>
</p>
```

Wait a minute. What's that weird `href` thing doing there? Well, that's an attribute. Attributes allow us to configure or customize an element to change their behavior. In this case, we're telling the `<a>` tag, which is a clickable link, to take the user's browser to the specified URL in the `href` attribute.

Lastly, we'll add a table below the paragraph to recap some of the stuff in this lesson:

```html
<table>
  <thead>
    <tr>
      <th>Element name</th>
      <th>Display value</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>h1</td>
      <td>block</td>
    </tr>
    <tr>
      <td>p</td>
      <td>block</td>
    </tr>
    <tr>
      <td>strong</td>
      <td>inline</td>
    </tr>
    <tr>
      <td>em</td>
      <td>inline</td>
    </tr>
  </tbody>
</table>
```

Woah. That's a **lot** of markup! If you take a look at the result though, you'll see that it's a fairly complex visual — it's a table! Our table consists of a header and a body. The header allows us to give the columns a name, and the table body contains the rows of content. Both `<thead>` and `<tbody>` tags contains rows, which are represented as `<tr>` (table row). These rows then contains columns (or cells). In the `<thead>` row, cells are represented as `<th>`, while cells in `<tbody>` have their content in `<td>` tags.

This sums up our crash course on HTML! We've barely scratched the surface — so it's definitely a good idea to check out MDN to up your HTML game!

## Resources
- [HTML element reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)

[html-block-elements]: https://developer.mozilla.org/en/docs/Web/HTML/Block-level_elements
[html-inline-elements]: https://developer.mozilla.org/en-US/docs/Web/HTML/Inline_elements

<p class='util--hide'>View <a href='https://learn.co/lessons/javascript-reintroduction-to-the-dom'>Reintroduction to the DOM</a> on Learn.co and start learning to code for free.</p>
