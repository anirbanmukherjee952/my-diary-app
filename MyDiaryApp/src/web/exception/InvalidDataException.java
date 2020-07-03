package web.exception;

public class InvalidDataException extends Exception {
	private String message;
	public InvalidDataException(String message) {
		this.message = message;
	}
	@Override
	public String getMessage() {
		return message;
	}
	
}
