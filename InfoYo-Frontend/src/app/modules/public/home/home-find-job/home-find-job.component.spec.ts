import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HomeFindJobComponent } from './home-find-job.component';

describe('HomeFindJobComponent', () => {
  let component: HomeFindJobComponent;
  let fixture: ComponentFixture<HomeFindJobComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [HomeFindJobComponent]
    });
    fixture = TestBed.createComponent(HomeFindJobComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
