package com.film.util.msg;

/**
 * 验证码通知短信接口
 * 
 * @ClassName: IndustrySMS
 * @Description: 验证码通知短信接口
 *
 */
public class IndustrySMS
{
	private static String operation = "/industrySMS/sendSMS";
	private static String accountSid = Config.ACCOUNT_SID;
	private static String to;
	private static String back;
	private static String smsContent = "【奥德科技】您的验证码为"+getCode()+"，请于30分钟内正确输入，如非本人操作，请忽略此短信。";

	/**
	 * 验证码通知短信
	 */
	public static void execute()
	{
		String url = Config.BASE_URL + operation;
		String body = "accountSid=" + accountSid + "&to=" + to + "&smsContent=" + smsContent
				+ HttpUtil.createCommonParam();

		// 提交请求
		HttpUtil.post(url, body);
	}

	public static String getCode() {
		String code = "";
		for (int i = 0; i < 6; i++) {
			code += (int)(Math.random() * 10);
		}
		setBack(code);
		return code;
	}

	public static String getBack() {
		return back;
	}

	public static void setBack(String back) {
		IndustrySMS.back = back;
	}

	public static String getTo() {
		return to;
	}

	public static void setTo(String to) {
		IndustrySMS.to = to;
	}
}
