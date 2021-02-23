package conexiones;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.google.gson.Gson;
import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.DefaultComboBoxModel;
import javax.swing.DefaultListModel;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

public class conexion {

    public static Connection cnn;
    public static PreparedStatement ps;
    public static ResultSet rs;
    Statement Sentencia;
    Connection Con;
    ResultSet DataSet;
    public static java.sql.Statement st = null;

    public static Connection AbrirConexion() {
        String cadena = "jdbc:postgresql://localhost:5433/PI_VI_Accesibilididad";
        String usuario = "postgres";
        String clave = "123456";
        try {
            Class.forName("org.postgresql.Driver");
            cnn = DriverManager.getConnection(cadena, usuario, clave);
            java.sql.Statement State = cnn.createStatement();

        } catch (ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null, "No se encontró la clase para conectar a Base de datos!", "", JOptionPane.CLOSED_OPTION, null);
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage(), "", JOptionPane.CLOSED_OPTION, null);
        } finally {
            // JOptionPane.showMessageDialog(null,"Conexion Exitosa");
            return cnn;
        }
    }

    private static boolean CerrarConexion() {
        try {
            cnn.close();
            cnn = null;
            return true;
        } catch (SQLException a) {
            JOptionPane.showMessageDialog(null, a.getMessage());
            return false;
        }
    }

    public void EjecutarSQL(String Cadena) {

        conexion.AbrirConexion();
        try {
            java.sql.Statement consulta;
            consulta = conexion.cnn.createStatement();
            consulta.execute(Cadena);                        
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
        }
        conexion.CerrarConexion();
    }

    public Object[] vector(String cadena) throws SQLException {
        Object[] vect = null;
        int i = 1;
        int j = 0;
        conexion.AbrirConexion();
        try {
            java.sql.Statement consulta;
            consulta = conexion.cnn.createStatement();
            ResultSet res = consulta.executeQuery(cadena);
            String calc_row = "select count(*) from(" + cadena + ") as A";
            vect = new String[Integer.parseInt(Registro(calc_row))];
            System.out.println("datos");
            while (res.next()) {
                vect[j] = res.getObject(i);

                System.out.println(res.getObject(i));
                j++;
                i++;
            }
        } catch (SQLException e) {
        }
        return vect;

    }

    public String Registro(String Cadena) throws SQLException {
        String X = null;

        conexion.AbrirConexion();
        //try{
        Connection conext = AbrirConexion();
        java.sql.Statement state = conext.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet result = state.executeQuery(Cadena);
        //try () 
        //{
        try {
            if (result.next() == false) {

            } else {
                X = result.getString(1);
            }
        } catch (Exception ex) {
            X = "Error: " + X;
        }
        //}

        state.close();
        // }
        // catch(SQLException e)
        //{
        // JOptionPane.showMessageDialog(null,e);
        // }
        conexion.CerrarConexion();
        return X;
    }

    public String CargarTable_3Botones(String consulta, String classTh, String classTd, String classTr,
            String nBtn1, String nBtn2, String nBtn3,
            String classnBtn1, String classnBtn2, String classnBtn3, String idTabla //, String ActnBtn1, String ActnBtn2, String ActnBtn3
    ) throws SQLException {
        String estr_tabla = "<table class = \"" + idTabla + "\" cellspacing=\"3\">";
        String dt_enc_tabla = "<Thead><tr class=\"" + classTr + "\">";
        String body_tabla = "<tboby>";
        String filas_tabla = "<tr>";
        Connection conext = AbrirConexion();
        //try () {
        java.sql.Statement state = conext.createStatement();
        ResultSet result = state.executeQuery(consulta);
        ResultSetMetaData resultMD = result.getMetaData();
        int cantColumns = resultMD.getColumnCount();
        for (int i = 1; i <= cantColumns; i++) {
            dt_enc_tabla = dt_enc_tabla + "<th  class=\"" + classTh + "\">" + (resultMD.getColumnLabel(i)) + "</th>";
        }
        dt_enc_tabla = dt_enc_tabla + "<th class=\"acciones\" colspan=\"3\">Acciones</th> </tr></thead>";

        while (result.next()) {
            Object[] row = new Object[cantColumns];
            for (int i = 0; i < cantColumns; i++) {
                filas_tabla = filas_tabla + "<td class=\"" + classTd + "\">" + result.getObject(i + 1) + "</td>";
            }
            filas_tabla = filas_tabla + "<td> <input type = \"button\" id=\"btn" + nBtn1 + "\" value = \"" + nBtn1 + "\"/></td>";
            filas_tabla = filas_tabla + "<td> <input type = \"button\" id=\"btn" + nBtn2 + "\" value = \"" + nBtn2 + "\"/></td>";
            filas_tabla = filas_tabla + "<td> <input type = \"button\" id=\"btn" + nBtn3 + "\" value = \"" + nBtn3 + "\"></td>";
            filas_tabla = filas_tabla + "</tr>";
            dt_enc_tabla = dt_enc_tabla + "</tr>";
        }
        estr_tabla = estr_tabla + dt_enc_tabla + body_tabla + filas_tabla + "</tbody></table>";
        result.close();
        conext.close();
        state.close();
        System.out.println(estr_tabla);
        return estr_tabla;

    } 
    
    public String list() throws SQLException {
        conexion conec = new conexion();

        List<Pacientes> listPac = new ArrayList<Pacientes>();
        Gson gson = new Gson();
        try (Connection conn = conec.AbrirConexion()) {
            String sql = "SELECT public.fn_select_paciente()";
            java.sql.Statement sta = conn.createStatement();
            ResultSet res = sta.executeQuery(sql);

            while (res.next()) {
                String nom = res.getString("fn_select_paciente").trim();
                Pacientes pac = new Pacientes(nom);
                listPac.add(pac);
            }
            return gson.toJson(listPac);

        } catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }
    }
    
    public String listDP(String paciente) throws SQLException {
        conexion conec = new conexion();

        List<DatosPaciente> listPac = new ArrayList<DatosPaciente>();
        Gson gson = new Gson();
        try (Connection conn = conec.AbrirConexion()) {
            String sql = "SELECT * FROM public.fn_select_datos_paciente('"+paciente+"')";
            java.sql.Statement sta = conn.createStatement();
            ResultSet res = sta.executeQuery(sql);

            while (res.next()) {
                String descripCondicion = res.getString("descrip").trim();
                String descripTipoCondicion = res.getString("descriptipo").trim();
                String edad = res.getString("edad").trim();
                DatosPaciente pac = new DatosPaciente(descripCondicion,descripTipoCondicion,edad);
                listPac.add(pac);
            }
            return gson.toJson(listPac);

        } catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }
    }
    

}
