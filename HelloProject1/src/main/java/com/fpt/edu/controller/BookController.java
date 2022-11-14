package com.fpt.edu.controller;

import com.fpt.edu.dao.BookDao;
import com.fpt.edu.dao.NhaXuatBanDao;
import com.fpt.edu.model.Book;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "BookController", value = "/Books")
public class BookController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        if(method == null){
            method="index";
        }
        RequestDispatcher rs = null;
        BookDao bookDao = new BookDao();
        NhaXuatBanDao nhaXuatBanDao = new NhaXuatBanDao();
        switch (method){
            case "new":
                request.setAttribute("listnxb",nhaXuatBanDao.getALl());
                rs = request.getRequestDispatcher("book/book-new.jsp");
                break;
            case "edit":
                break;
            case "delete":
                break;
            default:
//TODO create bookDao.getAll();
//                request.setAttribute("listbooks", bookDao.getALl());
                rs = request.getRequestDispatcher("book/book-list.jsp");
        }
        rs.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        if(method == null){
            method="index";
        }
        RequestDispatcher rs = null;
        BookDao bookDao = new BookDao();
        switch (method){
            case "add":
                Book b = new Book();
                b.setTen(request.getParameter("ten"));
                b.setTacgia(request.getParameter("tacgia"));
                b.setNxb_id(Integer.parseInt(request.getParameter("nxb_id")));
                b.setGiaban(Float.parseFloat(request.getParameter("giaban")));
                bookDao.add(b);
                break;
            case "update":
                break;
            default:
//TODO create bookDao.getAll();
//                request.setAttribute("listbooks", bookDao.getALl());
        }
        response.sendRedirect("Books");
    }
}
