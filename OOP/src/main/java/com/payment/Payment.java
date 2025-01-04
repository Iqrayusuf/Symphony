//IT22902320
//AMRA FARIS

package com.payment;

public class Payment {
	private String PaymentID;
	private String FullName; 
	private String DateOfPurchase;
	private String email;
	private String MobileNo;
	private String CardType;
	private String CardNum;
	private String ExpiryDate;
	private String CVV;
	
	public Payment(String PaymentID, String FullName, String DateOfPurchase, String email, String MobileNo,String CardType, String CardNum, String ExpiryDate, String CVV) {
		this.PaymentID = PaymentID;
		this.FullName = FullName;
		this.DateOfPurchase = DateOfPurchase;
		this.email = email;
		this.MobileNo = MobileNo;
		this.CardType = CardType;
		this.CardNum = CardNum;
		this.ExpiryDate = ExpiryDate;
		this.CVV = CVV;
	}

	public String getPaymentID() {
		return PaymentID;
	}

	public String getFullName() {
		return FullName;
	}

	public String getDateOfPurchase() {
		return DateOfPurchase;
	}

	public String getEmail() {
		return email;
	}

	public String getMobileNo() {
		return MobileNo;
	}

	public String getCardType() {
		return CardType;
	}

	public String getCardNum() {
		return CardNum;
	}

	public String getExpiryDate() {
		return ExpiryDate;
	}

	public String getCVV() {
		return CVV;
	}

}
