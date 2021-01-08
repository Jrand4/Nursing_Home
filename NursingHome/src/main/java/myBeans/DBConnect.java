/*
 * This contains the business logic to connect to the database
 *
 * @author nmahadev
 */
package myBeans;

import java.sql.*;

public class DBConnect {

  // driver and connection string variables
  private final String driver = "com.mysql.jdbc.Driver";
  private final String url = "jdbc:mysql://localhost:3306/nursinghome";
  private final String user = "mahadev";
  private final String pwd = "mahadev";

  // JDBC variables and methods
  private Connection conn = null;           // creates the pipeline 
  private Statement stm = null;
  private PreparedStatement pstm = null;
  private ResultSet rst = null;             // returns table of query
  private ResultSetMetaData rsmd = null;    // returns the structure information of the table

  // Utility Methods
  private String openDB() {
    try {
      Class.forName(driver);
      conn = DriverManager.getConnection(url, user, pwd);
      stm = conn.createStatement();
    } catch (Exception e) {
      return e.getMessage();
    }
    return "Opened";
  }

  private String closeDB() {
    try {
      stm.close();
      conn.close();
    } catch (Exception e) {
      return e.getMessage();
    }
    return "Closed";
  }

  // APIs connect database
  public String insertData(String sql) {
    String message = openDB();

    if (message.equals("Opened")) {
      try {
        stm.executeUpdate(sql);
        message = "Success";
      } catch (Exception e) {
        return e.getMessage();
      }
      message = "Update Successful";
    }
    closeDB();
    return message;
  }
  
    public String htmlTable(String sql) {
    String result = "<table>\n";
    String message = openDB();
    if (message.equals("Opened")) {
      try {
        rst = stm.executeQuery(sql);
        rsmd = rst.getMetaData();
        int count = rsmd.getColumnCount();
        // create column headings
        result += "<tr>\n";
        for (int i = 0; i < count; i++) {
          result += "<th>" + rsmd.getColumnName(i + 1) + "</th>\n";
        }
        result += "</tr>\n";
        // create data rows
        while (rst.next()) {
          result += "<tr>\n";
          for (int i = 0; i < count; i++) {
            result += "<td>" + rst.getString(i + 1) + "</td>\n";
          }
          result += "</tr>\n";
        }
        result += "</table>\n";
        message = closeDB();
        return result;
      } catch (Exception e) {
        return e.getMessage();
      }
    } else {
      return message;
    }
  }
}
