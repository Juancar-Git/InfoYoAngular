import { Routes } from "@angular/router";
import { PublicHomeIndexComponent } from "../public/home/public-home-index/public-home-index.component";
import { LoginIndexComponent } from "../auth/login/components/login-index/login-index.component";

export const globalRoutes: Routes = [
    {
        path: '',
        component: PublicHomeIndexComponent,
        loadChildren: () => import('./global.module').then(m => m.GlobalModule)
    },
    {path:'login', component: LoginIndexComponent}

]