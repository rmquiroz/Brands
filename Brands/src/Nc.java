import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;

/**
 * Servlet implementation class Nc
 */
@WebServlet("/Nc")
public class Nc extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map reportes;
	private static String PATH_REPORT;
	private static String IMG_DIR;       
	private static String img_dir;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Nc() {
    	super();
    	reportes = new HashMap();
    	reportes.put("1","notacred");
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		createReport(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		createReport(request, response);
	}
	private void createReport(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		SimpleDateFormat anioActual = new SimpleDateFormat("yyyy");
		SimpleDateFormat fechaActuaL = new SimpleDateFormat("dd 'de' MMMM 'de' yyyy");
	    System.out.println("GENERANDO REPORTE ONLINE....");
	    response.setContentType("application/pdf");
	    
	    try {
			Class.forName("org.postgresql.Driver");
			
		//	String url = "jdbc:postgresql://10.1.100.50:5932/openbravo";
        //Connection cn = DriverManager.getConnection(url, "postgres", "s3st2m1s4e");

		//	String url = "jdbc:postgresql://127.0.0.1:5432/openbravo";
		//	Connection cn = DriverManager.getConnection(url, "postgres", "manoatl2");
			
			String url = "jdbc:postgresql://10.1.250.20:5932/openbravo";
			Connection cn = DriverManager.getConnection(url, "postgres", "s3st2m1s4e");
			

            JasperReport jasperReport = null;
            Map parameterMap = new HashMap();
  	           Map parametros = request.getParameterMap();
  	          System.out.println("PARAMETROS .... ");
  	           for (Iterator iterator = parametros.keySet().iterator(); iterator.hasNext();) {
  	            Object key_ = iterator.next();
  	              String key = (String)key_;
  	             String valor = request.getParameter(key);
             System.out.println((new StringBuilder(String.valueOf(key))).append(" ::> ").append(valor).toString());
            if (!key.equals("reportID")) {
  	                  parameterMap.put(key, valor);
  	                        }
  	                    }
  	           
  	         parameterMap.put("img_dir", (new StringBuilder(String.valueOf(request.getSession().getServletContext().getRealPath(img_dir)))).append("/").toString());
  	            parameterMap.put("IMG_DIR", (new StringBuilder(String.valueOf(request.getSession().getServletContext().getRealPath(IMG_DIR)))).append("/").toString());
  	           parameterMap.put("SUBREPORT_DIR", request.getSession().getServletContext().getRealPath("/"));
  	         
  	           System.out.println((new StringBuilder("GENERANDO EL REPORTE  ")).append((String)reportes.get(request.getParameter("reportID"))).toString());
  	            String reporteJasper = request.getSession().getServletContext().getRealPath((new StringBuilder(String.valueOf(PATH_REPORT))).append((String)reportes.get(request.getParameter("reportID"))).append(".jasper").toString());
  	      
  	            System.out.println(reportes);
  	            jasperReport = (JasperReport)JRLoader.loadObject(new FileInputStream(reporteJasper));
  	            
  	           net.sf.jasperreports.engine.JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameterMap, cn);
  	            java.io.OutputStream oS = null;
  	          oS = response.getOutputStream();
  	         JasperExportManager.exportReportToPdfStream(jasperPrint, oS);
  	           cn.close();

			
	    } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		} catch (Exception ex) {
			// TODO: handle exception
			   ex.printStackTrace();
		}
	}
    static  {
	       PATH_REPORT = "/reportes/";
	       IMG_DIR = (new StringBuilder(String.valueOf(PATH_REPORT))).append("img/").toString();
	       img_dir = (new StringBuilder(String.valueOf(PATH_REPORT))).append("img/").toString();
           }

}