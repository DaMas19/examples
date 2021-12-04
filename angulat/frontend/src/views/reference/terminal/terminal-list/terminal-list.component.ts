import {Component, OnDestroy, OnInit, ViewChild} from '@angular/core';
import {I18nService} from "../../../../shared/i18n/i18n.service";
import {BaseComponent} from "../../../../core/component/base/base.component";
import {TerminalService} from "../terminal.service";
import {takeUntil} from "rxjs/operators";
import {DxDataGridComponent} from "devextreme-angular";
import * as ExcelJS from "exceljs/dist/exceljs.min.js";
import * as SaveAs from 'file-saver';
import {exportDataGrid} from "devextreme/excel_exporter";

@Component({
  selector: 'app-terminal-list',
  templateUrl: './terminal-list.component.html',
  styleUrls: ['./terminal-list.component.scss']
})
export class TerminalListComponent extends BaseComponent implements OnInit, OnDestroy {
  @ViewChild(DxDataGridComponent, {static: false}) dataGrid: DxDataGridComponent;
  public selectedRowIndex = -1;
  private gridComponent: any;

  public reloading: boolean;
  public detailData: { isExpand: boolean, key: number } = {isExpand: false, key: null};

  public isMobile = false;
  public isTableFilterRow = false;
  public isTableSearchPanel = false;

  recordActions: any;

  constructor(
    public i18n: I18nService,
    public terminalService: TerminalService,
  ) {
    super();
  }

  ngOnInit(): void {
    this.terminalService.reloading$
      .pipe(takeUntil(this.ngUnsubscribe))
      .subscribe((value: boolean) => {
        this.reloading = value;
      });

    this.terminalService.getItems();
  }

  ngOnDestroy() {
  }

  detailReloading(key: number): boolean {
    return this.detailData.isExpand && this.detailData.key === key;
  }

  onRowExpanding(event) {
    this.detailData = {isExpand: true, key: event.key};
  }

  onRowCollapsed(event) {
    this.detailData = {isExpand: false, key: event.key};
  }

  selectedChanged(e) {
    this.selectedRowIndex = e.component.getRowIndexByKey(e.selectedRowKeys[0]);
    this.gridComponent = e.component;
  }

  refreshDataGrid() {
    this.terminalService.getItems();
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
