import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MenuGlobalComponent } from './components/menu-global/menu-global.component';

import { LayoutPublicModule } from '../layout/public/layout-public/layout-public.module';
import { MaterialModule } from './material.module';
import { HomeModule } from '../public/home/home.module';
import { LayoutSharedModule } from '../layout/shared/layout-shared/layout-shared.module';
import { RouterModule } from '@angular/router';


@NgModule({
  declarations: [
    MenuGlobalComponent
  ],
  imports: [
    CommonModule,
    RouterModule,

    MaterialModule,
    
    LayoutPublicModule,
    LayoutSharedModule,
    HomeModule

  ],
  exports: [

  ]
})
export class GlobalModule { }
