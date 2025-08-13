import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";

@Injectable({
    providedIn: 'root'
})

export class HttpFooterService{

    constructor(
        private httpClient: HttpClient
    ){}

    ReadLinkSectionColFooter(){
        return this.httpClient.get('http://localhost:8803/api/WFtrLinksSectionCol/');
    }
}