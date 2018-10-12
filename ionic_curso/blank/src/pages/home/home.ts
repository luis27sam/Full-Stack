import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { UserServiceProvider } from '../providers/user-service/user-service';
import { UserService } from '../providers/user-service';
@IonicPage()
@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {
  users: any[]=[];
  constructor(
    public navCtrl: NavController,
    public userService: UserService
  ) {}
  ionViewDidLoad(){
    this.userService.getUsers()
    .subscribe(
      (data)=>{
        this.users=data['results'];
      },
      (error)=>{
        console.error(error);
      }
    )
  }
}
