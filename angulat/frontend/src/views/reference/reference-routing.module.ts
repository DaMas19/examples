import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';


const routes: Routes = [
  {
    path: '',
    data: {
      title: 'References'
    },
    children: [
      {
        path: '',
        redirectTo: 'terminals'
      },
      {
        path: 'terminals',
        loadChildren: () => import('./terminal/terminal.module').then(m => m.TerminalModule)
      },
    ],
  }

];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ReferenceRoutingModule { }
