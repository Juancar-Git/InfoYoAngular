import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { MaterialModule } from 'src/app/modules/global/material.module';
import { HttpAuthService } from 'src/app/services/http.auth.service';

@Component({
  selector: 'app-login-index',
  templateUrl: './login-index.component.html',
  styleUrls: ['./login-index.component.css'],
  standalone: true,
  imports: [MaterialModule]
})
export class LoginIndexComponent {
  form: FormGroup;

  constructor(
    private auth: HttpAuthService,
    private router: Router,
    private fb: FormBuilder
  ) {
    this.form = this.fb.group({
      user: ['', [Validators.required, Validators.minLength(3)]],
      passw: ['', [Validators.required, Validators.minLength(5)]]
    })
  }
  
  onSubmit(){
    if(this.form.valid){
      this.login(this.user, this.passw);
    }else{
      this.form.markAllAsTouched();
    }
  }

  get user(){
    return this.form.get('user');
  }

  get passw(){
    return this.form.get('passw');
  }

  login(userName: any, password: any) {
    this.auth.login(userName, password).subscribe({
      next: (res) => {
        this.auth.setToken(res.token);
        //this.router.navigate(['/dashboard']);
        alert('Login válido');
      },
      error: () => alert('login inválido')
    });
  }
}
