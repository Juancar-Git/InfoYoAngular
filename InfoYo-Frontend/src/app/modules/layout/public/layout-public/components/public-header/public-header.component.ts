import { Component, EventEmitter, HostListener, OnInit, Output, } from '@angular/core';
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
  selector: 'app-public-header',
  templateUrl: './public-header.component.html',
  styleUrls: ['./public-header.component.css'],
})
export class PublicHeaderComponent implements OnInit {
  
  isSmallScreen = false;
  @Output() triggerEvent = new EventEmitter<void>();

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
    
  constructor(
    private httpHeaderService: HttpHeaderService
  ) {}

  ngOnInit(): void {
    this.checkScreenSize();
    this.ReadNoLogHome();
  }

  // Se puede hacer con Bootstrap, pero es interesante conocerlo para proyectos que no lo utilice
  @HostListener('window:resize', [])
  onResize() {
    this.checkScreenSize();
  }

  private checkScreenSize() {
    this.isSmallScreen = window.innerWidth < 945;
  }

  activateTrigger() {
    this.triggerEvent.emit();
  }

  ReadNoLogHome() {
    this.httpHeaderService.ReadNoLogHomeHeader(1)
    .subscribe((response: any) => {
      this.homeHeader = response.data;
    });
  }
}
