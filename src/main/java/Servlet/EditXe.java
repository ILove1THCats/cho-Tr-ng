package Servlet;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class EditXe
 */
@MultipartConfig(
		 fileSizeThreshold = 1024 * 1024 * 10,
		 maxFileSize = 1024 * 1024 * 50,
		 maxRequestSize = 1024 * 1024 * 100)
@WebServlet("/EditXe")
public class EditXe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditXe() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());

		String errorString = null;
		String id = request.getParameter("id");
		String cal = request.getParameter("cal");
		xe x = new xe();
		List<giaDoXe> xe = new ArrayList<giaDoXe>();
		
		try {
			Connection conn = MySQLConntUtils.getMySQLConnection();
			x = DBUtils.findXe(conn, id);
			
			xe = DBUtils.createShowX(conn);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("errorString", errorString);
		request.setAttribute("create", xe);
		request.setAttribute("xe", x);
		request.setAttribute("cal", cal);
		request.getRequestDispatcher("/EditXe.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Connection conn = null;
		try {
			conn = MySQLConntUtils.getMySQLConnection();

			String id = request.getParameter("id");
			String catagory = request.getParameter("catagory");
			String seanum = request.getParameter("seanum");
			String image = "";
			Part filePart = request.getPart("imageX");
			String filename = extractFilename(filePart);
			filename = new File(filename).getName();

			filePart.write("D:/Java_Nhóm 2 ngu/Demo_cuoiky/src/main/webapp/img/" + filename);
			image = "img/" + filename;

			xe x = new xe(id, catagory, seanum, image);

			DBUtils.EditXe(conn, x);
			

			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/IndexXe");
		} catch (SQLException | ClassNotFoundException ex) {
			Logger.getLogger(LogInServlet.class.getName()).log(Level.SEVERE, null, ex);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException ex) {
					Logger.getLogger(LogInServlet.class.getName()).log(Level.SEVERE, null, ex);
				}
			}

		}
	}
	private String extractFilename (final Part part) {
		String partHeader = part.getHeader("content-disposition");
		for(String content: partHeader.split(";")) {
			if(content.trim().startsWith("filename")) {
				return content.substring(content.indexOf('=') + 2, content.length() - 1);
			}
		}
		return "";
	}
}
