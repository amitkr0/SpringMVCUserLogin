/**
 * 
 */
package com.amitnitp.dao;

import com.amitnitp.model.Login;
import com.amitnitp.model.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 * @author Dell
 *
 */
public class UserDaoImpl implements UserDao {

	@Autowired
	DataSource datasource;
	@Autowired
	JdbcTemplate jdbcTemplate;

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.amitnitp.dao.UserDao#register(com.amitnitp.model.User)
	 */
	public void register(User user) {
		// TODO Auto-generated method stub

		String sql = "insert into users values(?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] { user.getUsername(), user.getName(), user.getGender(), user.getMobile(),
				user.getEmail(), user.getCity(), user.getPassword() });

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.amitnitp.dao.UserDao#validateUser(com.amitnitp.model.Login)
	 */
	public User validateUser(Login login) {
		// TODO Auto-generated method stub
		String sql = "select * from users where username='" + login.getUsername() + "' and password='"
				+ login.getPassword() + "'";
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		return users.size() > 0 ? users.get(0) : null;
	}

	public User getDetails(String userid) {
		String sql = "select * from users where username='" + userid + "'";
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		return users.get(0);
	}

	public List<User> getRecords() {
		String sql = "select * from users where username!='admin'";
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		return users;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.amitnitp.dao.UserDao#deleteUser(java.lang.String)
	 */
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		String sql = "UPDATE users SET username=?, name=?, gender=?, mobile=?, email=?, city=?, password=? WHERE username=?";
		jdbcTemplate.update(sql,user.getUsername(),user.getName(),user.getGender(),user.getMobile(),user.getEmail(),
				user.getCity(),user.getPassword(),user.getUsername());

	}

}

class UserMapper implements RowMapper<User> {
	public User mapRow(ResultSet rs, int arg1) throws SQLException {
		User user = new User();
		user.setUsername(rs.getString("username"));
		user.setPassword(rs.getString("password"));
		user.setName(rs.getString("name"));
		user.setGender(rs.getString("gender"));
		user.setEmail(rs.getString("email"));
		user.setCity(rs.getString("city"));
		user.setMobile(rs.getString("mobile"));
		return user;
	}
}
