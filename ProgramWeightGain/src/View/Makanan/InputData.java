/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package View.Makanan;

import Controller.ControllerMakanan;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

/**
 *
 * @author Asus
 */

public class InputData extends JFrame {

    int userId;

    public InputData(int userId) {
        this.userId = userId;

        setTitle("TAMBAH DATA MAKANAN");
        setSize(450, 400);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setLayout(null);

        JLabel lblNama       = new JLabel("Nama Makanan");
        JLabel lblKalori     = new JLabel("Kalori");
        JLabel lblProtein    = new JLabel("Protein");
        JLabel lblKarbohidrat = new JLabel("Karbohidrat");
        JLabel lblLemak      = new JLabel("Lemak");

        JTextField txtNama       = new JTextField();
        JTextField txtKalori     = new JTextField();
        JTextField txtProtein    = new JTextField();
        JTextField txtKarbohidrat = new JTextField();
        JTextField txtLemak      = new JTextField();

        JButton btnSimpan  = new JButton("SIMPAN");
        JButton btnKembali = new JButton("KEMBALI");

        lblNama.setBounds(50, 50, 120, 25);       txtNama.setBounds(180, 50, 180, 25);
        lblKalori.setBounds(50, 90, 120, 25);     txtKalori.setBounds(180, 90, 180, 25);
        lblProtein.setBounds(50, 130, 120, 25);   txtProtein.setBounds(180, 130, 180, 25);
        lblKarbohidrat.setBounds(50, 170, 120, 25); txtKarbohidrat.setBounds(180, 170, 180, 25);
        lblLemak.setBounds(50, 210, 120, 25);     txtLemak.setBounds(180, 210, 180, 25);
        btnSimpan.setBounds(70, 290, 120, 35);
        btnKembali.setBounds(240, 290, 120, 35);

        ControllerMakanan controller = new ControllerMakanan();

        btnSimpan.addActionListener(e -> {
            controller.simpan(
                    txtNama.getText(),
                    txtKalori.getText(),
                    txtProtein.getText(),
                    txtKarbohidrat.getText(),
                    txtLemak.getText()
            );
            new ViewData(userId);
            dispose();
        });

        btnKembali.addActionListener(e -> {
            new ViewData(userId);
            dispose();
        });

        add(lblNama); add(txtNama);
        add(lblKalori); add(txtKalori);
        add(lblProtein); add(txtProtein);
        add(lblKarbohidrat); add(txtKarbohidrat);
        add(lblLemak); add(txtLemak);
        add(btnSimpan); add(btnKembali);

        setVisible(true);
    }
}
