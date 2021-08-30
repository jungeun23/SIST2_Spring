package com.spring.hobbylovey.host;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class HostController {

	@RequestMapping(value = "/host/classmain.action", method = { RequestMethod.GET })
	public String name(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "host.name";
	}

	@RequestMapping(value = "/host/classenroll.action", method = { RequestMethod.GET })
	public String classenroll(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		System.out.println(req.getServletPath());

		return "host.classenroll";
	}

	@RequestMapping(value = "/kakaomap.action", method = { RequestMethod.GET })
	public String kakaomap(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "kakaomap";
	}

	@RequestMapping(value = "/host/classenrollok.action", method = { RequestMethod.POST })
	public String classenrollok(HttpServletRequest req, HttpServletResponse resp, HttpSession session, ClassDTO dto) {


		return "host.classenrollok";
	}

	@RequestMapping(value = "/host/imageUpload.action", method = RequestMethod.POST)
	public void imageUpload(HttpServletRequest request, HttpServletResponse response,
			MultipartHttpServletRequest multiFile, @RequestParam MultipartFile upload) throws Exception {
		// 랜덤 문자 생성
		UUID uid = UUID.randomUUID();
		OutputStream out = null;
		PrintWriter printWriter = null;
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		try {
			String fileName = upload.getOriginalFilename();
			byte[] bytes = upload.getBytes();

			String path = "C:\\Users\\cksgh\\Desktop\\백업\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\SpringProject\\resources\\images";
			String ckUploadPath = path + uid + "_" + fileName;
			File folder = new File(path); // 해당 디렉토리 확인
			if (!folder.exists()) {
				try {
					folder.mkdirs();
				} catch (Exception e) {
					e.getStackTrace();
				}
			}
			out = new FileOutputStream(new File(ckUploadPath));
			out.write(bytes);
			out.flush();
			String callback = request.getParameter("CKEditorFuncNum");
			printWriter = response.getWriter();
			String fileUrl = "/host/ckImgSubmit.do?uid=" + uid + "&fileName=" + fileName;
			printWriter.println("{\"filename\" : \"" + fileName + "\",\"uploaded\" : 1, \"url\":\"" + fileUrl + "\"}");
			printWriter.flush();

		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (out != null) {
					out.close();
				}
				if (printWriter != null) {
					printWriter.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return;
	}

	@RequestMapping(value="/host/ckImgSubmit.action") 
	public void ckSubmit(@RequestParam(value="uid") String uid , @RequestParam(value="fileName") String fileName , HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String path = "C:\\Users\\cksgh\\Desktop\\백업\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\SpringProject\\resources\\images";
		String sDirPath = path + uid + "_" + fileName;
		File imgFile = new File(sDirPath);
		if(imgFile.isFile()){
			byte[] buf = new byte[1024]; 
			int readByte = 0; int length = 0; 
			byte[] imgBuf = null;
			FileInputStream fileInputStream = null;
			ByteArrayOutputStream outputStream = null;
			ServletOutputStream out = null;
			try{ fileInputStream = new FileInputStream(imgFile);
			outputStream = new ByteArrayOutputStream();
			out = response.getOutputStream();
			while((readByte = fileInputStream.read(buf)) != -1){
				outputStream.write(buf, 0, readByte); 
			} imgBuf = outputStream.toByteArray();
			length = imgBuf.length;
			out.write(imgBuf, 0, length);
			out.flush();
			}catch(IOException e){
				
			}finally {
				outputStream.close();
				fileInputStream.close();
				out.close();
				}
			} 
	}

}
