import { LightningElement, api } from 'lwc';

import home from './templates/home.html';
import services from './templates/services.html';
import about from './templates/about.html';
import contact from './templates/contact.html';
import notFound from './templates/404.html';

const PAGE_ID_TO_TEMPLATE = {
    home,
    services,
    about,
    contact,
    notFound
};

export default class SpaPages extends LightningElement {
    @api currentPageId;

    render() {
        return PAGE_ID_TO_TEMPLATE[this.currentPageId] || PAGE_ID_TO_TEMPLATE.notFound;
    }
}
