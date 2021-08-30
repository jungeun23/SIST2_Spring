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

import com.google.gson.JsonObject;

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
	public void classenrollok(HttpServletRequest req, HttpServletResponse resp, HttpSession session, ClassDTO dto) {

		System.out.println(dto);
	
		
		//return "host.classenrollok";
	}

	@RequestMapping(value = "/host/imageUpload.action", method = RequestMethod.POST)
	public String imageUpload(HttpServletRequest req, HttpServletResponse resp, MultipartHttpServletRequest multiFile, MultipartFile upload)  throws Exception {
		
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

	@RequestMapping(value = "/host/ckImgSubmit.action")
	public void ckSubmit(@RequestParam(value = "uid") String uid, @RequestParam(value = "fileName") String fileName,
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "C:\\Users\\cksgh\\Desktop\\백업\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\SpringProject\\resources\\images";
		String sDirPath = path + uid + "_" + fileName;
		File imgFile = new File(sDirPath);
		if (imgFile.isFile()) {
			byte[] buf = new byte[1024];
			int readByte = 0;
			int length = 0;
			byte[] imgBuf = null;
			FileInputStream fileInputStream = null;
			ByteArrayOutputStream outputStream = null;
			ServletOutputStream out = null;
			try {
				fileInputStream = new FileInputStream(imgFile);
				outputStream = new ByteArrayOutputStream();
				out = response.getOutputStream();
				while ((readByte = fileInputStream.read(buf)) != -1) {
					outputStream.write(buf, 0, readByte);
				}
				imgBuf = outputStream.toByteArray();
				length = imgBuf.length;
				out.write(imgBuf, 0, length);
				out.flush();
			} catch (IOException e) {

			} finally {
				outputStream.close();
				fileInputStream.close();
				out.close();
			}
		}
	}

}
