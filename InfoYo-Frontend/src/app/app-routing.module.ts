import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { MenuGlobalComponent } from './modules/global/components/menu-global/menu-global.component';

//import { AuthGuard } from './guards/auth.guard';

const routes: Routes = [
  //{ path: 'dashboard', component: DashboardComponent, canActivate: [AuthGuard]},
  {
    path: '', 
    component: MenuGlobalComponent,
    loadChildren: () => import('./routes.module').then(m => m.RoutesModule)
  }
  
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
