package Servlet;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class CreateNhanVien
 */
@WebServlet("/CreateNhanVien")
public class CreateNhanVien extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateNhanVien() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Connection conn = null;
		
		try {
			conn = MySQLConntUtils.getMySQLConnection();
			
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String bdate = request.getParameter("bdate");
			String sex = request.getParameter("sex");
			String address = request.getParameter("address");
			String phone = request.getParameter("phone");
			Part filePart = request.getPart("file");
			String filename = getFileName(filePart);
			InputStream fileContent = filePart.getInputStream();
			
			String uploadThuMuc = getServletContext().getRealPath("D:/Java_Nhóm 2 ngu/Demo_cuoiky/src/main/webapp/img");
			File upload = new File(uploadThuMuc);
			if (!upload.exists()) {
				upload.mkdir();
			}
			String filePath = uploadThuMuc + File.separator + filename;
			Files.copy(fileContent, new File(filePath).toPath());

			nhanVien nhanv = new nhanVien(id, name, bdate, sex, address, phone, filePath);
			
			DBUtils.insertNVien(conn, nhanv);
			
			String context = request.getContextPath();
			response.sendRedirect(context + "/IndexNhanVien");
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			Logger.getLogger(SignInServlet.class.getName()).log(Level.SEVERE, null, e);
		}finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException ex) {
					Logger.getLogger(SignInServlet.class.getName()).log(Level.SEVERE, null, ex);
				}
			}

		}	
	}
	
	private String getFileName (final Part part) {
		final String partHeader = part.getHeader("content-disposition");
		for(String content: partHeader.split(";")) {
			if(content.trim().startsWith("filename")) {
				return content.substring(content.indexOf('=')+ 1).trim().replace("\"", "");
			}
		}
		return null;
	}

}
