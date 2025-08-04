import { Component, EventEmitter, HostListener, OnInit, Output } from '@angular/core';

@Component({
  selector: 'app-public-header',
  templateUrl: './public-header.component.html',
  styleUrls: ['./public-header.component.css']
})
export class PublicHeaderComponent implements OnInit{

  isSmallScreen = false;
  @Output() triggerEvent = new EventEmitter<void>();

  constructor(){}

  ngOnInit(): void {
    this.checkScreenSize();
  }

  @HostListener('window:resize', [])
  onResize(){
    this.checkScreenSize();
  }

  private checkScreenSize(){
    this.isSmallScreen = window.innerWidth < 945;
  }

  activateTrigger(){
    this.triggerEvent.emit();
  }
}
