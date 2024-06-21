package CafeteriaApp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CafeteriaAppServlet")
public class CafeteriaAppServlet extends HttpServlet {
    private List<MenuItem> menu = new ArrayList<>();
    private List<Review> reviews = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");

        if (action.equals("addMenuItem")) {
            String name = request.getParameter("name");
            int price = Integer.parseInt(request.getParameter("price"));
            if(findMenuItemByName(name)==null) {
            	menu.add(new MenuItem(name,price));
            }
        } else if (action.equals("addReview")) {
            String itemName = request.getParameter("itemName");
            int rating = Integer.parseInt(request.getParameter("rating"));
            String comment = request.getParameter("comment");
            MenuItem menuItem = findMenuItemByName(itemName);
            if (menuItem != null) {
                reviews.add(new Review(menuItem, rating, comment));
            }
        }
        response.sendRedirect("index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	String action = request.getParameter("action");

        if (action.equals("displayMenu")) {
            request.setAttribute("menu", menu);
            request.getRequestDispatcher("displayMenu.jsp").forward(request, response);
        } else if (action.equals("displayReviews")) {
            request.setAttribute("reviews", reviews);
            request.getRequestDispatcher("displayReviews.jsp").forward(request, response);
        } else {
            response.sendRedirect("index.jsp");
        }
    }

    private MenuItem findMenuItemByName(String name) {
        for (MenuItem item : menu) {
            if (item.getName().equalsIgnoreCase(name)) {
                return item;
            }
        }
        return null;
    }
}
