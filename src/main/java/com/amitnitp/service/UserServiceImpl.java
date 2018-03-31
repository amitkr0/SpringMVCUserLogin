/**
 * 
 */
package com.amitnitp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.amitnitp.dao.UserDao;
import com.amitnitp.model.Login;
import com.amitnitp.model.User;

/**
 * @author Dell
 *
 */
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.amitnitp.service.UserService#register(com.amitnitp.model.User)
	 */
	public void register(User user) {
		// TODO Auto-generated method stub
		userDao.register(user);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.amitnitp.service.UserService#validateUser(com.amitnitp.model.Login)
	 */
	public User validateUser(Login login) {
		// TODO Auto-generated method stub
		return userDao.validateUser(login);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.amitnitp.service.UserService#getDetails(java.lang.String)
	 */
	public User getDetails(String userid) {
		// TODO Auto-generated method stub
		return userDao.getDetails(userid);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.amitnitp.service.UserService#getRecords()
	 */
	public List<User> getRecords() {
		// TODO Auto-generated method stub
		return userDao.getRecords();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.amitnitp.service.UserService#updateUser(com.amitnitp.model.User)
	 */
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userDao.updateUser(user);

	}

}
