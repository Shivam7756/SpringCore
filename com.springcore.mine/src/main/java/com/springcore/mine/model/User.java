package com.springcore.mine.model;

//This class is created for using @ModelAttribute for sending data from view to controller
//here , the field name should be the same as that in the view page(form) to perfectly map them with the field of this class
public class User {
        private String email;
        private String userName;
        private String userPassword;
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getUserPassword() {
			return userPassword;
		}
		public void setUserPassword(String userPassword) {
			this.userPassword = userPassword;
		}
		@Override
		public String toString() {
			return "User [email=" + email + ", userName=" + userName + ", userPassword=" + userPassword + "]";
		}
		
		
}
