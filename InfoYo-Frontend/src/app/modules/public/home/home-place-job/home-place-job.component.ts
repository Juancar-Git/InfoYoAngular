import { Component, OnInit } from '@angular/core';
import { HttpNoLogHomeService } from 'src/app/services/http.nologhome.service';

@Component({
  selector: 'app-home-place-job',
  templateUrl: './home-place-job.component.html',
  styleUrls: ['./home-place-job.component.css']
})
export class HomePlaceJobComponent implements OnInit{

  placeSection: {
    Id: number;
    Title: string;
    MoreCitiesBtn: string;
  } = {
      Id: 0,
      Title: '',
      MoreCitiesBtn: '',
    }

  placeItems: { Id: number, Title: string, ItemBgImgPath: string, FilterName: string, FilterValue: string }[] = [];

  constructor(
      private httpNoLogHomeService: HttpNoLogHomeService
    ) { }
  
    ngOnInit(): void {
      this.ReadNoLogHomePlaceSection(1);
      this.ReadNoLogHomePlaceItems();
    }

    ReadNoLogHomePlaceSection(id: number) {
    this.httpNoLogHomeService.ReadNoLogHomePlaceSection(id)
      .subscribe((response: any) => {
        this.placeSection = response.data;
      });
  }

  ReadNoLogHomePlaceItems() {
    this.httpNoLogHomeService.ReadNoLogHomePlaceItems()
      .subscribe((response: any) => {
        this.placeItems = response.data;
      });
  }
}
