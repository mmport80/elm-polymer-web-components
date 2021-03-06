# Elm Polymer Web Components

An exploration of using web components in Elm.

`Paper.elm` is a small shim which maps onto ['Material Design' web components.](https://elements.polymer-project.org/browse?package=paper-elements) 

##Steps to build

- Install Bower

`npm install bower`

- Install the web components and JavaScript shim

`bower install`

- Compile the Elm code

`elm make Main.elm --output elm.js`

- Open `index_.html` in a browser (Chrome has a security check which stops you from running the JavaScript direct from the local file system, you need to view it via `locahost`)

##What Does & Doesn't Work

- Chrome is a no go, most likely due to not having to rely on the shim, its implementation is fundamentally different from the others

- Development Safari & Firefox do OK

  - Some web components in nested TEA structures have problems (the present examples fall into this category)
  
  - Most work flawlessly when not in nested TEA components, which is promising
