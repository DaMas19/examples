import {Component, Input, OnDestroy, OnInit, ViewChild} from '@angular/core';
import {takeUntil} from "rxjs/operators";
import {DxDataGridComponent} from "devextreme-angular";
import {exportDataGrid} from "devextreme/excel_exporter";
import * as ExcelJS from "exceljs/dist/exceljs.min.js";
import * as SaveAs from 'file-saver';
import {BaseComponent} from "../../../../core/component/base/base.component";
import {I18nService} from "../../../../shared/i18n/i18n.service";
import {TerminalService} from "../terminal.service";
import {ITerminal} from "../../../../api/models";


@Component({
  selector: 'app-terminal-group-ref',
  templateUrl: './terminal-group-ref.component.html',
  styleUrls: ['./terminal-group-ref.component.scss'],
  providers: [TerminalService]
})
export class TerminalGroupRefComponent extends BaseComponent implements OnInit, OnDestroy {
  @ViewChild(DxDataGridComponent, {static: false}) dataGrid: DxDataGridComponent;
  public selectedRowIndex = -1;
  private gridComponent: any;

  public reloading: boolean;
  public isMobile = false;

  recordActions: any;

  @Input()
  public item: ITerminal;

  @Input()
  public set isLoading(value: boolean) {
    if (value) {
      this.terminalService.getGroupItems(this.item.id);
    }
  };

  constructor(
    public i18n: I18nService,
    public terminalService: TerminalService,
  ) {
    super();
  }

  ngOnInit(): void {
    this.terminalService.reloadingGroup$
      .pipe(takeUntil(this.ngUnsubscribe))
      .subscribe((value: boolean) => {
        this.reloading = value;
      });
    this.recordActions = [
      {
        value: '2',
        text: this.i18n.getTranslation('Delete'),
        icon: 'trash'
      },
    ];
  }

  ngOnDestroy() {
    this.terminalService.clearGroupItems();
  }

  selectedChanged(e) {
    this.selectedRowIndex = e.component.getRowIndexByKey(e.selectedRowKeys[0]);
    this.gridComponent = e.component;
  }

  onActionsButton(e) {
  }

  refreshDataGrid() {
    this.terminalService.getGroupItems(this.item.id);
  }

  exportGridToExcel(e) {
    const workbook = new ExcelJS.Workbook();
    const worksheet = workbook.addWorksheet('Employees');

    exportDataGrid({
      component: e.component,
      worksheet: worksheet,
      autoFilterEnabled: true
    }).then(() => {
      workbook.xlsx.writeBuffer().then((buffer) => {
        SaveAs.saveAs(new Blob([buffer], {type: 'application/octet-stream'}), 'Terminals.xlsx');
      });
    });
    e.cancel = true;
  }


}
