/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package View.Login;

import Controller.ControllerLogin;
import java.awt.Font;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
/**
 *
 * @author Asus
 */

public class LoginView extends JFrame {

    public LoginView() {
        setTitle("LOGIN");
        setSize(400, 300);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setLayout(null);

        JLabel lblTitle    = new JLabel("LOGIN");
        JLabel lblUsername = new JLabel("Username");
        JLabel lblPassword = new JLabel("Password");

        JTextField    txtUsername = new JTextField();
        JPasswordField txtPassword = new JPasswordField();

        JButton btnLogin    = new JButton("LOGIN");
        JButton btnRegister = new JButton("REGISTER");

        lblTitle.setFont(new Font("Arial", Font.BOLD, 20));
        lblTitle.setBounds(160, 20, 100, 30);

        lblUsername.setBounds(50, 80, 100, 25);
        txtUsername.setBounds(150, 80, 180, 25);

        lblPassword.setBounds(50, 130, 100, 25);
        txtPassword.setBounds(150, 130, 180, 25);

        btnLogin.setBounds(70, 200, 120, 30);
        btnRegister.setBounds(210, 200, 120, 30);

        ControllerLogin controller = new ControllerLogin(this);

        btnLogin.addActionListener(e -> {
            String username = txtUsername.getText();
            String password = String.valueOf(txtPassword.getPassword());
            controller.login(username, password);
        });

        btnRegister.addActionListener(e -> {
            controller.goToRegister();
        });

        add(lblTitle);
        add(lblUsername);
        add(txtUsername);
        add(lblPassword);
        add(txtPassword);
        add(btnLogin);
        add(btnRegister);

        setVisible(true);
    }
}