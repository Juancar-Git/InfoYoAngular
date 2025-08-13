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

    ReadNoLogHomeCareerItems(){
        return this.httpClient.get('http://localhost:8803/api/WNoLogCompanyItem/')
    }

    ReadNoLogHomeCareerLearnItems(){
        return this.httpClient.get('http://localhost:8803/api/WNoLogCompanyPublicityItem/')
    }

    ReadNoLogHomeFindSection(id: number){
        return this.httpClient.get('http://localhost:8803/api/WNoLogFiltersSection/' + id);
    }

    ReadNoLogHomeFindItems(){
        return this.httpClient.get('http://localhost:8803/api/WNoLogFiltersItem/');
    }

    ReadNoLogHomePlaceSection(id: number){
        return this.httpClient.get('http://localhost:8803/api/WNoLogCitiesSection/' + id);
    }
    
    ReadNoLogHomePlaceItems(){
        return this.httpClient.get('http://localhost:8803/api/WNoLogCitiesItem/');
    }

    ReadNoLogHomeOpportSection(id: number){
        return this.httpClient.get('http://localhost:8803/api/WNoLogSectorSection/' + id);
    }
    
    ReadNoLogHomeOpportItems(){
        return this.httpClient.get('http://localhost:8803/api/WNoLogSectorItem/');
    }
}