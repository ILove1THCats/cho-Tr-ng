package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class IndexNhanVien
 */
@WebServlet("/IndexNhanVien")
public class IndexNhanVien extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IndexNhanVien() {
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
//		response.getWriter().append("Served at: ").append(request.getContextPath());

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		Connection conn = null;

		List<nhanVien> list = new ArrayList<nhanVien>();
		int endPage = 0;
		int pageSize = 3;
		int index = 0;

		try {
			conn = MySQLConntUtils.getMySQLConnection();
			String rawIndex = request.getParameter("index");
			if (rawIndex != null) {
				index = Integer.parseInt(rawIndex);
				index = index * pageSize;
			}
			// Phân trang
			list = DBUtils.WrapPageNV(conn, index, pageSize);

			int count = DBUtils.countNV(conn);
			endPage = count/pageSize;

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			Logger.getLogger(LogInServlet.class.getName()).log(Level.SEVERE, null, e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException ex) {
					Logger.getLogger(LogInServlet.class.getName()).log(Level.SEVERE, null, ex);
				}
			}

		}

		request.setAttribute("end", endPage);
		request.setAttribute("lst", list);
		request.getRequestDispatcher("/IndexNhanVien.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
	}

}
