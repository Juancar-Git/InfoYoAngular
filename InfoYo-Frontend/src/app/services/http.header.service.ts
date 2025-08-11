import { HttpClient, HttpParams } from "@angular/common/http";
import { Injectable } from "@angular/core";

@Injectable({
    providedIn: 'root'
})

export class HttpHeaderService{
    
    constructor(
        private httpClient: HttpClient
    ){}
    
    ReadNoLogHome(id: number){
        return this.httpClient.get('http://localhost:8803/api/wnologheader/' + id);
    }

    ReadNoLogNavBarHome(){
        return this.httpClient.get('http://localhost:8803/api/WNoLogNavBarLink/')
    }

}