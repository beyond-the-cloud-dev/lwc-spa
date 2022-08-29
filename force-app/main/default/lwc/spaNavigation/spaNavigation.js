import { LightningElement, api } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

export default class SpaNavigation extends NavigationMixin(LightningElement) {
    @api currentPageId;
    @api menuItems;
    @api currentPageReference;

    navigate(event) {
        this[NavigationMixin.Navigate](
            Object.assign({}, this.currentPageReference, {
                state: Object.assign({}, this.currentPageReference.state, {
                    c__page: event.target.dataset.page
                })
            }),
            false
        );
    }
}
