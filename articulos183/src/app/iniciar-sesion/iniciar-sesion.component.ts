import { Component, OnInit } from '@angular/core';
import { UsuariosService} from '../usuarios.service';


@Component({
  selector: 'app-iniciar-sesion',
  templateUrl: './iniciar-sesion.component.html',
  styleUrls: ['./iniciar-sesion.component.css']
})
export class IniciarSesionComponent implements OnInit {

	formulario:any;

  constructor(private servicioUsuarios:UsuariosService) { 
  	this.formulario={
  		auth: {
  			email: "",
  			password: ""
  		}
  	}

  }

  ngOnInit() {
  }

  iniciarSesion(){
  	this.servicioUsuarios.
    iniciarSesion(this.formulario).
    subscribe(respuesta=>{
      localStorage.setItem('sessionToken',respuesta.jwt);
      alert('Inicio de Sesión Exitoso');
    },error=>{
      alert('Fallo el inicio de sesion, verifica la consola');
      console.log(error);
      console.log(this.formulario);
    });
  }

}
