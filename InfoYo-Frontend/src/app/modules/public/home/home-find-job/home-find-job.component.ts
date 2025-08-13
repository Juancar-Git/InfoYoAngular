import { Component, OnInit } from '@angular/core';
import { HttpNoLogHomeService } from 'src/app/services/http.nologhome.service';

@Component({
  selector: 'app-home-find-job',
  templateUrl: './home-find-job.component.html',
  styleUrls: ['./home-find-job.component.css']
})
export class HomeFindJobComponent implements OnInit {

  findSection: {
    Id: number;
    Title: string;
    MoreFiltersBtn: string;
  } = {
      Id: 0,
      Title: '',
      MoreFiltersBtn: '',
    }

  findItems: { Id: number, Title: string, ItemBgImgPath: string, FilterName: string, FilterValue: string }[] = [];

  constructor(
    private httpNoLogHomeService: HttpNoLogHomeService
  ) { }

  ngOnInit(): void {
    this.ReadNoLogHomeFindSection(1);
    this.ReadNoLogHomeFindItems();
  }

  ReadNoLogHomeFindSection(id: number) {
    this.httpNoLogHomeService.ReadNoLogHomeFindSection(id)
      .subscribe((response: any) => {
        this.findSection = response.data;
      });
  }

  ReadNoLogHomeFindItems() {
    this.httpNoLogHomeService.ReadNoLogHomeFindItems()
      .subscribe((response: any) => {
        this.findItems = response.data;
      });
  }
}
