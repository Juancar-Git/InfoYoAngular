import { Component, computed, inject } from '@angular/core';
import { ActivatedRoute, NavigationEnd, Router } from '@angular/router';
import { filter } from 'rxjs/operators'

@Component({
  selector: 'app-menu-global',
  templateUrl: './menu-global.component.html',
  styleUrls: ['./menu-global.component.css']
})
export class MenuGlobalComponent {
  private router = inject(Router)
  private activatedRouter = inject(ActivatedRoute)

  //finalmente será default, pero será para el nav pequeño
  headerType: string = 'non-loged-home';

  constructor(){
    //obtengo la ruta del "router-outlet", y de este la data, que he añadido en el módulo de routing
    //En el html muestro la cabecera dependiendo de la data obtenida.
    this.router.events
      .pipe(filter(event => event instanceof NavigationEnd))
      .subscribe(() => {
        const childRoute = this.getDeepestChild(this.activatedRouter);
        this.headerType = childRoute.snapshot.data['header'] || 'non-loged-home';
      });
  }

  private getDeepestChild(route: ActivatedRoute): ActivatedRoute{
    while(route?.firstChild){
      route = route.firstChild;
    }
    return route;
  }
}
