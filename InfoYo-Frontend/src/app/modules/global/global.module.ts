import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MenuGlobalComponent } from './components/menu-global/menu-global.component';

import {MatIconModule} from '@angular/material/icon';
import {MatButtonModule} from '@angular/material/button';
import {MatToolbarModule} from '@angular/material/toolbar';
import { LayoutPublicModule } from '../layout/public/layout-public/layout-public.module';

@NgModule({
  declarations: [
    MenuGlobalComponent,
  ],
  imports: [
    CommonModule,

    LayoutPublicModule,

    MatToolbarModule,
    MatIconModule,
    MatButtonModule
  ],
  exports: [
    MatToolbarModule,
    MatIconModule,
    MatButtonModule
  ]
})
export class GlobalModule { }
