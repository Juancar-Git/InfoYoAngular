import { Component } from '@angular/core';
import { HttpNoLogHomeService } from 'src/app/services/http.nologhome.service';

interface WNoLogSectorItems{
  Id: number;
  Title: string;
  ItemBgImgPath: string;
  FilterName: string;
  FilterValue: string;
}

interface opportSection{
  Id: number;
  Title: string;
  MoreSectorsBtn: string;

  WNoLogSectorItems: WNoLogSectorItems[];
}

@Component({
  selector: 'app-home-opportunity-job',
  templateUrl: './home-opportunity-job.component.html',
  styleUrls: ['./home-opportunity-job.component.css']
})
export class HomeOpportunityJobComponent {

opportSection: opportSection = {
  Id: 0,
  Title: '',
  MoreSectorsBtn: '',

  WNoLogSectorItems: [],
}

  constructor(
      private httpNoLogHomeService: HttpNoLogHomeService
    ) { }
  
    ngOnInit(): void {
      this.ReadNoLogHomeOpportSection(1);
    }

    ReadNoLogHomeOpportSection(id: number) {
    this.httpNoLogHomeService.ReadNoLogHomeOpportSection(id)
      .subscribe((response: any) => {
        this.opportSection = response.data;
      });
  }
}
