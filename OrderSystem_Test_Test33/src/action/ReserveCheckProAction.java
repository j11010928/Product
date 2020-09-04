package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.vo.ActionForward;

public class ReserveCheckProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("ReserveCheckProAction");
		
		ActionForward forward=null;
		
		String date=request.getParameter("date");
		
		
		
		
		return forward;
	}

}
