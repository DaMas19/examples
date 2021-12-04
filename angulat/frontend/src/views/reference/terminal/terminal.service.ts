import {Injectable, OnDestroy} from '@angular/core';
import {BehaviorSubject, Observable, Subject} from "rxjs";
import {of} from "rxjs/internal/observable/of";
import {catchError, takeUntil} from "rxjs/operators";
import {ITerminal, ITerminalGroup} from "../../../api/models";
import {I18nService} from "../../../shared/i18n/i18n.service";
import {NotifyService} from "../../../core/store/notify";
import {TerminalApiService} from "../../../api/services";

@Injectable()
export class TerminalService implements OnDestroy {
  protected ngUnsubscribe = new Subject<void>();

  public reloading$ = new BehaviorSubject<boolean>(false);
  public items$ = new BehaviorSubject<ITerminal[]>([]);

  public reloadingGroup$ = new BehaviorSubject<boolean>(false);
  public groupItems$ = new BehaviorSubject<ITerminalGroup[]>([]);

  constructor(
    private terminalApiService: TerminalApiService,
    private notify: NotifyService,
    public i18n: I18nService
  ) {
  }

  ngOnDestroy() {
    this.ngUnsubscribe.next();
    this.ngUnsubscribe.complete();
  }

  private getError(error: any): Observable<any> {
    this.reloading$.next(false);
    this.reloadingGroup$.next(false);

    this.notify.showError(error);
    return of(null);
  }

  public clearItems() {
    this.items$.next([]);
  }

  public getItems() {
    this.reloading$.next(true);
    this.terminalApiService.getItems()
      .pipe(takeUntil(this.ngUnsubscribe))
      .subscribe((items: ITerminal[]) => {
          this.items$.next(items);
          this.reloading$.next(false);
        },
        catchError(error => this.getError(error)),
      );
  }

  // Terminal groups
  public getGroupItems(value: number) {
    this.reloadingGroup$.next(true);
    this.terminalApiService.getGroupItems(value)
      .pipe(takeUntil(this.ngUnsubscribe))
      .subscribe((items: ITerminalGroup[]) => {

          this.groupItems$.next(items);
          this.reloadingGroup$.next(false);
        }
        , error => {
          this.reloadingGroup$.next(false);
          this.notify.showError('Error get data');
          return of(null);
        }
      );
  }

  public clearGroupItems() {
    this.groupItems$.next([]);
  }

}
