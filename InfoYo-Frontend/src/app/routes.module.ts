import { RouterModule } from "@angular/router";
import { globalRoutes } from "./modules/global/global.routing";
import { NgModule } from "@angular/core";


@NgModule({
    imports: [RouterModule.forChild([
        ...globalRoutes,
    ])]
})
export class RoutesModule { }