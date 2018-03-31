/**
 * 
 */
package com.amitnitp.service;

import java.util.List;

import com.amitnitp.model.Login;
import com.amitnitp.model.User;

/**
 * @author Dell
 *
 */
public interface UserService {
	
	void register(User user);
	User validateUser(Login login);
	User getDetails(String userid);
	List<User> getRecords();
	void updateUser(User user);

}
