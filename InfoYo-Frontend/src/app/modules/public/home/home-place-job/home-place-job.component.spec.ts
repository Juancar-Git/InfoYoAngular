import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HomePlaceJobComponent } from './home-place-job.component';

describe('HomePlaceJobComponent', () => {
  let component: HomePlaceJobComponent;
  let fixture: ComponentFixture<HomePlaceJobComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [HomePlaceJobComponent]
    });
    fixture = TestBed.createComponent(HomePlaceJobComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
