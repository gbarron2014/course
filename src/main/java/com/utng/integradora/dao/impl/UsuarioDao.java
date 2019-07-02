package com.utng.integradora.dao.impl;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.utng.integradora.entity.Usuario;

/**
 * Clase que permite acceder a la base de datos.
 * 
 * @author Gabriel Barrón Rodríguez
 * @author 19 de Junio 2019
 *
 */
public class UsuarioDao {

	private static final Logger logger = LoggerFactory.getLogger(UsuarioDao.class);
	private JdbcTemplate jt; /* objeto de conectividad a la Base de datos */

	public UsuarioDao(DataSource ds) {
		jt = new JdbcTemplate(ds);
	}

	/**
	 * Método que permite verificar si un usuario se encuentra en la Base de datos.
	 * 
	 * @param correo   Email del usuario
	 * @param password Contraseña del usuario
	 * @return Regresa el objeto regresado con la conexión.
	 */
	public Usuario login(String correo, String password) {
		logger.info("Método login DAO correo " + correo + " Contraseña " + password);

		String sql = "SELECT * FROM usuario WHERE correo = ? AND password = ?;";

		try {
			return jt.queryForObject(sql, new Object[] { correo, password },
					new BeanPropertyRowMapper<Usuario>(Usuario.class));
		} catch (Exception e) {
			return null;
		}
	}


	@Override
	public String toString() {
		return "UsuarioDao [JDBCTemplate=" + this.jt + "]";
	}


}
