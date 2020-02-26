package thangnd.util;

public class ConvertTextToDB {
	public String convert(String text){
		String text_ = "";
		StringBuffer sb = new StringBuffer();
		if(text.length() < 1){
			text_ = "dữ liệu không đúng";
		}else{
			String [] arr_text = text.split(",");
			
			for(int i = 0 ; i < arr_text.length; i++){
				sb.append("'");
				sb.append(arr_text[i]);
				sb.append("'");
				sb.append(",");
			}
			text_ = sb.toString().substring(0, sb.length() -1);
		}
		return text_;
	}

}
