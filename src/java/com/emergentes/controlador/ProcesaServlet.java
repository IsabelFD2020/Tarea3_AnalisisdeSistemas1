package com.emergentes.controlador;

import com.emergentes.modelo.Intentos;
import com.emergentes.modelo.IntentosDao;
import com.emergentes.modelo.Registro;
import com.emergentes.modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Random;
import java.util.Set;
import javax.swing.JOptionPane;
import java.util.List;

@WebServlet(name = "ProcesaServlet", urlPatterns = {"/ProcesaServlet"})
public class ProcesaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String resultadoS;
        Registro regi = new Registro();
        Intentos inte;
        IntentosDao in = new IntentosDao();
        
        //Probar si es una valor procesable
        try {
            int numero = Integer.parseInt(request.getParameter("numero"));
            int usu = Integer.parseInt(request.getParameter("accion"));
            int resultado = sumaPrimos(numero);
            resultadoS = Integer.toString(resultado);
            
            inte = new Intentos(usu, numero, resultado);
            
            in.ingresarIntentos(inte);
            List lista = in.mostrar(usu);
            
            request.getSession().setAttribute("mostrarInte", lista);
            request.getSession().setAttribute("miRegistro", in);
            request.getRequestDispatcher("principal.jsp").forward(request, response);

        } catch (Exception ex) { //Si no es un valor valido
            request.getRequestDispatcher("principal.jsp").forward(request, response);
        }

    }

        
    
    
    public static boolean esPrimo(int numero) {
        for (int i = 3; i * i <= numero; i += 2) {
            if (numero % i == 0) {
                return false;
            }
        }
        return true;
    }

    public static int sumaPrimos(int n) {
        int suma = 2;

        for (int i = 3; i < n; ++i) {
            if (i % 2 == 1 && esPrimo(i)) {
                suma += i;
            }
        }

        return suma;
    }
}
