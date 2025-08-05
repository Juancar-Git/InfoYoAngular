import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ImagePublicityComponent } from './image-publicity.component';

describe('ImagePublicityComponent', () => {
  let component: ImagePublicityComponent;
  let fixture: ComponentFixture<ImagePublicityComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ImagePublicityComponent]
    });
    fixture = TestBed.createComponent(ImagePublicityComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
