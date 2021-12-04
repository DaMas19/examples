import {Component, OnInit} from '@angular/core';
import {BaseComponent} from "../../core/component/base/base.component";
import {select, Store} from "@ngrx/store";
import * as fromTerminalLife from "../../api/store/terminal-life";
import {exhaustMap, takeUntil} from "rxjs/internal/operators";
import {DashboardService} from "./dashboard.service";
import {tap} from "rxjs/operators";

@Component({
  templateUrl: 'dashboard.component.html'
})
export class DashboardComponent extends BaseComponent implements OnInit {
  public terminalLifeItemsCount = 0;
  public terminalLifeReloading = false;

  constructor(
    private storeTerminalLife: Store<fromTerminalLife.ITerminalLifeState>,
    public dashboardService: DashboardService
  ) {
    super();
  }

  ngOnInit(): void {
    this.storeTerminalLife
      .pipe(
        select(fromTerminalLife.getTerminalLifeLastItem),
        tap(() => this.terminalLifeReloading = true),
        exhaustMap(x => this.dashboardService.getTerminalLifeItems2()),
        takeUntil(this.ngUnsubscribe),
      )
      .subscribe((x: number) => {
        this.terminalLifeItemsCount = x;
        this.terminalLifeReloading = false;
      })
    ;
  }

}
