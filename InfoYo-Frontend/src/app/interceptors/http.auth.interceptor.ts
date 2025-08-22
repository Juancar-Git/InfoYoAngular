import { HttpEvent, HttpHandler, HttpInterceptor, HttpRequest } from "@angular/common/http";
import { HttpAuthService } from "../services/http.auth.service";
import { Injectable } from "@angular/core";
import { Observable } from "rxjs";

//Este interceptor agrega el header que se muestra al hacer una llamada a la api-secure REPASAR
//En sintesis los interceptor insertan las cabeceras para no repetir código y lo hace si es necesario
// En el caso de no necesitar crear la cabecera, deja el paquete como está
@Injectable()
export class HttpAuthInterceptor implements HttpInterceptor{

    constructor(
        private httpAuthService: HttpAuthService
    ){}

    intercept(req: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
        //Obtenemos el token, en este caso, el service lo hace desde el session storage
        const token = this.httpAuthService.getToken();
        //Si no es false,null,'',0,-0,undefined,NaN(No numéricon en operaciones matemáticas) 
        if(token){
            //Clona la petición y trabaja con esta, la cual envía finalmente, no con la original
            const cloned = req.clone({
                //Añade el key-value para el parámetro Authorization de la cabecera, el cual necesitamos
                //para la comunicación segura. Esta la está esperando el backend
                headers: req.headers.set('Authorization', `Bearer ${token}`)
            });
            //El paquete sigue por su camino con la versión clonada
            return next.handle(cloned);   
        }
        //El paquete sigue por su camino con la versión original
        return next.handle(req);
    }
}