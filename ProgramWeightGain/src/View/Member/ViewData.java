/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package View.Member;

import Model.Connector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

/**
 *
 * @author Asus
 */

public class ViewData extends JFrame {

    int userId;

    public ViewData(int userId) {
        this.userId = userId;

        setTitle("DATA MEMBER");
        setSize(450, 400);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setLayout(null);

        JLabel lblNama   = new JLabel();
        JLabel lblUmur   = new JLabel();
        JLabel lblTinggi = new JLabel();
        JLabel lblBerat  = new JLabel();
        JLabel lblTarget = new JLabel();

        JButton btnEdit    = new JButton("EDIT");
        JButton btnKembali = new JButton("KEMBALI");

        lblNama.setBounds(50, 80, 350, 25);
        lblUmur.setBounds(50, 120, 350, 25);
        lblTinggi.setBounds(50, 160, 350, 25);
        lblBerat.setBounds(50, 200, 350, 25);
        lblTarget.setBounds(50, 240, 350, 25);
        btnEdit.setBounds(70, 310, 130, 35);
        btnKembali.setBounds(240, 310, 130, 35);

        try {
            Connection conn = Connector.getConnection();
            String sql = "SELECT * FROM member WHERE user_id=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, userId);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                lblNama.setText("Nama         : " + rs.getString("nama"));
                lblUmur.setText("Umur         : " + rs.getInt("umur") + " Tahun");
                lblTinggi.setText("Tinggi Badan : " + rs.getDouble("tinggi_badan") + " cm");
                lblBerat.setText("Berat Awal   : " + rs.getDouble("berat_awal") + " kg");
                lblTarget.setText("Target Berat : " + rs.getDouble("target_berat") + " kg");
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }

        btnEdit.addActionListener(e -> {
            new EditData(userId);
            dispose();
        });

        btnKembali.addActionListener(e -> {
            new View.Dashboard.MemberDashboardView(userId);
            dispose();
        });

        add(lblNama); add(lblUmur); add(lblTinggi); add(lblBerat); add(lblTarget);
        add(btnEdit); add(btnKembali);

        setVisible(true);
    }
}
