import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PublicHomeIndexComponent } from './public-home-index/public-home-index.component';
import { ImagePublicityComponent } from './image-publicity/image-publicity.component';
import { HomeCareerComponent } from './home-career/home-career.component';
import { HomeFindJobComponent } from './home-find-job/home-find-job.component';
import { HomePlaceJobComponent } from './home-place-job/home-place-job.component';
import { HomeOpportunityJobComponent } from './home-opportunity-job/home-opportunity-job.component';
import { MaterialModule } from '../../global/material.module';



@NgModule({
  declarations: [
    PublicHomeIndexComponent,
    ImagePublicityComponent,
    HomeCareerComponent,
    HomeFindJobComponent,
    HomePlaceJobComponent,
    HomeOpportunityJobComponent
  ],
  imports: [
    CommonModule,
    MaterialModule
  ],
  exports: [
    PublicHomeIndexComponent
  ]
})
export class HomeModule { }
