package br.com.XtremeGym.servlet;

import br.com.XtremeGym.dao.UserDao;
import br.com.XtremeGym.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("telaLogin/loginCadastro.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("User-login-email");
        String senha = req.getParameter("User-login-senha");


        User user = new User(email, senha);

        int valido = new UserDao().login(user);

        switch (valido){
            case 0:
                req.setAttribute("message", "login invalido");
                req.getRequestDispatcher("telaLogin/loginCadastro.jsp").forward(req, resp);
                break;

            case 1: //NÃO É ADM
                req.getSession().setAttribute("loggedUser", email);

                req.getRequestDispatcher("Logado_index.jsp").forward(req, resp);
                break;

            case 2: //É ADM
                req.getSession().setAttribute("loggedUser", email);

                req.getRequestDispatcher("Escolha.jsp").forward(req, resp);
                break;

        }
    }
}
