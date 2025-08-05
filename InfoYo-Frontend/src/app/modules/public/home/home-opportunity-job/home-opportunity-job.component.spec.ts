import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HomeOpportunityJobComponent } from './home-opportunity-job.component';

describe('HomeOpportunityJobComponent', () => {
  let component: HomeOpportunityJobComponent;
  let fixture: ComponentFixture<HomeOpportunityJobComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [HomeOpportunityJobComponent]
    });
    fixture = TestBed.createComponent(HomeOpportunityJobComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
