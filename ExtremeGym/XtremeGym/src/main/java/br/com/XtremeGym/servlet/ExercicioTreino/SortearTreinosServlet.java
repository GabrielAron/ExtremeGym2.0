package br.com.XtremeGym.servlet.ExercicioTreino;

import br.com.XtremeGym.dao.ExercicioDao;
import br.com.XtremeGym.model.Exercicio;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet({"/Sortear-Treino", "/admin/Sortear-Treino"})
public class SortearTreinosServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Exercicio> exercicioPeito= new ExercicioDao().SortearExercicioPeito();
        List<Exercicio> exercicioCostas= new ExercicioDao().SortearExercicioCosta();
        List<Exercicio> exercicioOmbro= new ExercicioDao().SortearExercicioOmbro();
        List<Exercicio> exercicioBicepsTriceps= new ExercicioDao().SortearExercicioBicepsTripces();
        List<Exercicio> exercicioCore= new ExercicioDao().SortearExercicioCore();
        List<Exercicio> exercicioPerna= new ExercicioDao().SortearExercicioPerna();

        req.setAttribute("peitos", exercicioPeito);
        req.setAttribute("costas", exercicioCostas);
        req.setAttribute("ombro", exercicioOmbro);
        req.setAttribute("biceps", exercicioBicepsTriceps);
        req.setAttribute("core", exercicioCore);
        req.setAttribute("perna", exercicioPerna);

        req.getRequestDispatcher("telaTreinos/Treinos.jsp").forward(req, resp);
    }
}
