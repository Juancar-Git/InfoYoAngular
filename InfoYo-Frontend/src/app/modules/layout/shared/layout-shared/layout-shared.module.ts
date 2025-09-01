import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SharedFooterComponent } from './components/shared-footer/shared-footer.component';
import { MaterialModule } from 'src/app/modules/global/material.module';
import { SimpleHeaderComponent } from './components/simple-header/simple-header.component';



@NgModule({
  declarations: [
    SharedFooterComponent,
    SimpleHeaderComponent
  ],
  imports: [
    CommonModule,
    MaterialModule
  ],
  exports: [
    SharedFooterComponent,
    SimpleHeaderComponent
  ]
})
export class LayoutSharedModule { }
