import { Component, OnInit } from '@angular/core';
import { HttpNoLogHomeService } from 'src/app/services/http.nologhome.service';

interface WNoLogFiltersItems{
  Id: number;
  Title: string;
  ItemBgImgPath: string;
  FilterName: string;
  FilterValue: string;
}

interface findSection{
  Id: number;
  Title: string;
  MoreFiltersBtn: string;

  WNoLogFiltersItems: WNoLogFiltersItems[];
}

@Component({
  selector: 'app-home-find-job',
  templateUrl: './home-find-job.component.html',
  styleUrls: ['./home-find-job.component.css']
})
export class HomeFindJobComponent implements OnInit {

  findSection: findSection = {
      Id: 0,
      Title: '',
      MoreFiltersBtn: '',

      WNoLogFiltersItems: [],
    }

  constructor(
    private httpNoLogHomeService: HttpNoLogHomeService
  ) { }

  ngOnInit(): void {
    this.ReadNoLogHomeFindSection(1);
  }

  ReadNoLogHomeFindSection(id: number) {
    this.httpNoLogHomeService.ReadNoLogHomeFindSection(id)
      .subscribe((response: any) => {
        this.findSection = response.data;
      });
  }
}
