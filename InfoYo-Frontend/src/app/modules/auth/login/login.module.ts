import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { IndexComponent } from './components/index/index.component';
import { LoginIndexComponent } from './components/login-index/login-index.component';



@NgModule({
  declarations: [
    IndexComponent,
    LoginIndexComponent
  ],
  imports: [
    CommonModule
  ]
})
export class LoginModule { }
