package web.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public class PasswordEncrypter {
	private SecureRandom srand;
	private String hash;
	private byte[] salt;
	
	public PasswordEncrypter() throws NoSuchAlgorithmException {
		srand = SecureRandom.getInstance("SHA1PRNG");
        salt = new byte[16];
        hash = null;
	}
	
	public void generateSalt() throws UnsupportedEncodingException {
		srand.nextBytes(salt);
	}
	
	public String getSalt() throws UnsupportedEncodingException {
		return (new String(salt, "ISO-8859-1"));
	}
	
	public void setSalt(byte[] salt) {
		this.salt = salt;
	}
	
	public void setSalt(String salt) throws UnsupportedEncodingException {
		this.salt = salt.getBytes("ISO-8859-1");
	}
	
	public String getHash() {
		return hash;
	}
	
	public void encrypt(String passwordToHash) throws NoSuchAlgorithmException {
		MessageDigest md = MessageDigest.getInstance("SHA-256");
        md.update(salt);
        
        StringBuilder sb = new StringBuilder();
        byte[] bytes = md.digest(passwordToHash.getBytes());
        for(int i=0; i< bytes.length ;i++)
            sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));

        hash = sb.toString();
	}
}
