package task1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class controller {
	
		@RequestMapping("/")
		public void home(HttpServletRequest req,HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException
		{
			res.sendRedirect("home.jsp");
		}
		
	

}
