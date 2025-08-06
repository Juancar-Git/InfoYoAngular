import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SharedFooterComponent } from './components/shared-footer/shared-footer.component';
import { MaterialModule } from 'src/app/modules/global/material.module';



@NgModule({
  declarations: [
    SharedFooterComponent
  ],
  imports: [
    CommonModule,
    MaterialModule
  ],
  exports: [
    SharedFooterComponent
  ]
})
export class LayoutSharedModule { }
