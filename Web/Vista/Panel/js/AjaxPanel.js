function crearObjet() {

    if (window.ActiveXObject) {
        xhr = new ActiveXObject("Microsoft,XMLHttp");

    } else if ((window.XMLHttpRequest) || (typeof XMLHttpRequest) != undefined) {
        xhr = new XMLHttpRequest();

    } else {
        alert("su navegador no soporta Ajax");
        return;
    }

}
var xhr;
var divInicial = "inicio";

function DinamicoDiv(divActual) {
    document.getElementById(divActual).style.display = 'block';

    if (divInicial != divActual) {
        document.getElementById(divInicial).style.display = 'none';
    }
    if (divInicial = divActual) {
        MostrarInicio("inicio");
    }
    divInicial = divActual;
}
function mostrar(a){
   crearObjet();
    xhr.open("post",a, true);
    xhr.onreadystatechange =paginaphp;
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.send(null);
}

function paginaphp() {
    if (xhr.readyState == 4)
    {
        document.getElementById("muestra").innerHTML = "<em>" +
                xhr.responseText + "</em>";
    }
}/*Funcion para hacer el registro de las categorias*/

function grado(){
     crearObjet();
     var dato= document.getElementById("cbx_grado").value;
    xhr.open("post",'tablaalumnos', true);
    xhr.onreadystatechange = mostrars;
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.send("grado=" +dato);
}
function mostrars() {
   
    if (xhr.readyState == 4)
    {
        document.getElementById("meter").innerHTML = "<em>" +
                xhr.responseText + "</em>";
    }
}
function virgen(){
    crearObjet();
    var dato= document.getElementById("cbx_profesor").value;
    xhr.open("post",'tablaprofesor', true);
    xhr.onreadystatechange = mostrars;
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.send("NOMPROFESOR=" +dato);
}

function  presionar(s,m){
   var id_profesor=s;
   var n_materias=m;
   var grupasign= document.getElementById("grupasign").value;
   var dato= document.getElementById("materias").value;
   var tiempo= document.getElementById("horario").value;
    xhr.open("post",'Asignacion Materias', true);
    xhr.onreadystatechange = muestra;
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.send("idprofe="+id_profesor+"&datos="+dato+"&materias="+n_materias+"&grupasig="+grupasign+"&horario="+tiempo);
   
}

function muestra(){
       if (xhr.readyState == 4)
    {
        document.getElementById("finaly").innerHTML = "<em>" +
                xhr.responseText + "</em>";
    }

}

function cambiarperiodo(){
    var estatusn = document.getElementById("cambiode").value;
    xhr.open("post", 'Controlevaluacion', true);
    xhr.onreadystatechange = resutPost;
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.send("estatus=" + estatusn);
}

function resutPost(){
        if (xhr.readyState == 4)
    {
        document.getElementById("srfrod").innerHTML = "<em>" +
                xhr.responseText + "</em>";
       
    }
}

