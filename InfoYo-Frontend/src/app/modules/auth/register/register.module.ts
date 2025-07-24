import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { IndexComponent } from './components/index/index.component';
import { RegisterLoginComponent } from './components/register-login/register-login.component';
import { RegisterIndexComponent } from './components/register-index/register-index.component';



@NgModule({
  declarations: [
    IndexComponent,
    RegisterLoginComponent,
    RegisterIndexComponent
  ],
  imports: [
    CommonModule
  ]
})
export class RegisterModule { }
