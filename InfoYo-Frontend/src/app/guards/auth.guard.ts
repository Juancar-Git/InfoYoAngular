import { Injectable } from "@angular/core";
import { CanActivate, Router } from "@angular/router";
import { HttpAuthService } from "../services/http.auth.service";


@Injectable({
    providedIn: 'root'
})
export class AuthGuard implements CanActivate{

    constructor(
        private auth: HttpAuthService, private router: Router
    ){}
    canActivate(): boolean {
        if(this.auth.isLogedIn()){
            return true;
        }else{
            this.router.navigate(['/login']);
            return false;
        }
    }
    
}