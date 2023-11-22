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

@WebServlet({"/listar-todos-treinos", "/admin/listar-todos-treinos"})
public class ListarTreinosServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Exercicio> todosExercicios= new ExercicioDao().mostrarTodosExercicios();

        req.setAttribute("exercicio", todosExercicios);

        req.getRequestDispatcher("telaTreinos/telaPesquisarTreino.jsp").forward(req, resp);
    }
}
