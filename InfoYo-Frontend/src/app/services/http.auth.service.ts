import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";


@Injectable({
    providedIn: 'root'
})
export class HttpAuthService{
    private apiUrl = 'http://localhost:8803/api/Auth/';
    private tokenKey = 'authToken';

    constructor(
        private httpClient: HttpClient
    ){}

    login(userName: string, password: string){
        return this.httpClient.post<{ token: string }>(this.apiUrl, {userName, password});
    }

    setToken(token: string){
        sessionStorage.setItem(this.tokenKey, token);
    }

    getToken(): string | null {
        return sessionStorage.getItem(this.tokenKey);
    }

    isLogedIn(): boolean{
        return !!this.getToken();
    }

    logout(){
        sessionStorage.removeItem(this.tokenKey);
    }
}