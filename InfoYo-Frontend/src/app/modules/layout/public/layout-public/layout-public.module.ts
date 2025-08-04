import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PublicHeaderComponent } from './components/public-header/public-header.component';
import { PrivateHeaderComponent } from '../../private/private-header/private-header.component';

import { MaterialModule } from 'src/app/modules/global/material.module';


@NgModule({
  declarations: [
    PublicHeaderComponent,
    PrivateHeaderComponent
  ],
  imports: [
    CommonModule,
    MaterialModule
    
  ],
  exports: [
    PublicHeaderComponent,
    PrivateHeaderComponent
  ]
})
export class LayoutPublicModule { }
