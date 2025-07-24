import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RegisterIndexComponent } from './register-index.component';

describe('RegisterIndexComponent', () => {
  let component: RegisterIndexComponent;
  let fixture: ComponentFixture<RegisterIndexComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [RegisterIndexComponent]
    });
    fixture = TestBed.createComponent(RegisterIndexComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
