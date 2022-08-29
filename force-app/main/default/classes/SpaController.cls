public with sharing class SpaController {
    @AuraEnabled(cacheable=true)
    public static List<PageConfig> getPagesConfig() {
        // It's simple backend.
        // You can store config in custom metadata, settings or custom object.

        PageConfig home = new PageConfig();
        home.name = 'Home';
        home.isActive = true;
        home.isLandingPage = true;
        home.menuOrder = 1;
        home.pageId = 'home';

        PageConfig services = new PageConfig();
        services.name = 'Services';
        services.isActive = true;
        services.isLandingPage = false;
        services.menuOrder = 2;
        services.pageId = 'services';

        PageConfig about = new PageConfig();
        about.name = 'About';
        about.isActive = true;
        about.isLandingPage = false;
        about.menuOrder = 3;
        about.pageId = 'about';

        PageConfig contact = new PageConfig();
        contact.name = 'Contact';
        contact.isActive = true;
        contact.isLandingPage = false;
        contact.menuOrder = 4;
        contact.pageId = 'contact';

        return new List<PageConfig>{ home, services, about, contact };
    }

    public class PageConfig {
        @AuraEnabled
        public String name;
        @AuraEnabled
        public Boolean isActive = false;
        @AuraEnabled
        public Boolean isLandingPage = false;
        @AuraEnabled
        public Integer menuOrder = 1;
        @AuraEnabled
        public String pageId;
    }
}
