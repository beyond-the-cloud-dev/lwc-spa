# LWC Single Page Application

More details [here](https://beyondthecloud.dev/blog/salesforce-spa-using-lwc).

## Demo

![SPA Demo](/assets/spa-demo.gif)

## Architecture

![Architecture](/assets/spa-architecture.png)

## How to modify?

### Add new pages

1. Add new pages to `spaPages/tempalates`.
2. Edit `PAGE_ID_TO_TEMPLATE` in `spaPage.js`.

### Update configuration

1. Add new page config to `SpaController.cls`.
2. `pageId` should be the same as id in `PAGE_ID_TO_TEMPLATE`.
