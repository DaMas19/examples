import {NgModule} from '@angular/core';
import {CommonModule} from '@angular/common';

import {TerminalRoutingModule} from './terminal-routing.module';
import {TerminalComponent} from './terminal.component';
import {I18nModule} from '../../../shared/i18n/i18n.module';
import {TerminalService} from "./terminal.service";
import {TerminalListComponent} from './terminal-list/terminal-list.component';
import {DevExtremeModule, DxDataGridModule, DxValidationSummaryModule, DxValidatorModule} from 'devextreme-angular';
import {TabsModule} from "ngx-bootstrap/tabs";
import {ModalModule} from "ngx-bootstrap/modal";
import {FormsModule, ReactiveFormsModule} from "@angular/forms";
import {NgSelectModule} from "@ng-select/ng-select";
import {BtnEditGroup2Module} from "../../../shared/components/btn-edit-group2/btn-edit-group2.module";
import {BsDropdownModule} from "ngx-bootstrap/dropdown";
import { TerminalGroupRefComponent } from './terminal-group-ref/terminal-group-ref.component';

@NgModule({
  declarations: [
    TerminalComponent,
    TerminalListComponent,
    TerminalGroupRefComponent,
  ],
    imports: [
        CommonModule,
        TerminalRoutingModule,
        I18nModule,
        DxDataGridModule,
        DevExtremeModule,
        TabsModule,
        ModalModule,
        FormsModule,
        ReactiveFormsModule,
        NgSelectModule,
        DxValidatorModule,
        DxValidationSummaryModule,
        BtnEditGroup2Module,
        BsDropdownModule,
    ],
  providers: [TerminalService]
})
export class TerminalModule {
}
