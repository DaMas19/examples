import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TerminalGroupRefComponent } from './terminal-group-ref.component';

describe('TerminalGroupRefComponent', () => {
  let component: TerminalGroupRefComponent;
  let fixture: ComponentFixture<TerminalGroupRefComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TerminalGroupRefComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TerminalGroupRefComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
