import { Routes } from "@angular/router";
import { PublicHomeIndexComponent } from "../public/home/public-home-index/public-home-index.component";



export const globalRoutes: Routes = [
    {
        path: '',
        component: PublicHomeIndexComponent,
        loadChildren: () => import('./global.module').then(m => m.GlobalModule)
    }
]