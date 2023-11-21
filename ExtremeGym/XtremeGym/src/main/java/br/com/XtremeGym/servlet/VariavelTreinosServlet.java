package br.com.XtremeGym.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/treinos")
public class VariavelTreinosServlet extends HttpServlet {
    private static int count = 0;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        count = count++;
        req.setAttribute("count",5);
        req.getRequestDispatcher("telaTreinos/Treinos.jsp").forward(req,resp);
    }
}
