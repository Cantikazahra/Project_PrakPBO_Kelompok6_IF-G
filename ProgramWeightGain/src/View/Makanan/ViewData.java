/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package View.Makanan;

import Controller.ControllerMakanan;
import Model.Makanan.DAOMakanan;
import Model.Makanan.Makanan;
import Model.Makanan.ModelTableMakanan;
import java.util.ArrayList;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTable;

/**
 *
 * @author Asus
 */

public class ViewData extends JFrame {

    int userId;

    public ViewData(int userId) {
        this.userId = userId;

        setTitle("DATA MAKANAN");
        setSize(700, 450);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setLayout(null);

        DAOMakanan dao = new DAOMakanan();
        ArrayList<Makanan> list = dao.getAll();
        ModelTableMakanan tableModel = new ModelTableMakanan(list);

        JTable table = new JTable(tableModel);
        JScrollPane scrollPane = new JScrollPane(table);
        scrollPane.setBounds(20, 20, 640, 300);

        JButton btnTambah  = new JButton("TAMBAH");
        JButton btnEdit    = new JButton("EDIT");
        JButton btnHapus   = new JButton("HAPUS");
        JButton btnKembali = new JButton("KEMBALI");

        btnTambah.setBounds(20, 340, 120, 35);
        btnEdit.setBounds(155, 340, 120, 35);
        btnHapus.setBounds(290, 340, 120, 35);
        btnKembali.setBounds(530, 340, 120, 35);

        ControllerMakanan controller = new ControllerMakanan();

        btnTambah.addActionListener(e -> {
            new InputData(userId);
            dispose();
        });

        btnEdit.addActionListener(e -> {
            int selectedRow = table.getSelectedRow();
            if (selectedRow >= 0) {
                Makanan selected = tableModel.getMakananAt(selectedRow);
                new EditData(userId, selected);
                dispose();
            } else {
                javax.swing.JOptionPane.showMessageDialog(null, "Pilih data yang ingin diedit!");
            }
        });

        btnHapus.addActionListener(e -> {
            int selectedRow = table.getSelectedRow();
            if (selectedRow >= 0) {
                Makanan selected = tableModel.getMakananAt(selectedRow);
                controller.hapus(selected.getIdMakanan());
                new ViewData(userId);
                dispose();
            } else {
                javax.swing.JOptionPane.showMessageDialog(null, "Pilih data yang ingin dihapus!");
            }
        });

        btnKembali.addActionListener(e -> {
            if (userId > 0) {
                new View.Dashboard.MemberDashboardView(userId);
            } else {
                new View.Dashboard.AdminDashboardView();
            }
            dispose();
        });

        add(scrollPane);
        add(btnTambah);
        add(btnEdit);
        add(btnHapus);
        add(btnKembali);

        setVisible(true);
    }
}
