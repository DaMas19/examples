import {Injectable, OnDestroy} from '@angular/core';
import {BehaviorSubject, Observable, Subject} from "rxjs";
import {NotifyService} from "../../core/store/notify";
// import {I18nService} from "../../shared/i18n/i18n.service";
import {TerminalApiService} from "../../api/services";
import {catchError, map, takeUntil, tap} from "rxjs/operators";
import {of} from "rxjs/internal/observable/of";
import {ITerminalLife} from "../../api/models";

@Injectable({
  providedIn: 'root'
})
export class DashboardService implements OnDestroy {
  protected ngUnsubscribe = new Subject<void>();
  public terminalLifeReloading$ = new BehaviorSubject<boolean>(false);

  constructor(
    private terminalApiService: TerminalApiService,
    private notify: NotifyService,
  ) {
  }

  public getTerminalLifeItems2(): Observable<number> {
    this.terminalLifeReloading$.next(true);
    return this.terminalApiService.getInfoLife()
      .pipe(
        map((x: ITerminalLife[]) => x.filter((item) => item.is_ping === false).length),
        tap(() => this.terminalLifeReloading$.next(false)),
        catchError(e => {
          this.terminalLifeReloading$.next(false);
          this.notify.showError('Error get data');
          return of(0);
        })
      )
      ;
  }
  ngOnDestroy() {
    this.ngUnsubscribe.next();
    this.ngUnsubscribe.complete();
  }
}
