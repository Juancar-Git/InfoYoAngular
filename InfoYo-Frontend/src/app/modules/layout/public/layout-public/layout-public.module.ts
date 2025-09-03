import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { PublicHeaderComponent } from './components/public-header/public-header.component';

import { MaterialModule } from 'src/app/modules/global/material.module';
import { PublicDefaultHeaderComponent } from './components/public-default-header/public-default-header.component';


@NgModule({
  declarations: [
    PublicHeaderComponent,
    PublicDefaultHeaderComponent,

  ],
  imports: [
    CommonModule,
    MaterialModule,
    RouterModule
    
  ],
  exports: [
    PublicHeaderComponent,
    PublicDefaultHeaderComponent,
  ]
})
export class LayoutPublicModule { }
