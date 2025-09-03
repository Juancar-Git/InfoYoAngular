import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SearchJobsIndexComponent } from './search-jobs-index.component';

describe('SearchJobsIndexComponent', () => {
  let component: SearchJobsIndexComponent;
  let fixture: ComponentFixture<SearchJobsIndexComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [SearchJobsIndexComponent]
    });
    fixture = TestBed.createComponent(SearchJobsIndexComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
