import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MenuGlobalComponent } from './components/menu-global/menu-global.component';

import { LayoutPublicModule } from '../layout/public/layout-public/layout-public.module';
import { MaterialModule } from './material.module';
import { HomeModule } from '../public/home/home.module';


@NgModule({
  declarations: [
    MenuGlobalComponent
  ],
  imports: [
    CommonModule,

    MaterialModule,
    
    LayoutPublicModule,
    HomeModule

  ],
  exports: [

  ]
})
export class GlobalModule { }
