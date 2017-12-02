# Rendering Collections Lab

## Objectives

 1. Use the `collection` keyword with partials
 2. Pass a collection to the render method 
 3. Handle empty collections

## Overview

Let's go back to our store domain.  We had an admin portion of the site where admins could check on their orders and invoices. We've changed it slightly so that, rather than static pages with stubs for orders, we've seeded the database with actual order data. Let's refactor the admin portion of the store to use partials and render collections.

## Instructions

We've provided a seed file so you can have some data to play around with –– run `rake db:seed` to seed the database.

1. Refactor the `invoices.html.erb` view to render a collection of partials.
2. Refactor the `orders.html.erb` view to render a collection of partials.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/rendering-collections-lab' title='Rendering Collections Lab'>Rendering Collections Lab</a> on Learn.co and start learning to code for free.</p>
