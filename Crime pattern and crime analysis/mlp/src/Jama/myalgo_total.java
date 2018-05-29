package Jama;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

public class myalgo_total {

	public static void main(String[] args) 
	{
		int r=29,c=5;
		String[] states ={"Andhra_pradesh","Arunachal_pradesh","Assam","Bihar","Chattisgarh","Delhi","Goa","Gujarat","Haryana","Himachal_pradesh","Jammu_kashmir","Jharkhand","Karnataka","Kerela","Madhya_pradesh","Maharashtra","Manipur","Meghalaya","Mizoram","Nagaland","Odisha","Punjab","Rajasthan","Sikkim","Tamil_nadu","Tripura","Uttar_pradesh","Uttarakhand","West_Bengal"};
			
		      double[][] vall = new double[29][4];
			      double[][] rest = new double[29][1];
			      String[] s = new String[29]; 
		      try {
		             InputStream input = new BufferedInputStream(
		                        new FileInputStream("C:\\Users\\admin\\Desktop\\SM\\sem6-2018\\minor\\datasetstatewise\\crime2016.xls"));
		            POIFSFileSystem fs = new POIFSFileSystem( input );
		            HSSFWorkbook wb = new HSSFWorkbook(fs);
		            HSSFSheet sheet = wb.getSheetAt(0);

		            //double Tot[] = new double[7];
		            
		            Iterator rows = sheet.rowIterator();
		            
		            int i,k,j=5;
		            k=0;
		            while( rows.hasNext() ) {  
		            	
		            	i=0;
		            	//String s="";
		            	HSSFRow row = (HSSFRow) rows.next();
		                Iterator cells = row.cellIterator();
		                if(k>0){
		                while( cells.hasNext() ) {
		                    HSSFCell cell = (HSSFCell) cells.next();
		                    if(HSSFCell.CELL_TYPE_NUMERIC==cell.getCellType()){
		                    	if(i<=4)
		                    		{	
		                    		vall[k-1][i-1]=cell.getNumericCellValue();
		                    		}
		                    	else if(i==j+4)
		                    		rest[k-1][0]=cell.getNumericCellValue();
		                    	i++;
		                    }
		                    else
		                    if(HSSFCell.CELL_TYPE_STRING==cell.getCellType()){
		                  
		                        if(i==0)
		                        	i++;
		                    }
		                    else{
		                    
		                    }
		                }
		  		      
		                }
		                
		                k++;
		            }
				
			} catch ( IOException ex ) {
	            System.out.println("");
	            ex.printStackTrace();
			}
	
			for(int l=0;l<29;l++)
				{
				System.out.print(states[l]+"    ");
				for(int j=0;j<4;j++)
				{
					System.out.print(vall[l][j]+"   ");
				}
				System.out.println("   => "+rest[l][0]);
				}
			for(int l=0;l<29;l++){
				
			double features[][] = new double[4][4];
			double out[][] = new double[4][1];
			
			try {
			

	             InputStream input = new BufferedInputStream(
	                        new FileInputStream("C:\\Users\\admin\\Desktop\\SM\\sem6-2018\\minor\\datasetstatewise\\"+states[l]+".xls"));
	            POIFSFileSystem fs = new POIFSFileSystem( input );
	            HSSFWorkbook wb = new HSSFWorkbook(fs);
	            HSSFSheet sheet = wb.getSheetAt(0);

	            Iterator rows = sheet.rowIterator();
	            
	            int i,k,j=5;
	            k=0;
	            while( rows.hasNext() ) {  
	            	
	            	i=0;
	            	HSSFRow row = (HSSFRow) rows.next();
	                Iterator cells = row.cellIterator();
	                if(k>0){
	                while( cells.hasNext() ) {
	                    HSSFCell cell = (HSSFCell) cells.next();
	                    if(HSSFCell.CELL_TYPE_NUMERIC==cell.getCellType()){
	                    	if(i>0&&i<=4)
	                    		{
	                    	//	System.out.print( cell.getNumericCellValue()+"     " );
	                    		
	                    		features[k-1][i-1]=cell.getNumericCellValue();
	                    		
	                    		}
	                    	else if(i==j+4)
	                    		out[k-1][0]=cell.getNumericCellValue();
	                    	i++;
	                    }
	                    else
	                    if(HSSFCell.CELL_TYPE_STRING==cell.getCellType()){
	                  
	                        if(i==0)
	                        	i++;
	                    }
	                    else{
	                    
	                    }
	                }
	                }
	                
	                k++;
	            }
			
		} catch ( IOException ex ) {
            System.out.println("");
            ex.printStackTrace();
		}
			
			Matrix A = new Matrix(features);
		      System.out.print(states[l]);

			A.print(4, 2);
		      Matrix B = new Matrix(out);
		      Matrix C = A.inverse();
		      Matrix W = C.times(B);
		      W.print(1, 2);
		      //Matrix T=A.times(W);
		      //T.print(1, 2);
		      //B.print(1, 2);

		      double[][] F = new double[1][4];
		      double[][] O = new double[1][1];
		      for(int j=0;j<4;j++)
		    	  F[0][j]=vall[l][j];
		      O[0][0]=rest[l][0];
		      Matrix D = new Matrix(F);
		      D.print(4, 2);
		      Matrix E = D.times(W);
	  		  System.out.println("Real => "+rest[l][0]+"   Calculated => "+Math.abs(E.get(0, 0)));//+"  Error =>  "+(E.get(0, 0)-rest[l][0])/rest[l][0]);//rest[k-1][0];

		      
			}
			
		
	}			
}
