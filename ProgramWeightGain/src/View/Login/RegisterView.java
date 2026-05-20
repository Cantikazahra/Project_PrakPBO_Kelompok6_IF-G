/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package View.Login;

import Model.Connector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

/**
 *
 * @author Asus
 */

public class RegisterView extends JFrame {

    public RegisterView() {
        setTitle("REGISTER");
        setSize(400, 350);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setLayout(null);

        JLabel lblTitle    = new JLabel("REGISTER");
        JLabel lblUsername = new JLabel("Username");
        JLabel lblPassword = new JLabel("Password");
        JLabel lblRole     = new JLabel("Role");

        JTextField     txtUsername = new JTextField();
        JPasswordField txtPassword = new JPasswordField();

        String[] roleList = {"member"};
        JComboBox<String> cbRole = new JComboBox<>(roleList);

        JButton btnRegister = new JButton("REGISTER");
        JButton btnKembali  = new JButton("KEMBALI");

        lblTitle.setBounds(150, 20, 100, 30);
        lblUsername.setBounds(50, 80, 100, 25);
        txtUsername.setBounds(150, 80, 180, 25);
        lblPassword.setBounds(50, 130, 100, 25);
        txtPassword.setBounds(150, 130, 180, 25);
        lblRole.setBounds(50, 180, 100, 25);
        cbRole.setBounds(150, 180, 180, 25);
        btnRegister.setBounds(70, 240, 120, 30);
        btnKembali.setBounds(210, 240, 120, 30);

        btnRegister.addActionListener(e -> {
            try {
                Connection conn = Connector.getConnection();
                String sql = "INSERT INTO users(username, password, role) VALUES(?, ?, ?)";
                PreparedStatement pst = conn.prepareStatement(sql);
                pst.setString(1, txtUsername.getText());
                pst.setString(2, String.valueOf(txtPassword.getPassword()));
                pst.setString(3, cbRole.getSelectedItem().toString());
                pst.executeUpdate();

                String getUser = "SELECT * FROM users WHERE username=?";
                PreparedStatement getPst = conn.prepareStatement(getUser);
                getPst.setString(1, txtUsername.getText());
                ResultSet rs = getPst.executeQuery();

                if (rs.next()) {
                    int userId = rs.getInt("id");
                    new View.Member.InputData(userId);
                    dispose();
                }
            } catch (Exception ex) {
                JOptionPane.showMessageDialog(null, ex.getMessage());
            }
        });

        btnKembali.addActionListener(e -> {
            new LoginView();
            dispose();
        });

        add(lblTitle);
        add(lblUsername);
        add(txtUsername);
        add(lblPassword);
        add(txtPassword);
        add(lblRole);
        add(cbRole);
        add(btnRegister);
        add(btnKembali);

        setVisible(true);
    }
}
