package com.poly.assignment.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
@Service
public class ParamService {
	@Autowired
	HttpServletRequest request;
	
	public String getString(String name, String defaultValue) {
		String value = request.getParameter(name);
		return value != null ? value: defaultValue;
	}
	
	public int getInt(String name, int defaultValue) {
		String value = getString(name, String.valueOf(defaultValue));
		return Integer.parseInt(value);
	}
	
	public double getInt(String name, double defaultValue) {
		String value = getString(name, String.valueOf(defaultValue));
		return Double.parseDouble(value);
	}
	
	public boolean getInt(String name, boolean defaultValue) {
		String value = getString(name, String.valueOf(defaultValue));
		return Boolean.parseBoolean(value);
	}
	
	public Date getDate(String name, String pattern) {
		String value = getString(name, "");
		try {
			return new SimpleDateFormat(pattern).parse(value);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	public File save(MultipartFile file, String path) {
		String fileFolder="";
		if (!file.isEmpty()) {
			fileFolder = request.getServletContext().getRealPath(path);
			File dir = new File(fileFolder);
			if (!dir.exists()) {
				dir.mkdirs();
			}
			try {
				String pathFile = fileFolder + file.getOriginalFilename();
				System.out.println(pathFile);
				File savedFile = new File(pathFile); 
				file.transferTo(savedFile);
				return savedFile;
			} catch (Exception e) {
				throw new RuntimeException(e);
			}
		}
		return null;
	}
	
//	public void saveFile(String uploadDir, String fileName, MultipartFile multipartFile) throws IOException{
//		Path path = Paths.get(uploadDir);
//		if(!Files.exists(path)) {
//			Files.createDirectories(path);
//		}
//		try(InputStream inputStream =multipartFile.getInputStream()) {
//			Path filePath = path.resolve(fileName);
//			Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);
//		} catch (Exception e) {
//			// TODO: handle exception
//			throw new IOException("Could not save file"+fileName);
//		}
//	}
}
