import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PrivateHomeIndexComponent } from './private-home-index.component';

describe('PrivateHomeIndexComponent', () => {
  let component: PrivateHomeIndexComponent;
  let fixture: ComponentFixture<PrivateHomeIndexComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [PrivateHomeIndexComponent]
    });
    fixture = TestBed.createComponent(PrivateHomeIndexComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
