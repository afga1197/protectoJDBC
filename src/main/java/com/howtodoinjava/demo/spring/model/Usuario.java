package com.howtodoinjava.demo.spring.model;

public class Usuario{

    private int Id;
    private String User;
    private String Email;
    private String Password;
    private String Web_ID;
    private String Role;

    public Usuario(int Id, String User, String Email, String Password, String Web_ID, String Role) {
        this.Id = Id;
        this.User = User;
        this.Email = Email;
        this.Password = Password;
        this.Web_ID = Web_ID;
        this.Role = Role;
    }

    public Usuario() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getUser() {
        return User;
    }

    public void setUser(String User) {
        this.User = User;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getWeb_ID() {
        return Web_ID;
    }

    public void setWeb_ID(String Web_ID) {
        this.Web_ID = Web_ID;
    }

    public String getRole() {
        return Role;
    }

    public void setRole(String Role) {
        this.Role = Role;
    }
    
}

