import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { PublicHeaderComponent } from './components/public-header/public-header.component';

import { MaterialModule } from 'src/app/modules/global/material.module';


@NgModule({
  declarations: [
    PublicHeaderComponent,

  ],
  imports: [
    CommonModule,
    MaterialModule,
    RouterModule
    
  ],
  exports: [
    PublicHeaderComponent,
  ]
})
export class LayoutPublicModule { }
