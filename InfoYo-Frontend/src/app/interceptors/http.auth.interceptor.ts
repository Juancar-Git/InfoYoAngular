import { HttpEvent, HttpHandler, HttpInterceptor, HttpRequest } from "@angular/common/http";
import { HttpAuthService } from "../services/http.auth.service";
import { Injectable } from "@angular/core";
import { Observable } from "rxjs";

//Este interceptor agrega el header que se muestra al hacer una llamada a la api-secure REPASAR
@Injectable()
export class HttpAuthInterceptor implements HttpInterceptor{

    constructor(
        private httpAuthService: HttpAuthService
    ){}

    intercept(req: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
        const token = this.httpAuthService.getToken();
        if(token){
            const cloned = req.clone({
                headers: req.headers.set('Authorization', `Bearer ${token}`)
            });
            return next.handle(cloned);   
        }
        return next.handle(req);
    }
}