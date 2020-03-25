package ExamenFInalBD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Conector {

	

	private static Connection con;
	private static Conector INSTANCE = null;

	private Conector() {

	}

	private synchronized static void crearInstancia() {
		if (INSTANCE == null) {
			INSTANCE = new Conector();
			crearConexion();
		}
	}

	public static Conector getInstancia() {
		if (INSTANCE == null) {
			crearInstancia();
		}
		return INSTANCE;
	}

	// Conexion al usuario
	private static void crearConexion() {
		String host = "127.0.0.1";
		String user = "Ian";
		String password = "123456";
		String dataBase = "fifa";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String urlConexion = "jdbc:mysql://" + host + "/" + dataBase + "?" + "user=" + user + "&password="
					+ password;
			con = DriverManager.getConnection(urlConexion);
			System.out.println("Lo lograste pezzo");
			System.out.println();
		} catch (Exception e) {

		}

	}

	// Ejercicio 1
	public ArrayList<String> getNro() throws SQLException {
		ArrayList<String> listNro= new ArrayList<String>();
		PreparedStatement ps = con
				.prepareStatement("select count(id) as numero_jugadores_Manchester_City\r\n" + 
						"from other_details where club='Manchester City';");
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			listNro.add(rs.getString("numero_jugadores_Manchester_City") );
		}
		rs.close();
		return listNro;
	}

	// Ejercicio 2
	public ArrayList<String> getJoven() throws SQLException {
		ArrayList<String> listJoven = new ArrayList<String>();
		PreparedStatement ps = con
				.prepareStatement("select personal_details.player_name,personal_details.age\r\n" + 
						"from personal_details\r\n" + 
						"where age in(select min(personal_details.age) from personal_details\r\n" + 
						"inner join other_details on personal_details.player_id=other_details.player_id\r\n" + 
						"where other_details.club='Real Madrid CF')");
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			listJoven.add(rs.getString("personal_details.name") + "  " + rs.getString("personal_details.age"));
		}
		rs.close();
		return listJoven;
	}

	// Ejercicio 3
	public ArrayList<String> getEquipo() throws SQLException {
		ArrayList<String> listEquipo = new ArrayList<String>();
		PreparedStatement ps = con.prepareStatement("select other_details.club\r\n" + 
				"from other_details\r\n" + 
				"inner join player_stats on other_details.player_id=player_stats.player_id\r\n" + 
				"where penalties in (select max(penalties) from player_stats);");
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			listEquipo.add(rs.getString("other_details.club"));
		}
		rs.close();
		return listEquipo;
	}

}
