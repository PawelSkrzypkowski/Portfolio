package pl.pawelskrzypkowski.model;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {
	private static final String myEmail = "pawel.skrzypkowski@outlook.com";
	private Session mailSession;
	private String replyEmail, subject, from, text;

	public Email(String from, String replyEmail, String subject, String text) {
		Properties emailProperties = System.getProperties();
		emailProperties.put("mail.smtp.port", "587");
		emailProperties.put("mail.smtp.auth", "true");
		emailProperties.put("mail.smtp.starttls.enable", "true");
		this.mailSession = Session.getDefaultInstance(emailProperties, null);
		this.replyEmail = replyEmail;
		this.subject = subject;
		this.from = from;
		this.text = "Wiadomoœæ od: " + from + "\n" + text;
	}

	public boolean checkCorrectness() {
		String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
		java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
		java.util.regex.Matcher m = p.matcher(replyEmail);
		if (m.matches() == false || subject == null || from == null
				|| text == null || subject.equals("") || from.equals("") || text.equals(""))
			return false;
		return true;
	}

	public void send() {
		sendEmail(mailSession, replyEmail, subject, text);
	}

	private void sendEmail(Session session, String fromEmail, String subject, String body) {
		try {
			MimeMessage msg = new MimeMessage(session);
			// set message headers
			msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
			msg.addHeader("format", "flowed");
			msg.addHeader("Content-Transfer-Encoding", "8bit");

			msg.setFrom(new InternetAddress(fromEmail, "NoReply-JD"));

			msg.setReplyTo(InternetAddress.parse(fromEmail, false));

			msg.setSubject(subject, "UTF-8");

			msg.setText(body, "UTF-8");

			msg.setSentDate(new Date());

			msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(myEmail, false));
			System.out.println("Message is ready");
			Transport transport = session.getTransport("smtp");
			transport.connect("smtp.gmail.com", "portfoliopawlo133438@gmail.com", "portfolio");
			transport.sendMessage(msg, msg.getAllRecipients());
			transport.close();
			System.out.println("Email sent successfully.");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
