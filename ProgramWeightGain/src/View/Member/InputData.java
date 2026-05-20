/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package View.Member;

import Controller.ControllerMember;
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

        setTitle("INPUT DATA MEMBER");
        setSize(450, 450);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setLayout(null);

        JLabel lblNama   = new JLabel("Nama");
        JLabel lblUmur   = new JLabel("Umur");
        JLabel lblTinggi = new JLabel("Tinggi Badan");
        JLabel lblBerat  = new JLabel("Berat Awal");
        JLabel lblTarget = new JLabel("Target Berat");

        JTextField txtNama   = new JTextField();
        JTextField txtUmur   = new JTextField();
        JTextField txtTinggi = new JTextField();
        JTextField txtBerat  = new JTextField();
        JTextField txtTarget = new JTextField();

        JButton btnSimpan = new JButton("SIMPAN");

        lblNama.setBounds(50, 80, 120, 25);
        txtNama.setBounds(180, 80, 180, 25);

        lblUmur.setBounds(50, 120, 120, 25);
        txtUmur.setBounds(180, 120, 180, 25);

        lblTinggi.setBounds(50, 160, 120, 25);
        txtTinggi.setBounds(180, 160, 180, 25);

        lblBerat.setBounds(50, 200, 120, 25);
        txtBerat.setBounds(180, 200, 180, 25);

        lblTarget.setBounds(50, 240, 120, 25);
        txtTarget.setBounds(180, 240, 180, 25);

        btnSimpan.setBounds(140, 320, 150, 35);

        ControllerMember controller = new ControllerMember();

        btnSimpan.addActionListener(e -> {
            controller.simpan(
                    userId,
                    txtNama.getText(),
                    txtUmur.getText(),
                    txtTinggi.getText(),
                    txtBerat.getText(),
                    txtTarget.getText()
            );
            new View.Dashboard.MemberDashboardView(userId);
            dispose();
        });

        add(lblNama); add(txtNama);
        add(lblUmur); add(txtUmur);
        add(lblTinggi); add(txtTinggi);
        add(lblBerat); add(txtBerat);
        add(lblTarget); add(txtTarget);
        add(btnSimpan);

        setVisible(true);
    }
}
