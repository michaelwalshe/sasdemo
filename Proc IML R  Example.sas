libname data "/nfs/demo/sasdemo/data";


proc iml;
	submit / R;
		print("Hello")
	endsubmit;
quit;



proc iml;
	call ExportDataSetToR("data.cirrhosis", "cirrhosis" );

	submit / R;	
		cirrhosis["Bilirubin_high"] <- cirrhosis["Bilirubin"] > 1.2

		ch_model <- lm(Platelets ~ Stage + Status + Drug + Bilirubin_high + Albumin + Copper, cirrhosis)

		pred_actual <- data.frame(
			actual = ch_model$model$Platelets,
			predicted = predict(ch_model)
		)
	endsubmit;

	call ImportDataSetFromR("work.pred_actual", "pred_actual");
	quit;
