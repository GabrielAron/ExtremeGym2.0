package br.com.XtremeGym.servlet.User;

import br.com.XtremeGym.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-User")
public class DeletarUsuarioServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("User-id");

        new UserDao().deletaUsuarioPorId(id);

        resp.sendRedirect("/achar-todos-usuarios");
    }
}
