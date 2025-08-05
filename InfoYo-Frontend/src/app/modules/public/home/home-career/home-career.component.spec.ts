import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HomeCareerComponent } from './home-career.component';

describe('HomeCareerComponent', () => {
  let component: HomeCareerComponent;
  let fixture: ComponentFixture<HomeCareerComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [HomeCareerComponent]
    });
    fixture = TestBed.createComponent(HomeCareerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
