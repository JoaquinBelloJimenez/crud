/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//(Modal) Emergente para crear un nuevo objeto
//
//Código en javascript para mosstrar y ocultar la ventana.
// Variable que define las ventanas por su ID (modal)
var modal = document.getElementById('myModal');
var modal2 = document.getElementById('idModal2');
var modal3 = document.getElementById('idModal3');
//Variable del botón para cerrar el modal 1
var btn_salir = document.getElementById("btn_salir");
// Acción: Al pulsar el botón -> abrir la ventana (mostrarla)
function abrirModal1(){
    modal.style.display = "block";
}
function abrirModal2(){
    modal2.style.display = "block";
}
function abrirModal3(){
    modal3.style.display = "block";
}
// Acción: Al pulsar "salir" cerrar la ventana (ocultarla)
btn_salir.onclick = function () {
    modal.style.display = "none";
    }

