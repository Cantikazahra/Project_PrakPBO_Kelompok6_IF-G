/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Users;

/**
 *
 * @author Asus
 */
public class Member extends User {
    private String nama;
    private int umur;
    private double tinggiBadan;
    private double beratAwal;
    private double targetBerat;

    public Member() {
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public int getUmur() {
        return umur;
    }

    public void setUmur(int umur) {
        this.umur = umur;
    }
    public double getTinggiBadan() {
        return tinggiBadan;
    }

    public void setTinggiBadan(double tinggiBadan) {
        this.tinggiBadan = tinggiBadan;
    }

    public double getBeratAwal() {
        return beratAwal;
    }

    public void setBeratAwal(double beratAwal) {
        this.beratAwal = beratAwal;
    }

    public double getTargetBerat() {
        return targetBerat;
    }

    public void setTargetBerat(double targetBerat) {
        this.targetBerat = targetBerat;
    }
    
    @Override
    public void displayRole() {
        System.out.println("MEMBER");
    }
}
