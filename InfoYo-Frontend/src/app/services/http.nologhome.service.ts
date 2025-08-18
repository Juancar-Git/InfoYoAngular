import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";


@Injectable({
    providedIn: 'root'
})

export class HttpNoLogHomeService{

    constructor(
        private httpClient: HttpClient
    ){}

    ReadNoLogHomeCareerSection(id: number){
        return this.httpClient.get('http://localhost:8803/api/WNoLogCompanySection/' + id);
    }

    ReadNoLogHomeFindSection(id: number){
        return this.httpClient.get('http://localhost:8803/api/WNoLogFiltersSection/' + id);
    }

    ReadNoLogHomePlaceSection(id: number){
        return this.httpClient.get('http://localhost:8803/api/WNoLogCitiesSection/' + id);
    }
    
    ReadNoLogHomeOpportSection(id: number){
        return this.httpClient.get('http://localhost:8803/api/WNoLogSectorSection/' + id);
    }
}