package ratings_2014;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

public class robbery_wise {

	static <K,V extends Comparable<? super V>>
	SortedSet<Map.Entry<K,V>> entriesSortedByValues(Map<K,V> map) {
	    SortedSet<Map.Entry<K,V>> sortedEntries = new TreeSet<Map.Entry<K,V>>(
	        new Comparator<Map.Entry<K,V>>() {
	            @Override public int compare(Map.Entry<K,V> e1, Map.Entry<K,V> e2) {
	                int res = e2.getValue().compareTo(e1.getValue());
	                return res != 0 ? res : 1;
	            }
	        }
	    );
	    sortedEntries.addAll(map.entrySet());
	    return sortedEntries;
	}
    public static void main( String [] args ) {
    	
    	Map<String, Double> map = new TreeMap<String, Double>();
        int sum;
        try {

             InputStream input = new BufferedInputStream(
                        new FileInputStream("C:\\Users\\admin\\Desktop\\SM\\sem6-2018\\java\\crime2014.xls"));
            POIFSFileSystem fs = new POIFSFileSystem( input );
            HSSFWorkbook wb = new HSSFWorkbook(fs);
            HSSFSheet sheet = wb.getSheetAt(0);

            double Tot[] = new double[7];
            

 Iterator rows1 = sheet.rowIterator();
            
            
            int i=0;
            while( rows1.hasNext() ) {  
            	i=0;
            	HSSFRow row = (HSSFRow) rows1.next();
                Iterator cells = row.cellIterator();
            	while( cells.hasNext() ) {
                    HSSFCell cell = (HSSFCell) cells.next();
                    if(HSSFCell.CELL_TYPE_NUMERIC==cell.getCellType()){
                      //  System.out.print( cell.getNumericCellValue()+"     " );
                        Tot[i++]= cell.getNumericCellValue();
                    	
                        
                    }
            }
            }
            
            for(int j=0;j<7;j++)
            {
            	//System.out.print(Tot[j]+" ");
            }
            System.out.println();
            
            Iterator rows = sheet.rowIterator();
            
            
            while( rows.hasNext() ) {  
            	i=0;
            	String s="";
            	HSSFRow row = (HSSFRow) rows.next();
                Iterator cells = row.cellIterator();
                
                sum = 0;
                while( cells.hasNext() ) {
                    HSSFCell cell = (HSSFCell) cells.next();
                    if(HSSFCell.CELL_TYPE_NUMERIC==cell.getCellType()){
                    	if(i==0)
                    		System.out.print( cell.getNumericCellValue()+"     " );
                    	else
                    		{System.out.print( String.format("%.2f",((cell.getNumericCellValue()/Tot[i-1])*100)) + "     " );
                    		if(i==3)
                    			map.put(s, (cell.getNumericCellValue()/Tot[i-1])*100);
                    		
                    		}
                    	i++;

                    }
                    else
                    if(HSSFCell.CELL_TYPE_STRING==cell.getCellType()){
                        System.out.print( cell.getStringCellValue()+"     " );
                        s=s+ cell.getStringCellValue();
                        if(i==0)
                        	i++;
                    }
                    else{
                      
                    }
                }
                System.out.println();//"SUM : " + sum);
            }
            
            System.out.println();
            System.out.println();
            System.out.println("Robbery wise sorted state %s");
            System.out.println();
            SortedSet<Map.Entry<String,Double>> list =entriesSortedByValues(map);
            Iterator it = list.iterator();
            it.next();
            int k=1;
            System.out.println("Rank    State       % of Robbery cases ");

            while (it.hasNext()) {
            	if(k<10)
            		System.out.print("  "+k +">  ");
            	else
            		System.out.print(" "+k +">  ");
                k++;
                if(k>1){
                    Map.Entry<String,Double> t = (Map.Entry<String,Double>)it.next();
                    String ss ="<td>\n"+(k-1)+"> " + t.getKey() +"  "+String.format("%.2f",t.getValue())+" %\n"+"</td>\n";
                    if((k-1)%3==0)
                    	ss=ss+"</tr><tr>\n";
                        Files.write(Paths.get("mytext.txt"), ss.getBytes(), StandardOpenOption.APPEND);
                    
                	System.out.println(t.getKey()+" "+t.getValue());
                    }
                }

        } catch ( IOException ex ) {
            System.out.println("");
            ex.printStackTrace();
        }
    }

}
