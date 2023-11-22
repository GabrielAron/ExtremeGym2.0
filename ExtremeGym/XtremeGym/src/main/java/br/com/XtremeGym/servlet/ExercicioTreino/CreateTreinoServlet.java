package br.com.XtremeGym.servlet.ExercicioTreino;

import br.com.XtremeGym.dao.ExercicioDao;
import br.com.XtremeGym.dao.UserDao;
import br.com.XtremeGym.model.Exercicio;
import br.com.XtremeGym.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/atualiza-Exercicio")
public class CreateTreinoServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String exerName = req.getParameter("exercicio-name");
        String exerCateg = req.getParameter("exercicio-cat");
        String exerRep = req.getParameter("exercicio-rep");
        String exerSerie = req.getParameter("exercicio-serie");
        String exerId = req.getParameter("exercicio-id");



        if (exerName.isBlank()||exerCateg.isBlank()||exerRep.isBlank()||exerSerie.isBlank()){
            req.setAttribute("messageSingIn", "Por favor, preencha todos os campos");
        } else{
            Exercicio exercicio= new Exercicio(exerId, exerName, exerCateg, exerRep, exerSerie);

            ExercicioDao exercicioDao= new ExercicioDao();
            if(exerId.isBlank()){
                exercicioDao.criarExercicio(exercicio);
                req.setAttribute("messageSingIn", "Cadastro concluído com sucesso");
                resp.sendRedirect("/listar-todos-treinos");
            }else{
                exercicioDao.updateExercicio(exercicio);
                resp.sendRedirect("/listar-todos-treinos");
            }
        }


    }
}