package br.com.XtremeGym.servlet.User;

import br.com.XtremeGym.dao.UserDao;
import br.com.XtremeGym.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-User")
public class CreateUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName=req.getParameter("User-name");
        String userCpf=req.getParameter("User-cpf");
        String userEmail=req.getParameter("User-email");
        String userSenha=req.getParameter("User-senha");
        String userId=req.getParameter("User-id");



        if (userName.isBlank()||userCpf.isBlank()||userEmail.isBlank()||userSenha.isBlank()){
            req.setAttribute("messageSingIn", "Por favor, preencha todos os campos");
        } else{
            User user= new User(userName, userCpf, userEmail, userSenha, userId);

            UserDao userDao =new UserDao();
            if(userId.isBlank()){
                userDao.createUser(user);
                req.setAttribute("messageSingIn", "Cadastro concluído com sucesso");
                req.getRequestDispatcher("telaLogin/loginCadastro.jsp").forward(req, resp);
            }else{
                userDao.updateUsuario(user);
                resp.sendRedirect("/achar-todos-usuarios");
            }
        }


    }
}