import { Routes } from "@angular/router";
import { PublicHomeIndexComponent } from "../public/home/public-home-index/public-home-index.component";
import { LoginIndexComponent } from "../auth/login/components/login-index/login-index.component";
import { SearchJobsIndexComponent } from "../shared/search-jobs/components/search-jobs-index/search-jobs-index.component";

export const globalRoutes: Routes = [
    {
        path: '',
        component: PublicHomeIndexComponent,
        loadChildren: () => import('./global.module').then(m => m.GlobalModule),
        data: { header: 'non-loged-home'}
    },
    {
        path:'login', 
        component: LoginIndexComponent,
        data: { header: 'simple'}
    },
    {
        path: 'public-search-jobs',
        component: SearchJobsIndexComponent,
        data: { header: 'non-loged-default'}
    }

]