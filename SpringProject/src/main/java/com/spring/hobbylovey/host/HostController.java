package com.spring.hobbylovey.host;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;
import com.spring.hobbylovey.lecture.ReviewDTO;
import com.spring.hobbylovey.notice.NoticeDTO;

/***
 * 호스트 관리 페이지를 불러오기 위한 컨트롤러
 * @author 2조
 *
 */
@Controller
public class HostController {
	
	@Autowired
	private HostDAO dao; 

	
	/***
	 * 호스트 관리 페이지를 보여주기 위한 메소드 
	 * @param req
	 * @param resp
	 * @param session
	 * @return 호스트 관리 메인 페이지로 이동하기위한 리턴
	 */
	@RequestMapping(value = "/host/hostmain.action", method = { RequestMethod.GET })
	public String hostmain(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		
		Calendar cal = Calendar.getInstance();
		
		String today = String.format("%tF", cal);
		int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		cal.set(Calendar.DATE, 1);
		String startDate= String.format("%tF",cal);
		cal.set(Calendar.DATE, lastDay);
		String endDate =String.format("%tF",cal);
		String id=(String)session.getAttribute("id");
		
		String hostSeq= dao.getHostSeq(id);
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("today", today);
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		map.put("hostSeq", hostSeq);
		
		
		int classCount = dao.getMyClassCount(id);
		int thisMonthParticipant = dao.getThisMonthCount(map);
		int allParticipant = dao.getAllCount(hostSeq);
		int reviewCount = dao.getReviewCount(hostSeq);
		int thisMonthSales = dao.getThisMonthSales(map);
		int allSales = dao.getAllSales(map);
		int manCount = dao.getManCount(hostSeq);
		List<SalesDTO> slist = dao.getSalesList(hostSeq);
		
		map.put("Jan", "0");
		map.put("Feb", "0");
		map.put("Mar", "0");
		map.put("Apr", "0");
		map.put("May", "0");
		map.put("Jun", "0");
		map.put("Jul", "0");
		map.put("Aug", "0");
		map.put("Sep", "0");
		map.put("Oct", "0");
		map.put("Nov", "0");
		map.put("Dec", "0");
		
		
		for(SalesDTO sl:slist) {
			if(sl.getClassDate().substring(5).equals("01")) {
				map.put("Jan", sl.getSales());
			}else if(sl.getClassDate().substring(5).equals("02")) {
				map.put("Feb", sl.getSales());
			}else if(sl.getClassDate().substring(5).equals("03")) {
				map.put("Mar", sl.getSales());
			}else if(sl.getClassDate().substring(5).equals("04")) {
				map.put("Apr", sl.getSales());
			}else if(sl.getClassDate().substring(5).equals("05")) {
				map.put("May", sl.getSales());
			}else if(sl.getClassDate().substring(5).equals("06")) {
				map.put("Jun", sl.getSales());
			}else if(sl.getClassDate().substring(5).equals("07")) {
				map.put("Jul", sl.getSales());
			}else if(sl.getClassDate().substring(5).equals("08")) {
				map.put("Aug", sl.getSales());
			}else if(sl.getClassDate().substring(5).equals("09")) {
				map.put("Sep", sl.getSales());
			}else if(sl.getClassDate().substring(5).equals("10")) {
				map.put("Oct", sl.getSales());
			}else if(sl.getClassDate().substring(5).equals("11")) {
				map.put("Nov", sl.getSales());
			}else if(sl.getClassDate().substring(5).equals("12")) {
				map.put("Dec", sl.getSales());
			}
			
		}
	
		String manPer="";
		String womanPer="";
		
		if(allParticipant!=0) {
		manPer = String.format("%.1f", ((double)manCount/allParticipant)*100); 
		womanPer = String.format("%.1f",((double)(allParticipant-manCount)/allParticipant)*100); 
		}else {
			manPer="0";
			womanPer="0";
		}
		
		System.out.println(manPer+" "+womanPer);
		map.put("reviewCount", Integer.toString(reviewCount));
			
		int avgScore=-1;
			
		if(reviewCount != 0) {
			avgScore = dao.getAvgScore(map);
		}else {
			avgScore=0;	
		}
		List<NoticeDTO> nlist = dao.getNoticeList();
		
		for(NoticeDTO nd : nlist) {
			
			if(nd.getTitle().length()>26) {
				nd.setTitle(nd.getTitle().substring(0, 26)+"...");
			}
		}
		
		req.setAttribute("nlist", nlist);
		req.setAttribute("classCount", classCount);
		req.setAttribute("thisMonthParticipant", thisMonthParticipant);
		req.setAttribute("allParticipant", allParticipant);
		req.setAttribute("reviewCount", reviewCount);
		req.setAttribute("avgScore", avgScore);
		req.setAttribute("thisMonthSales", thisMonthSales);
		req.setAttribute("allSales", allSales);
		req.setAttribute("manPer", manPer);
		req.setAttribute("womanPer", womanPer);
		req.setAttribute("map", map);

		return "host.hostmain";
	}
	
	/***
	 * 호스트의 클래스에 달린 댓글의 답변을 확인하고 답변을 달 수 있는 메소드
	 * @param req
	 * @param resp
	 * @param session
	 * @return 호스트 리뷰 페이지로 이동하기위한 리턴
	 */
	@RequestMapping(value = "/host/hostreview.action", method = { RequestMethod.GET })
	public String classreview(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		String id= (String)session.getAttribute("id");
		String hostSeq = dao.getHostSeq(id);
		
		List<ReviewDTO> rlist = dao.getReviewList(hostSeq);
		
		req.setAttribute("rlist", rlist);
		
		return "host.hostreview";
	}
	
	/***
	 * 호스트 자신의 클래스를 확인할 수 있는 메소드
	 * @param req
	 * @param resp
	 * @param session
	 * @return 호스트 클래스 리스트 페이지로 이동하기 위한 리턴
	 */
	@RequestMapping(value = "/host/hostlist.action", method = { RequestMethod.GET })
	public String hostlist(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		String id = (String)session.getAttribute("id");
		
		System.out.println(id);
		
		List<MyClassListDTO> list = dao.getMyClassList(id);
		
		for(MyClassListDTO ll : list) {
			System.out.println(ll);
		}
		
		req.setAttribute("list", list);
		
		return "host.hostlist";
	}
	
	
/***
 * 호스트가 클래스를 작성하기 위한 페이지를 보여주는 메소드
 * @param req
 * @param resp
 * @param session
 * @return 클래스 작성 페이지로 이동하기 위한 리턴
 */
	@RequestMapping(value = "/host/classenroll.action", method = { RequestMethod.GET })
	public String classenroll(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "host.classenroll";
	}

	
	/***
	 * 클래스 작성 시 지역을 Kakao Map API를 통해 선택할 수 있게 보여주는 메소드
	 * @param req
	 * @param resp
	 * @param session
	 * @return 카카오 맵 페이지로 이동하기 위한 메소드
	 */
	@RequestMapping(value = "/kakaomap.action", method = { RequestMethod.GET })
	public String kakaomap(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "kakaomap";
	}

	/***
	 * 클래스 등록 시 데이터를 처리하기 위한 메소드
	 * @param req
	 * @param resp
	 * @param session
	 * @param multiFile
	 * @param upload
	 * @param dto
	 * @throws IOException
	 */
	@RequestMapping(value = "/host/classenrollok.action", method = { RequestMethod.POST })
	public void classenrollok(HttpServletRequest req, HttpServletResponse resp, HttpSession session, MultipartHttpServletRequest multiFile, MultipartFile upload, ClassDTO dto) throws IOException {

		dto.setContent(dto.getContent().replace("<script>", "&lt;script&gt;"));
		// 다중 파일 업로드
		List<MultipartFile> fileList = multiFile.getFiles("classThumb");
		String fileName="";
		String id = (String)session.getAttribute("id");
		
		for(MultipartFile file : fileList) {
			OutputStream out = null;
			if(file != null){
				if(file.getSize() > 0 && !file.getName().isBlank()){
					if(file.getContentType().toLowerCase().startsWith("image/")){
						try{
							fileName = file.getOriginalFilename();
							System.out.println("fileName: " + fileName);
							byte[] bytes = file.getBytes();
							String uploadPath = req.getSession().getServletContext().getRealPath("/resources/images/classimage");
							System.out.println(uploadPath);
							File uploadFile = new File(uploadPath);
							if(!uploadFile.exists()){
								uploadFile.mkdirs();
							}
							
							//fileName = UUID.randomUUID().toString();
							uploadPath = uploadPath + "/" + fileName;
							out = new FileOutputStream(new File(uploadPath));
	                        out.write(bytes);
	
	                        
	                    }catch(IOException e){
	                        e.printStackTrace();
	                    }finally{
	                        if(out != null){
	                            out.close();
	                        }	
						}
					}
				}
			}
			
			try {
				

				resp.sendRedirect("/hobbylovey/host/hostlist.action");

			} catch (IOException e) {
				e.printStackTrace();
			}
			
			
		}
		String hostSeq= dao.getHostSeq(id);
		dto.setHostSeq(hostSeq);
		dto.setClassImage(fileName);
		
		int classResult= dao.addClass(dto);
		
		dto.setClassSeq(Integer.toString(dao.getClassSeq()));
		
		int classOptionResult = dao.addClassOption(dto);
		
		int classImageResult = 0; 
		
		for(MultipartFile file : fileList) {
			
			fileName=file.getOriginalFilename();
			
			dto.setClassImage(fileName);
			
			classImageResult += dao.addClassImage(dto);
			
		}
		
		
		//단일 파일 업로드
//		OutputStream out = null;
//		MultipartFile file = multiFile.getFile("classThumb");
//		if(file != null){
//			if(file.getSize() > 0 && !file.getName().isBlank()){
//				if(file.getContentType().toLowerCase().startsWith("image/")){
//					try{
//						String fileName = file.getOriginalFilename();
//						System.out.println("fileName: " + fileName);
//						byte[] bytes = file.getBytes();
//						String uploadPath = req.getSession().getServletContext().getRealPath("/files");
//						System.out.println(uploadPath);
//						File uploadFile = new File(uploadPath);
//						if(!uploadFile.exists()){
//							uploadFile.mkdirs();
//						}
//						//fileName = UUID.randomUUID().toString();
//						uploadPath = uploadPath + "/" + fileName;
//						out = new FileOutputStream(new File(uploadPath));
//                        out.write(bytes);
//
//                        String fileUrl = req.getContextPath() + "/files/" + fileName;
//                        
//                        System.out.println("fileurl: " + fileUrl);
//                    }catch(IOException e){
//                        e.printStackTrace();
//                    }finally{
//                        if(out != null){
//                            out.close();
//                        }	
//					}
//				}
//			}
//		}
	}
	
	/***
	 * 클래스의 옵션(일정)을 작성하기 위한 메소드
	 * @param req
	 * @param resp
	 * @param session
	 * @param dto
	 */
	@RequestMapping(value = "/host/addoption.action", method = { RequestMethod.POST })
	public void addoption(HttpServletRequest req, HttpServletResponse resp, HttpSession session,ClassOptionDTO dto) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		int result = 0;
		
		for(int i=0;i<dto.getClassOption().length;i++ ) {
			
			map.put("classSeq", dto.getClassSeq());
			map.put("classDate", dto.getClassDate());
			map.put("classOption", dto.getClassOption()[i]);
			map.put("price", dto.getPrice()[i]);
			map.put("personnel", dto.getPersonnel());
			
			result += dao.addOption(map);
		
		}
		
		try {
			

			resp.sendRedirect("/hobbylovey/host/hostmain.action");

		} catch (IOException e) {
			e.printStackTrace();
		}

		
		 

		
	}

	
	/***
	 * 클래스 작성 시 CKEditor를 사용하여 이미지를 업로드 하기위해 사용되는 메소드
	 * @param req
	 * @param resp
	 * @param session
	 * @param multiFile
	 * @param upload
	 * @return 널(null)
	 * @throws Exception
	 */
	@RequestMapping(value = "/host/imageUpload.action", method = RequestMethod.POST)
	public String imageUpload(HttpServletRequest req, HttpServletResponse resp,HttpSession session, MultipartHttpServletRequest multiFile, MultipartFile upload)  throws Exception {
		
				JsonObject json = new JsonObject();
				PrintWriter printWriter = null;
				OutputStream out = null;
				MultipartFile file = upload;
				if(file != null){
					if(file.getSize() > 0 && !file.getName().isBlank()){
						if(file.getContentType().toLowerCase().startsWith("image/")){
							try{
								String fileName = file.getOriginalFilename();
								System.out.println("fileName: " + fileName);
								byte[] bytes = file.getBytes();
								String uploadPath = req.getSession().getServletContext().getRealPath("/files");
								System.out.println(uploadPath);
								File uploadFile = new File(uploadPath);
								if(!uploadFile.exists()){
									uploadFile.mkdirs();
								}
								//fileName = UUID.randomUUID().toString();
								uploadPath = uploadPath + "/" + fileName;
								out = new FileOutputStream(new File(uploadPath));
		                        out.write(bytes);
		                        
		                        printWriter = resp.getWriter();
		                        resp.setContentType("text/html");
		                        String fileUrl = req.getContextPath() + "/files/" + fileName;
		                        
		                        // json 데이터로 등록
		                        // {"uploaded" : 1, "fileName" : "test.jpg", "url" : "/img/test.jpg"}
		                        // 이런 형태로 리턴이 나가야함.
		                        json.addProperty("uploaded", 1);
		                        json.addProperty("fileName", fileName);
		                        json.addProperty("url", fileUrl);
		                        
		                        System.out.println("fileurl: " + fileUrl);
		                        
		                        printWriter.println(json);
		                    }catch(IOException e){
		                        e.printStackTrace();
		                    }finally{
		                        if(out != null){
		                            out.close();
		                        }
		                        if(printWriter != null){
		                            printWriter.close();
		                        }		
							}
						}
					}
				}
				return null;
			}

}
