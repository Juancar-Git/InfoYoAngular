import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SearchJobsIndexComponent } from './components/search-jobs-index/search-jobs-index.component';



@NgModule({
  declarations: [
    SearchJobsIndexComponent
  ],
  imports: [
    CommonModule
  ],
  exports: [
    SearchJobsIndexComponent
  ]
})
export class SearchJobsModule { }
