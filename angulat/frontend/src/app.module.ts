import {BrowserModule} from '@angular/platform-browser';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import {NgModule} from '@angular/core';
import {LocationStrategy, HashLocationStrategy} from '@angular/common';

import {PerfectScrollbarModule} from 'ngx-perfect-scrollbar';
import {PERFECT_SCROLLBAR_CONFIG} from 'ngx-perfect-scrollbar';
import {PerfectScrollbarConfigInterface} from 'ngx-perfect-scrollbar';

import {CoreModule} from './core/core.module';
import {SharedModule} from './shared/shared.module';
import {ToasterModule, ToasterService} from 'angular2-toaster/angular2-toaster';
import {I18nModule} from "@app/shared/i18n/i18n.module";
import {ApiModule} from "@app/api/api.module";
const DEFAULT_PERFECT_SCROLLBAR_CONFIG: PerfectScrollbarConfigInterface = {
  suppressScrollX: true
};

import {AppBreadcrumb2Module} from '@app/containers/breadcrumb2/app-breadcrumb2.module';
import {AppComponent} from './app.component';
import {DefaultLayoutComponent, FullScreenComponent} from './containers';
import {LoginComponent} from './views/login/login.component';

const APP_CONTAINERS = [
  DefaultLayoutComponent,
  FullScreenComponent
];

import {
  AppAsideModule,
  AppBreadcrumbModule,
  AppHeaderModule,
  AppFooterModule,
  AppSidebarModule,
} from '@coreui/angular';

// Import Locale
import {registerLocaleData} from '@angular/common';
import localeUa from '@angular/common/locales/ru-UA';
import localeRu from '@angular/common/locales/ru';
import localeEn from '@angular/common/locales/en';

registerLocaleData(localeUa, 'ua');
registerLocaleData(localeRu, 'ru');
registerLocaleData(localeEn, 'en');

// Import routing module
import {AppRoutingModule} from './app.routing';

// Import 3rd party components
import {BsDropdownModule} from 'ngx-bootstrap/dropdown';
import {TabsModule} from 'ngx-bootstrap/tabs';
import {ChartsModule} from 'ng2-charts';
// Progress
import {NgProgressModule} from 'ngx-progressbar';
import {NgProgressHttpModule} from "ngx-progressbar/http";
import {HttpClientModule} from "@angular/common/http";
import {FormsModule} from "@angular/forms";

@NgModule({
    imports: [
        CoreModule,
        SharedModule,
        I18nModule,
        AppBreadcrumb2Module,
        ApiModule,

        BrowserModule,
        BrowserAnimationsModule,
        AppRoutingModule,
        AppAsideModule,
        AppBreadcrumbModule.forRoot(),
        AppFooterModule,
        AppHeaderModule,
        AppSidebarModule,
        PerfectScrollbarModule,
        BsDropdownModule.forRoot(),
        TabsModule.forRoot(),
        ChartsModule,
        ToasterModule.forRoot(),
        NgProgressModule.withConfig({
            ease: 'easeInQuint',
            meteor: false,
            spinner: false
        }),
        NgProgressHttpModule,
        HttpClientModule,
        FormsModule,

    ],
  declarations: [
    AppComponent,
    LoginComponent,
    ...APP_CONTAINERS,
  ],
  providers: [{
    provide: LocationStrategy,
    useClass: HashLocationStrategy
  }],
  bootstrap: [AppComponent]
})
export class AppModule {
}
