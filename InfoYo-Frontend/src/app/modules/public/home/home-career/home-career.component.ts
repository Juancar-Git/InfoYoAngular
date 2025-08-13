import { Component, OnInit } from '@angular/core';
import { HttpNoLogHomeService } from 'src/app/services/http.nologhome.service';

@Component({
  selector: 'app-home-career',
  templateUrl: './home-career.component.html',
  styleUrls: ['./home-career.component.css']
})
export class HomeCareerComponent implements OnInit{

  careerSection: {
    Id: number;
    Title: string;
    ShowMoreTextBtn : string;
    DefaultMiniIconImgPath: string;
    DefaultMiniImgPath: string;
    DefaultOffersQtyText: string;
  } = {
    Id: 0,
    Title: '',
    ShowMoreTextBtn : '',
    DefaultMiniIconImgPath: '',
    DefaultMiniImgPath: '',
    DefaultOffersQtyText: '',
  }

  careerItems: {Id: number, Title: string, Description: string, ItemBgImgPath: string, ItemBtn: string, ItemBtnUrl: string } [] = [];
  careerLearnItems: {Id: number, Title: string, Description: string, ItemBgImgPath: string, ItemBtn: string, ItemBtnUrl: string } [] = [];

  learnCardClasses : string[] = ['learn-first', 'learn-second']

  constructor(
    private httpNoLogHomeService: HttpNoLogHomeService
  ){}

  ngOnInit(): void {
      this.ReadNoLogHomeCareerSection(1);
      this.ReadNoLogHomeCareerItems();
      this.ReadNoLogHomeCareerLearnItems();
  }

  ReadNoLogHomeCareerSection(id: number){
        this.httpNoLogHomeService.ReadNoLogHomeCareerSection(id)
        .subscribe((response: any) => {
          this.careerSection = response.data;
        });
    }

    ReadNoLogHomeCareerItems(){
        this.httpNoLogHomeService.ReadNoLogHomeCareerItems()
        .subscribe((response: any) => {
          this.careerItems = response.data;
        });
    }

    ReadNoLogHomeCareerLearnItems(){
        this.httpNoLogHomeService.ReadNoLogHomeCareerLearnItems()
        .subscribe((response: any) => {
          this.careerLearnItems = response.data;
        });
    }
}
