import { Component, OnInit } from '@angular/core';
import { HttpNoLogHomeService } from 'src/app/services/http.nologhome.service';

interface WNoLogCitiesItems{
  Id: number;
  Title: string;
  ItemBgImgPath: string;
  FilterName: string;
  FilterValue: string;
}

interface placeSection{
    Id: number;
    Title: string;
    MoreCitiesBtn: string;

    WNoLogCitiesItems: WNoLogCitiesItems[];
  }


@Component({
  selector: 'app-home-place-job',
  templateUrl: './home-place-job.component.html',
  styleUrls: ['./home-place-job.component.css']
})
export class HomePlaceJobComponent implements OnInit{

  placeSection: placeSection = {
      Id: 0,
      Title: '',
      MoreCitiesBtn: '',

      WNoLogCitiesItems: [],
    }

  constructor(
      private httpNoLogHomeService: HttpNoLogHomeService
    ) { }
  
    ngOnInit(): void {
      this.ReadNoLogHomePlaceSection(1);
    }

    ReadNoLogHomePlaceSection(id: number) {
    this.httpNoLogHomeService.ReadNoLogHomePlaceSection(id)
      .subscribe((response: any) => {
        this.placeSection = response.data;
      });
  }
}
