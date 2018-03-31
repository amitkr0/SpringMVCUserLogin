/**
 * 
 */
package com.amitnitp.dao;

import java.util.List;

/**
 * @author Dell
 *
 */

import com.amitnitp.model.Login;
import com.amitnitp.model.User;

public interface UserDao {
	
  void register(User user);
  User validateUser(Login login);
  
  User getDetails(String userid);

  List<User> getRecords();
  
  void updateUser(User user);
  
}
