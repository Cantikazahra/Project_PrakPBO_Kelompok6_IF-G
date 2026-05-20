/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Users;

/**
 *
 * @author Asus
 */
public class Admin extends User {

    public Admin() {
        role = "ADMIN";
    }

    public void kelolaData() {
        System.out.println("Admin mengelola data");
    }
}
