package com.example.calculator;

import com.example.calculator.model.Calculator;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "servlet.CalculateServlet", value = "/calculate")
public class CalculateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double firstOperand = Double.parseDouble(req.getParameter("first-operand"));
        double secondOperand = Double.parseDouble(req.getParameter("second-operand"));
        char operator = req.getParameter("operator").charAt(0);
        try {
            double result = Calculator.calculate(firstOperand,secondOperand,operator);
            req.setAttribute("firstOperand", firstOperand);
            req.setAttribute("secondOperand",secondOperand);
            req.setAttribute("operator",operator);
            req.setAttribute("result",result);
            req.getRequestDispatcher("calculator.jsp").forward(req,resp);
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}