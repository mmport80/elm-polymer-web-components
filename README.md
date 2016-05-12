# Elm Polymer Web Components

##Steps to build

- Install Bower

`npm install bower`

- Install the web components and JavaScript shim

`bower install`

- Compile the Elm code

`elm make Main.elm --output elm.js`

##What Does & Doesn't Work

- Chrome is a no go, most likely due to not having to rely on the shim

- Development Safari & Firefox do OK

  - some web components in nested TEA structures have problems however (i.e. the present example fall into this category)
  
  - most work flawless when not in nested TEA components which is promising
