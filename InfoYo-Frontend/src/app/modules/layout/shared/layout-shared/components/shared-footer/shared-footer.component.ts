import { Component, OnInit } from '@angular/core';
import { HttpFooterService } from 'src/app/services/http.footer.service';

interface WFtrLinksSectionColItem{
  Id: number;
  Title: string;
  TitleHoverDesc: string;
  ItemPath: string;
  WFtrLinksSectionColId: number;
}

interface footerCol{
  Id: number;
  Title: string;
  WFtrLinksSectionColItem: WFtrLinksSectionColItem[];
}

@Component({
  selector: 'app-shared-footer',
  templateUrl: './shared-footer.component.html',
  styleUrls: ['./shared-footer.component.css']
})

export class SharedFooterComponent implements OnInit{

  footerCols: footerCol[] = [];
  
  constructor(
    private httpFooterService: HttpFooterService
  ){}

  ngOnInit(): void {
      this.ReadLinkSectionColFooter();
  }

  ReadLinkSectionColFooter(){
    this.httpFooterService.ReadLinkSectionColFooter()
    .subscribe((response: any) => {
      this.footerCols = response.data;
      console.log(this.footerCols);
    })
  }
}
