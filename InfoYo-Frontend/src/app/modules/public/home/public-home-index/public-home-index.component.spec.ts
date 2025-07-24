import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PublicHomeIndexComponent } from './public-home-index.component';

describe('PublicHomeIndexComponent', () => {
  let component: PublicHomeIndexComponent;
  let fixture: ComponentFixture<PublicHomeIndexComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [PublicHomeIndexComponent]
    });
    fixture = TestBed.createComponent(PublicHomeIndexComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
