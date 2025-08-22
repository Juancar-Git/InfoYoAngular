import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';


import { MaterialModule } from '../../global/material.module';
import { LoginIndexComponent } from './components/login-index/login-index.component';




@NgModule({
  declarations: [
    LoginIndexComponent
  ],
  imports: [
    CommonModule,
    MaterialModule
]
})
export class LoginModule { }
