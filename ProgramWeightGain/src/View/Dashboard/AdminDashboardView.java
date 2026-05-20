/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package View.Dashboard;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import java.awt.Font;

/**
 *
 * @author Asus
 */

public class AdminDashboardView extends JFrame {

    public AdminDashboardView() {
        setTitle("ADMIN DASHBOARD");
        setSize(400, 300);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setLayout(null);

        JLabel lblTitle = new JLabel("ADMIN DASHBOARD");
        lblTitle.setFont(new Font("Arial", Font.BOLD, 18));
        lblTitle.setBounds(90, 30, 250, 30);

        JButton btnMakanan = new JButton("CRUD MAKANAN");
        btnMakanan.setBounds(100, 100, 180, 40);

        JButton btnLogout = new JButton("LOGOUT");
        btnLogout.setBounds(100, 160, 180, 40);

        btnMakanan.addActionListener(e -> {
            new View.Makanan.ViewData(0);
            dispose();
        });

        btnLogout.addActionListener(e -> {
            new View.Login.LoginView();
            dispose();
        });

        add(lblTitle);
        add(btnMakanan);
        add(btnLogout);

        setVisible(true);
    }
}
