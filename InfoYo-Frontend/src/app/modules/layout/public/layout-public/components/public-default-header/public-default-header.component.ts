import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { HttpHeaderService } from 'src/app/services/http.header.service';

interface WNoLogNavBarLinks{
  Id: number;
  Name: string; 
  LinkUrl: string;
};

interface HomeHeader {
    Id: number;
    BlockFilterTitle: string;
    CandidateAccessBtn: string;
    CandidateAccessBtnUrl: string;
    CompanyAccessBtn: string;
    CompanyAccessBtnUrl: string;
    HeadBgImgPath: string;
    HeadTitle: string;
    LocationFilterTitle: string;
    SeachFilterTitle: string;
    SearchBtn: string;
    SearchBtnHoverDesc: string;
    Title: string;

    WNoLogNavBarLinks: WNoLogNavBarLinks[];
  }

@Component({
  selector: 'app-public-default-header',
  templateUrl: './public-default-header.component.html',
  styleUrls: ['./public-default-header.component.css']
})
export class PublicDefaultHeaderComponent implements OnInit{

  homeHeader: HomeHeader = {
    Id: 0,
    BlockFilterTitle: '',
    CandidateAccessBtn: '',
    CandidateAccessBtnUrl: '',
    CompanyAccessBtn: '',
    CompanyAccessBtnUrl: '',
    HeadBgImgPath: '',
    HeadTitle: '',
    LocationFilterTitle: '',
    SeachFilterTitle: '',
    SearchBtn: '',
    SearchBtnHoverDesc: '',
    Title: '',

    WNoLogNavBarLinks: []
  };

  @Output() triggerEvent = new EventEmitter<void>();

  constructor(private httpHeaderService: HttpHeaderService
  ){}
  
  ngOnInit(): void {
    this.ReadNoLogHomeHeader();
  }

  activateTrigger() {
    this.triggerEvent.emit();
  }

  ReadNoLogHomeHeader() {
    this.httpHeaderService.ReadNoLogHomeHeader(1)
    .subscribe((response: any) => {
      this.homeHeader = response.data;
    });
  }
}
