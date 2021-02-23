package conexiones;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
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
        String cadena = "jdbc:postgresql://localhost:5434/monitorsignosvitales";
        String usuario = "Prueba";
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
        try{
        if (result.next() == false) {
            

        } else {
            X = result.getString(1);
        }
        }catch(Exception ex)
        {
            X = "Error: "+X;
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
    public String CargarTable_3Botones(String consulta, String classTh,  String classTd, String classTr,
            String nBtn1, String nBtn2, String nBtn3,
            String classnBtn1, String classnBtn2, String classnBtn3, String idTabla //, String ActnBtn1, String ActnBtn2, String ActnBtn3
           ) throws SQLException{
       String estr_tabla = "<table class = \""+idTabla+"\" cellspacing=\"3\">";
       String dt_enc_tabla = "<Thead><tr class=\""+classTr+"\">";
       String body_tabla = "<tboby>";
       String filas_tabla = "<tr>";
            Connection conext = AbrirConexion();
           //try () {
               java.sql.Statement state=conext.createStatement();
               ResultSet result=state.executeQuery(consulta);
               ResultSetMetaData resultMD=result.getMetaData();
               int cantColumns=resultMD.getColumnCount();
               for (int i = 1; i <= cantColumns; i++)
               {
                  dt_enc_tabla = dt_enc_tabla+"<th  class=\""+classTh+"\">"+(resultMD.getColumnLabel(i))+"</th>";
               }
               dt_enc_tabla = dt_enc_tabla+"<th class=\"acciones\" colspan=\"3\">Acciones</th> </tr></thead>";
               
               while(result.next())
               {
                   Object[] row=new Object[cantColumns];
                   for (int i = 0; i < cantColumns; i++)
                   {
                       filas_tabla=filas_tabla +"<td class=\""+classTd+"\">"+result.getObject(i+1)+"</td>";
                   }
                   filas_tabla = filas_tabla+"<td> <input type = \"button\" id=\"btn"+nBtn1+"\" value = \""+nBtn1+"\"/></td>";
                   filas_tabla = filas_tabla+"<td> <input type = \"button\" id=\"btn"+nBtn2+"\" value = \""+nBtn2+"\"/></td>";
                   filas_tabla = filas_tabla+"<td> <input type = \"button\" id=\"btn"+nBtn3+"\" value = \""+nBtn3+"\"></td>";
                   filas_tabla = filas_tabla+"</tr>"; 
                   dt_enc_tabla = dt_enc_tabla+"</tr>";
               }
               estr_tabla= estr_tabla+dt_enc_tabla+body_tabla+filas_tabla+"</tbody></table>";
               result.close();
               conext.close();
               state.close();
               System.out.println(estr_tabla);
               return estr_tabla;
        
    }

//public static ResultSet Consulta(String Cadena) // Este string es la consulta
//{
//
//        try
//        {
//            //Class.forName("org.postgresql.Driver");
//           // Connection conex = DriverManager.getConnection(cadena, usuario, clave);
//            Connection conex = AbrirConexion();
//            java.sql.Statement st = conex.createStatement();
//          //  String sql = "Select region_id, region_description from region";
//            ResultSet result = st.executeQuery(Cadena);    //data set en C#
//            return result;
//
//        }
//        catch (Exception exc)
//        {
//            System.out.println("error: " +exc.getMessage()); 
//        }
//        return null;
//}
//public static void CargarjTable(JTable tabla1,String consulta ) throws SQLException{
//       //try
//       // {
//            DefaultTableModel model=new DefaultTableModel();
//            tabla1.setModel(model);
//            tabla1.removeAll();
//            Connection conext = AbrirConexion();
//           //try () {
//               java.sql.Statement state=conext.createStatement();
//               ResultSet result=state.executeQuery(consulta);
//               ResultSetMetaData resultMD=result.getMetaData();
//               int cantColumns=resultMD.getColumnCount();
//               for (int i = 1; i <= cantColumns; i++)
//               {
//                   model.addColumn(resultMD.getColumnLabel(i));
//               }
//               while(result.next())
//               {
//                   Object[] row=new Object[cantColumns];
//                   for (int i = 0; i < cantColumns; i++)
//                   {
//                       row[i]=result.getObject(i+1);
//                   }
//                   model.addRow(row);
//               }
//               result.close();
//          // }
//       // }
//       // catch(SQLException ex)
//       // {
//         //  JOptionPane.showMessageDialog(null, ex.getMessage()); 
//       // }
//    }
//public  void LlenarTablaX(JTable tabla1,String consulta ) throws SQLException{
//      // try
//       // {
//            DefaultTableModel model=new DefaultTableModel();
//            tabla1.setModel(model);
//            tabla1.removeAll();
//            Connection conext = AbrirConexion();
//          // try () {
//               java.sql.Statement state=conext.createStatement();
//               ResultSet result=state.executeQuery(consulta);
//               ResultSetMetaData resultMD=result.getMetaData();
//               int cantColumns=resultMD.getColumnCount();
//               for (int i = 1; i <= cantColumns; i++)
//               {
//                   model.addColumn(resultMD.getColumnLabel(i));
//               }
//               while(result.next())
//               {
//                   Object[] row=new Object[cantColumns];
//                   for (int i = 0; i < cantColumns; i++)
//                   {
//                       row[i]=result.getObject(i+1);
//                   }
//                   model.addRow(row);
//               }
//               result.close();
//    }
//  public int Verifica(String usuario, String pass) {
//
// try
//        {
//            Connection conex = AbrirConexion();
//            java.sql.Statement st = conex.createStatement();
//            ResultSet result = st.executeQuery("select * from acceso where usuario='" + usuario + "' and contrasenia ='" + pass + "' ");    //data set en C#
//             try {
//                while (result.next()) {
//                    return 1;
//                }
//            } catch (Exception e) {
//            }
//        }
//        catch (Exception exc)
//        {
//            System.out.println("error: " +exc.getMessage()); 
//        }
//        return 0;
//    }
//    
}
