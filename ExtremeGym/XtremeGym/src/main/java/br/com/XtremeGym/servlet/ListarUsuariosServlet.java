package br.com.XtremeGym.servlet;

import br.com.XtremeGym.dao.UserDao;
import br.com.XtremeGym.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet({"/achar-todos-usuarios", "/admin/achar-todos-usuarios"})
public class ListarUsuariosServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> todosUsuarios= new UserDao().acharTodosUsuarios();

        req.setAttribute("user", todosUsuarios);

        req.getRequestDispatcher("areaAdm/telaPesquisar.jsp").forward(req, resp);
    }
}
