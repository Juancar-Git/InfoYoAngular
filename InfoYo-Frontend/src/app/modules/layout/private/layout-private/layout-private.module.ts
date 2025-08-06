import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PrivateHeaderComponent } from './components/private-header/private-header.component';
import { MaterialModule } from 'src/app/modules/global/material.module';



@NgModule({
  declarations: [
    PrivateHeaderComponent
  ],
  imports: [
    CommonModule,
    MaterialModule
    
  ]
})
export class LayoutPrivateModule { }
