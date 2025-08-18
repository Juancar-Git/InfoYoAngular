import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";

@Injectable({
    providedIn: 'root'
})

export class HttpHeaderService{
    
    constructor(
        private httpClient: HttpClient
    ){}
    
    ReadNoLogHomeHeader(id: number){
        return this.httpClient.get('http://localhost:8803/api/wnologheader/' + id);
    }
}