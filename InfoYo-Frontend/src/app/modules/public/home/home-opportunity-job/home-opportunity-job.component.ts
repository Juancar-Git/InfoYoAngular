import { Component } from '@angular/core';
import { HttpNoLogHomeService } from 'src/app/services/http.nologhome.service';

@Component({
  selector: 'app-home-opportunity-job',
  templateUrl: './home-opportunity-job.component.html',
  styleUrls: ['./home-opportunity-job.component.css']
})
export class HomeOpportunityJobComponent {
opportSection: {
    Id: number;
    Title: string;
    MoreSectorsBtn: string;
  } = {
      Id: 0,
      Title: '',
      MoreSectorsBtn: '',
    }

  opportItems: { Id: number, Title: string, ItemBgImgPath: string, FilterName: string, FilterValue: string }[] = [];

  constructor(
      private httpNoLogHomeService: HttpNoLogHomeService
    ) { }
  
    ngOnInit(): void {
      this.ReadNoLogHomeOpportSection(1);
      this.ReadNoLogHomeOpportItems();
    }

    ReadNoLogHomeOpportSection(id: number) {
    this.httpNoLogHomeService.ReadNoLogHomeOpportSection(id)
      .subscribe((response: any) => {
        this.opportSection = response.data;
      });
  }

  ReadNoLogHomeOpportItems() {
    this.httpNoLogHomeService.ReadNoLogHomeOpportItems()
      .subscribe((response: any) => {
        this.opportItems = response.data;
      });
  }
}
