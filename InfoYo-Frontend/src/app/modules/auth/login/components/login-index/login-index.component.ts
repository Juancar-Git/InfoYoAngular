import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { MaterialModule } from 'src/app/modules/global/material.module';
import { HttpAuthService } from 'src/app/services/http.auth.service';

@Component({
  selector: 'app-login-index',
  templateUrl: './login-index.component.html',
  styleUrls: ['./login-index.component.css'],
  standalone: true,
  imports:[MaterialModule]
})
export class LoginIndexComponent {
   userName = '';
   password = '';

   constructor(
    private auth: HttpAuthService, 
    private router: Router){}

    login(){
      this.auth.login(this.userName, this.password).subscribe({
        next: (res) => {
          this.auth.setToken(res.token);
          //this.router.navigate(['/dashboard']);
          alert('Login válido');
        },
        error: () => alert('login inválido')
      });
    }
}
