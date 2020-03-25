package ExamenFInalBD;

import java.sql.SQLException;
import java.util.ArrayList;

public class Main {

	public static void main(String[] args) {

		Conector instancia = Conector.getInstancia();
		try {
			ArrayList<String> listNro = instancia.getNro();
			for (String nro : listNro) {
				System.out.println(nro);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println();

		try {
			ArrayList<String> listJoven = instancia.getJoven();
			for (String joven : listJoven) {
				System.out.println(joven);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println();
		try {
			ArrayList<String> listEquipo = instancia.getEquipo();
			for (String equipo : listEquipo) {
				System.out.println(equipo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}