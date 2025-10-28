package com.is1.proyecto.models;

import org.javalite.activejdbc.Model;

public class Persona extends Model{

    public String getNombre() {
        return getString("name"); 
    }

    public void setNombre(String name) {
        set("name", name);
    }

    public String getApellido() {
        return getString("lastName"); 
    }

    public void setApellido(String lastName) {
        set("lastName", lastName); 
    }

    public void setDireccion(String direccion){
        set("direccion", direccion);
    }

    public String getDireccion(){
        return getString("direccion");
    }

    public void setContacto(String contacto){
        set("contacto", contacto);
    }

    public String getContacto(){
        return getString("contacto");
    }
}