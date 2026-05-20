/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package View.Dashboard;

import Controller.ControllerDashboard;
import java.awt.Font;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;

/**
 *
 * @author Asus
 */

public class MemberDashboardView extends JFrame {

    int userId;

    public MemberDashboardView(int userId) {
        this.userId = userId;

        setTitle("DASHBOARD");
        setSize(600, 500);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setLayout(null);

        // =========================
        // COMPONENT
        // =========================
        JLabel lblTitle   = new JLabel("SMART NUTRITION DASHBOARD");
        JLabel lblNama    = new JLabel();
        JLabel lblUmur    = new JLabel();
        JLabel lblTinggi  = new JLabel();
        JLabel lblBerat   = new JLabel();
        JLabel lblTarget  = new JLabel();
        JLabel lblProtein = new JLabel();
        JLabel lblKalori  = new JLabel();

        JButton btnMakanan  = new JButton("DATA MAKANAN");
        JButton btnProgram  = new JButton("PROGRAM");
        JButton btnProgress = new JButton("PROGRESS");
        JButton btnLogout   = new JButton("LOGOUT");

        lblTitle.setFont(new Font("Arial", Font.BOLD, 16));

        // =========================
        // POSITION
        // =========================
        lblTitle.setBounds(130, 20, 350, 30);
        lblNama.setBounds(50, 80, 450, 25);
        lblUmur.setBounds(50, 110, 450, 25);
        lblTinggi.setBounds(50, 140, 450, 25);
        lblBerat.setBounds(50, 170, 450, 25);
        lblTarget.setBounds(50, 200, 450, 25);
        lblProtein.setBounds(50, 230, 450, 25);
        lblKalori.setBounds(50, 260, 450, 25);

        btnMakanan.setBounds(50, 330, 200, 40);
        btnProgram.setBounds(320, 330, 200, 40);
        btnProgress.setBounds(50, 390, 200, 40);
        btnLogout.setBounds(320, 390, 200, 40);

        // =========================
        // LOAD DATA
        // =========================
        ControllerDashboard controller = new ControllerDashboard(this, userId);
        controller.loadMemberData(lblNama, lblUmur, lblTinggi,
                lblBerat, lblTarget, lblProtein, lblKalori);

        // =========================
        // BUTTON ACTIONS
        // =========================
        btnMakanan.addActionListener(e  -> controller.goToMakanan());
        btnProgram.addActionListener(e  -> controller.goToProgram());
        btnProgress.addActionListener(e -> controller.goToProgress());
        btnLogout.addActionListener(e   -> controller.logout());

        // =========================
        // ADD COMPONENT
        // =========================
        add(lblTitle);
        add(lblNama);
        add(lblUmur);
        add(lblTinggi);
        add(lblBerat);
        add(lblTarget);
        add(lblProtein);
        add(lblKalori);
        add(btnMakanan);
        add(btnProgram);
        add(btnProgress);
        add(btnLogout);

        setVisible(true);
    }
}
