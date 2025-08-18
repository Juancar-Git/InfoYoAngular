import { Component, OnInit } from '@angular/core';
import { HttpNoLogHomeService } from 'src/app/services/http.nologhome.service';

interface WNoLogCompanyItems{
  Id: number;
  Title: string;
  Description: string;
  ItemBgImgPath: string;
  ItemBtn: string;
  ItemBtnUrl: string;
};

interface WNoLogCompanyPublicityItems{
  Id: number;
  Title: string;
  Description: string;
  ItemBgImgPath: string;
  ItemBtn: string;
  ItemBtnUrl: string;
}

interface careerSection{
    Id: number;
    Title: string;
    ShowMoreTextBtn : string;
    DefaultMiniIconImgPath: string;
    DefaultMiniImgPath: string;
    DefaultOffersQtyText: string;

    WNoLogCompanyItems: WNoLogCompanyItems[];
    WNoLogCompanyPublicityItems: WNoLogCompanyPublicityItems[];
  }
  
@Component({
  selector: 'app-home-career',
  templateUrl: './home-career.component.html',
  styleUrls: ['./home-career.component.css']
})
export class HomeCareerComponent implements OnInit{

  learnCardClasses : string[] = ['learn-first', 'learn-second']

  careerSection: careerSection = {
    Id: 0,
    Title: '',
    ShowMoreTextBtn : '',
    DefaultMiniIconImgPath: '',
    DefaultMiniImgPath: '',
    DefaultOffersQtyText: '',

    WNoLogCompanyItems: [],
    WNoLogCompanyPublicityItems: []
  }

  constructor(
    private httpNoLogHomeService: HttpNoLogHomeService
  ){}

  ngOnInit(): void {
      this.ReadNoLogHomeCareerSection(1);
  }

  ReadNoLogHomeCareerSection(id: number){
        this.httpNoLogHomeService.ReadNoLogHomeCareerSection(id)
        .subscribe((response: any) => {
          this.careerSection = response.data;
        });
    }
}
