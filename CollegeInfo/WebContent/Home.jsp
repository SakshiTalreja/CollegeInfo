<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.DAO" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin Home</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet"  />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" ></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">Admin Login</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                <%
try{
	session=request.getSession(false);
	String slid=session.getValue("slid").toString();
	String stime=session.getValue("stime").toString();
}catch(Exception exp){
	response.sendRedirect("index.html");
}
%>
                    
                    <select id="state" name="state" onchange="fillcity()" >
        <option>-State-</option>
        <option value="Tamil Nadu">Tamil Nadu (1964)</option>
        <option value="Maharashtra">Maharashtra (1902)</option>
        <option value="Andhra Pradesh">Andhra Pradesh (987)</option>
        <option value="Karnataka">Karnataka (977)</option>
        <option value="Uttar Pradesh">Uttar Pradesh (896)</option>
        <option value="Madhya Pradesh">Madhya Pradesh (871)</option>
        <option value="Telangana">Telangana (714)</option>
        <option value="Orissa">Orissa (550)</option>
        <option value="Bihar">Bihar (481)</option>
        <option value="Punjab">Punjab (466)</option>
        <option value="West Bengal">West Bengal (457)</option>
        <option value="Rajasthan">Rajasthan (394)</option>
        <option value="Haryana">Haryana (376)</option>
        <option value="Chhattisgarh">Chhattisgarh (354)</option>
        <option value="Kerala">Kerala (354)</option>
        <option value="Gujarat">Gujarat (340)</option>
        <option value="Uttarakhand">Uttarakhand (195)</option>
        <option value="Jharkhand">Jharkhand (181)</option>
        <option value="Jammu & Kashmir">Jammu and Kashmir (139)</option>
        <option value="Himachal Pradesh">Himachal Pradesh (132)</option>        
        <option value="Assam">Assam (125)</option>
        <option value="Manipur">Manipur (46)</option>
        <option value="Meghalaya">Meghalaya (36)</option>
        <option value="Delhi">Delhi (34)</option>
        <option value="Goa">Goa (33)</option>
        <option value="Puducherry">Puducherry (19)</option>
        <option value="Tripura">Tripura (19)</option>
        <option value="Andaman & Nicobar">Andaman and Nicobar (16)</option>
        <option value="Nagaland">Nagaland (16)</option>
        <option value="Mizoram">Mizoram (15)</option>
        <option value="Sikkim">Sikkim (9)</option>
        <option value="Arunachal Pradesh">Arunachal Pradesh (8)</option>
        <option value="Ladakh">Ladakh (2)</option>
    </select>
    <select id="city" name="city">
        <option>-City-</option>
    </select><br><br>
                    
                    <div class="input-group-append">
                        <button class="btn btn-primary" id="sub"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Settings</a>
                        <a class="dropdown-item" href="#">Activity Log</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="index.html">Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
        
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                 &nbsp;&nbsp;&nbsp;&nbsp;By Sakshi Talreja
                            
                            <div class="sb-sidenav-menu-heading">For Praedico Global Research Pvt. Ltd.</div>
                            <div class="sb-sidenav-menu-heading">Investment service in Gwalior, Madhya Pradesh</div>
                            
                        </div>
                    </div>
                    
                </nav>
            </div>
            
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Admin</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Engineering</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Medical</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Management</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Law</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                Colleges Information
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                
<%
try{
	
    String state=request.getParameter("state");
	String city=request.getParameter("city");
	
	if(city.equals("-City-") && state.equals("-State-")){
		String q="Select *from colleges";
		int i=1;
		ResultSet rs=DAO.displayRecord(q);
		out.println("<center><h2>Colleges in India</h2></center>");
		out.println("<button onclick='func_btn1();' id=1>Excel File</button>&nbsp;&nbsp;&nbsp;");
        out.println("Search: <input type= text  id=search1 onkeyup=mySearch1()><br><br>");
		out.println("<table border=2 cellspacing=0 id=table1 class=table table-bordered>");
		if(rs.next()){
			out.println("<thead><tr><th>Sno.</th><th>College Name</th><th>Reference</th><th>City</th><th>State</th><th>Courses Offered</th></tr></thead><tbody>");
			do{
				out.println("<tr><td>"+i+"."+"</td><td>"+rs.getString(1)+"</td><td><a href=MoreInfo.jsp?id=https://www.indcareer.com"+rs.getString(2)+" target=_blank style=color:red;>Click Here</a></td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td style= height:50px;width:500px>"+rs.getString(5)+"</td></tr>");
				i=i+1;
			}while(rs.next());
		}
		out.println("</tbody>");
		out.println("</table>");
	}
	
	else if(city.equals("-City-")){
		String q="Select *from colleges where State='"+state+"'";
		int i=1;
		ResultSet rs=DAO.displayRecord(q);
		out.println("<center><h2>Colleges in "+state+"</h2></center>");
		out.println("<button onclick='func_btn2();' id=2>Excel File</button>&nbsp;&nbsp;&nbsp;");
        out.println("Search: <input type= text  id=search2 onkeyup=mySearch2()><br><br>");
		out.println("<table border=2 cellspacing=0 id=table2 class=table table-bordered>");
		if(rs.next()){
			out.println("<thead><tr><th>Sno.</th><th>College Name</th><th>More Information</th><th>City</th><th>Courses Offered</th></tr></thead><tbody>");
			do{
				out.println("<tr><td>"+i+"."+"</td><td>"+rs.getString(1)+"</td><td><a href=MoreInfo.jsp?id=https://www.indcareer.com"+rs.getString(2)+" target=_blank style=color:red;>Click Here</a></td><td>"+rs.getString(3)+"</td><td style= height:50px;width:500px>"+rs.getString(5)+"</td></tr>");
				i=i+1;
			}while(rs.next());
		}
		out.println("</tbody>");
		out.println("</table>");
	}
	
	else{
		String city1=city.substring(0,city.indexOf("("));
		String q="Select *from colleges where State='"+state+"' and City='"+city1+"'";
		int i=1;
		ResultSet rs=DAO.displayRecord(q);
		out.println("<center><h2>Colleges in "+state+", "+city1+"</h2></center>");
		out.println("<button onclick='func_btn3();' id=3>Excel File</button>&nbsp;&nbsp;&nbsp;");
        out.println("Search: <input type= text  id=search3 onkeyup=mySearch3()><br><br>");
		out.println("<table border=2 cellspacing=0 id=table3 class=table table-bordered>");
		if(rs.next()){
			out.println("<thead><tr><th>Sno.</th><th>College Name</th><th>More Information</th><th>Courses Offered</th></tr></thead><tbody>");
			do{
				out.println("<tr><td>"+i+"."+"</td><td>"+rs.getString(1)+"</td><td><a href=MoreInfo.jsp?id=https://www.indcareer.com"+rs.getString(2)+" target=_blank style=color:red;>Click Here</a></td><td style= height:50px;width:500px>"+rs.getString(5)+"</td></tr>");
			    i++;
			}while(rs.next());
		}
		out.println("</tbody>");
		out.println("</table>");
	}
	
}catch(Exception exp){
	out.println(" ");
	
}
%>

<script type="text/javascript">
function mySearch1() {
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("search1");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("table1");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[1];
	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }       
	  }
	}
function mySearch2() {
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("search2");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("table2");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[1];
	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }       
	  }
	}
	
function mySearch3() {
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("search3");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("table3");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[1];
	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }       
	  }
	}
</script>
<script type="text/javascript">

function func_btn1(){
	var tmp=document.getElementById('1');
	var table2excel = new Table2Excel();
	  table2excel.export(document.querySelectorAll("#table1"));
}
function func_btn2(){
	var tmp=document.getElementById('2');
	var table2excel = new Table2Excel();
	  table2excel.export(document.querySelectorAll("#table2"));
}
function func_btn3(){
	var tmp=document.getElementById('3');
	var table2excel = new Table2Excel();
	  table2excel.export(document.querySelectorAll("#table3"));
}
</script>
                                
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
        <script src="assets/demo/datatables-demo.js"></script>
        <script src=table2excel.js></script>
       
        <script type="text/javascript">
function fillcity(){
    removeOptions(city);
    switch(state.selectedIndex){
        case 1:
            var city1=['-City-','Chennai (211)','Coimbatore (110)','Trichy (65)','Kanchipuram (54)','Tirunelveli (51)','Namakkal (47)','Kanyakumari (46)','Vellore (42)','Thanjavur (41)',
            	'Salem (40)','Erode (32)','Vilupuram (30)','Madurai (28)','Dindigul (22)','Tiruvallur (22)','Dharmapuri (20)','Sivagangai (19)','Pudukkottai (18)','Cuddalore (16)','Virudhunagar (16)',
            	'Theni (15)','Thiruvannaamalai (15)','Krishnagiri (14)','Tuticorin (14)','Nagapattinam (12)','Perambalur (12)','Nagercoil (11)','Tirupur (9)','Karur (8)','Sivakasi (8)','Karaikudi (6)',
            	'Dharapuram (5)','Nilgiris (5)','Tirchengodu (5)','Tiruvarur (5)','Kovilpatti (4)','Ramanathapuram (4)','Kattankulatthur (3)','Kilakarai (3)','Pollachi (3)','Sathyamangalam (3)','Sriperumbudur (3)',
            	'Thiruchendur (3)','Thoothukudi (3)','Tiruppattur (3)','Vadakangulam (3)','Ariyalur (2)','Chengalpattu (2)','Kodaikanal (2)','Mayiladuthurai (2)','Melmaruvathur (2)','Palani (2)','Perundurai (2)','Tamil Nadu (2)',
            	'Tindivanam (2)','Arakkonam (1)','Bargur (1)','Ettayapuram (1)','Paramakudi (1)','Punalkulam (1)','Rajapalayam (1)','Sembodai (1)','Srivilliputtur (1)'];
            addOptions(city,city1);
            break;
        case 2:
            var city2=['-City-','Mumbai (241)','Nagpur (208)','Pune (175)','Aurangabad (144)','Jalgaon (71)','Latur (71)','Beed (69)','Thane (60)','Chandrapur (58)','Kolhapur (57)','Amravati (54)','Sangli (54)','Wardha (54)',
            	'Satara (49)','Osmanabad (45)','Nashik (41)','Jalna (39)','Ahmednagar (37)','Gadchiroli (37)','Dhule (34)','Raigadh (33)','Bhandara (28)','Gondia (28)','Nanded (24)','Nandurbar (24)','Solapur (24)','Buldana (21)',
            	'Yavatmal (20)','Akola (19)','Ratnagiri (15)','Parbhani (9)','Maharashtra (6)','Ambajogai (5)','Bhusawal (4)','Sindhudurg (4)','Washim (4)','Shegaon (3)','Hingoli (2)','Karad (2)','Sangamner (1)'];
            addOptions(city,city2);
            break;
        case 3:
            var city3=['-City-','Guntur (135)','Prakashm (83)','Anantapur (76)','Visakhapatnam (75)','Kurnool (70)','West Godavari (49)','East Godavari (45)','Krishna (32)','Nellore (32)','Srikakulam (32)',
            	'Vijayawada (32)','Chittoor (29)','Vizianagaram (27)','Tirupathi (22)','kadapa (22)','Kakinada (17)','Rajahmundry (11)','Andhra Pradesh (9)','Eluru (9)','Cuddapah (7)','Bhimavaram (3)','Gudur (2)','Mummidivaram (2)',
            	'Tanuku (2)','Bapatla (1)','Chirala (1)','Veeravasaram (1)'];
            addOptions(city,city3);
            break;
        case 4:
            var city4=['-City-','Bangalore (316)','Mysore (55)','Gulbarga (46)','Mangalore (42)','Bellary (39)','Bidar (36)','Hassan (32)','Dakshina Kannada (28)','Koppal (27)','Davangere (26)','Tumkur (25)','Belgaum (24)','Shimoga (24)',
            	'Chitradurga (23)','Mandya (21)','Dharwad (20)','Kolar (18)','Raichur (18)','Bijapur (17)','Udupi (16)','Uttara Kannada (16)','Haveri (11)','Kodagu (11)','Gadag (10)','Hubli (9)','Chikkamagaluru (8)','Ramanagara (6)',
            	'Bagalkot (5)','Bhatkal (5)','Chikballapur (5)','Hospet (5)','Yadgir (5)','Manipal (3)','Chamarajanagar (2)','Jamakhandi (2)','Hirekerur (1)','Honnavar (1)','Karnataka (1)'];
            addOptions(city,city4);
            break;
        case 5:
            var city5=['-City-','Agra (77)','Mathura (52)','Ghaziabad (51)','Etawah (50)','Meerut (45)','Lucknow (34)','Mainpuri (34)','Aligarh (32)','Firozabad (32)','Allahabad (28)','Noida (26)','Jaunpur (23)','Ghazipur (22)','Hathras (21)',
            	'Kanpur (21)','Jhansi (19)','Azamgarh (17)','Gautam Buddha Nagar (16)','Bijnor (13)','Saharanpur (12)','Bareilly (11)','Jalaun (11)','Mau (10)','Varanasi (9)','Gorakhpur (7)','Moradabad (7)','Muzaffarnagar (7)','Banda (5)','Jyotiba Phule Nagar (5)',
            	'Rampur (5)','Baghpat (4)','Chitrakoot (4)','Hamirpur (4)','Kanshi Ram Nagar (4)','Kasganj (4)','Bulandshahr (3)','Faizabad (3)','Lalitpur (3)','Mahoba (3)','Modinagar (3)','Sultanpur (3)','Uttar Pradesh (3)','Bahraich (2)','Pratapgarh (2)',
            	'Raebareli (2)','Amethi (1)','Auraiya (1)','Ballia (1)','Balrampur (1)','Chandausi (1)','Jagdishpur (1)','Najibabad (1)','Pilibhit (1)','Sant Ravidas Nagar (1)','Sitapur (1)'];
            addOptions(city,city5);
            break;
        case 6:
            var city6=['-City-','Bhopal (122)','Gwalior (71)','Indore (61)','Morena (46)','Jabalpur (39)','Bhind (37)','Rewa (33)','Sagar (25)','Satna (22)','Ujjain (21)','Vidisha (15)','Betul (14)','Chhatarpur (14)','Chhindwara (14)','Mandsaur (13)',
            	'Dewas (12)','Hoshangabad (11)','Ratlam (11)','Datia (10)','Shahdol (9)','Shajapur (9)','Damoh (8)','Neemuch (8)','Rajgarh (8)','Ashoknagar (7)','Panna (7)','Raisen (7)','Sehore (7)','Sidhi (7)','Harda (6)','Sheopur (6)','Shivpuri (6)','Umaria (6)',
            	'Burhanpur (5)','Guna (5)','Khargone (5)','Singrauli (5)','Anuppur (3)','Balaghat (3)','Khandwa (3)','Shujalpur (3)','Barwani (2)','Madhya Pradesh (2)','Narsinghpur (2)','Seoni (2)','Tikamgarh (2)','Dhar (1)','Dindori (1)','Itarsi (1)','Khurai (1)','Mandla (1)','Sabalgarh (1)'];
            addOptions(city,city6);
            break;
        case 7:
            var city7=['-City-','Hyderabad (197)','Warangal (102)','Karimnagar (98)','Khammam (87)','Nizamabad (62)','Adilabad (58)','Ranga Reddy (32)','Nalgonda (19)','Mahabubnagar (18)','Secunderabad (17)','Medak (12)'];
            addOptions(city,city7);
            break;
        case 8:
            var city8=['-City-','Bhubaneshwar (88)','Cuttack (31)','Balasore (28)','Ganjam (26)','Berhampur (23)','Sundergarh (23)','Bargarh (22)','Bolangir (21)','Mayurbhanj (21)','Khurda (19)','Sambalpur (17)','Kalahandi (16)','Bhadrak (15)','Rourkela (15)',
            	'Kendujhar (14)','Jajpur (13)','Angul (12)','Dhenkanal (12)','Jharsuguda (11)','Jagatsinghpur (10)','Kandrapara (10)','Puri (8)','Deogarh (7)','Koraput (7)','Sonepur (7)','Rayagada (6)','Gajapati (5)','Nuapada (4)','Boudh (3)','Kondhmala (3)','Nayagarh (3)','Gunupur (2)','Nabarangapur (2)','Burla (1)','Malkangiri (1)'];
            addOptions(city,city8);
            break;
        case 9:
            var city9=['-City-','Patna (50)','Muzzafarpur (49)','Darbhanga (35)','Madhubani (34)','Rohtas (30)','Bhagalpur (21)','Chapra (19)','Samastipur (18)','Bhojpur (17)','Nalanda (14)','Buxar (12)','Gaya (12)','Siwan (12)','Begusarai (11)','Munger (11)','Vaishali (11)','Purnea (10)','Madhepura (9)','Saharsa (8)','Aurangabad (7)','Kaimur (7)',
                'Gopalganj (6)','Khagaria (5)','Kishanganj (5)','Lakhisarai (5)','Motihari (5)','Saran (5)','Supaul (5)','Banka (4)','Arwal (3)','Jehanabad (3)','Katihar (3)','Nawada (3)','Sitamarhi (3)','West Champaran (3)','Araria (2)','Champaran (2)','Hajipur (2)','Jamui (2)','Pashchim Champaran (2)','Arah (1)','Bihar (1)','Danapur (1)'];
            addOptions(city,city9);
            break;
        case 10:
            var city10=['-City-','Ludhiana (52)','Jalandhar (46)','Mohali (45)','Patiala (38)','Amritsar (33)','Bathinda (27)','Gurdaspur (23)','Sangrur (21)','Hoshiarpur (20)','Moga (15)','Chandigarh (14)','Kapurthala (14)','Fatehgarh Sahib (13)','Firozpur (13)','Roopnagar (12)','Pathankot (11)',
            	'Mansa (10)','Nawanshahr (10)','Barnala (8)','Faridkot (7)','Muktsar (5)','Phagwara (4)','Shahid Bhagat Singh Nagar (4)','Fazilka (3)','Malout (3)','Tarn Taran (3)','Mandi Gobindgarh (1)','Punjab (1)','Sunam (1)'];
            addOptions(city,city10);
            break;
        case 11:
            var city11=['-City-','Kolkata (143)','Burdwan (33)','Paschim Medinipur (19)','Purulia (18)','Durgapur (17)','Purba Medinipur (17)','Darjeeling (15)','Hugli (15)','Murshidabad (15)','Bankura (13)','Hooghly (12)','Howrah (12)','Nadia (12)','North 24 Parganas (12)','South 24 Paraganas (9)','Birbhum (8)','Jalpaiguri (7)',
            	'Cooch Behar (6)','Midnapore (6)','Dakshin Dinajpur (5)','Kalyani (5)','Uttar Dinajpur (5)','Malda (4)','Sainthia (2)','West Bengal (2)','Kharagpur (1)'];
            addOptions(city,city11);
            break;
        case 12:
            var city12=['-City-','Jaipur (102)','Sikar (29)','Ajmer (25)','Alwar (24)','Ganganagar (24)','Bikaner (21)','Jodhpur (20)','Nagaur (18)','Udaipur (17)','Churu (16)','Hanumangarh (16)','Kota (13)','Bharatpur (11)','Jhunjhunu (11)','Bhilwara (7)','Dholpur (5)','Pilani (5)','Dausa (3)','Didwana (2)',
            	'Jaisalmer (2)','Jalore (2)','Baran (1)','Barmer (1)','Bundi (1)','Jhalawar (1)','Ladnu (1)','Tonk (1)'];
            addOptions(city,city12);
            break;
        case 13:
            var city13=['-City-','Gurgaon (33)','Ambala (32)','Sonepat (32)','Faridabad (31)','Rohtak (25)','Yamuna Nagar (23)','Hisar (20)','Jhajjar (20)','Kurukshetra (20)','Karnal (19)','Jind (15)','Panipat (15)','Sirsa (15)','Bhiwani (12)','Palwal (11)','Panchkula (11)','Mahendergarh (9)','Rewari (9)','Fatehabad (7)','Kaithal (6)','Mewat (4)'];
            addOptions(city,city13);
            break;
        case 14:
            var city14=['-City-','Raipur (72)','Bilaspur (53)','Durg (40)','Bhilai (29)','Janjgir Champa (25)','Rajnandgaon (18)','Korba (17)','Raigarh (16)','Dhamtari (9)','Jagdalpur (9)','Mahasamund (9)','Balod (6)','Bastar (6)','Kabirdham (6)','Sarguja (6)','Kanker (5)','Dantewada (4)','Bemetara (3)','Bhatapara (3)','Bijapur (2)','Chhattisgarh (2)','Sarangarh (2)','Sukma (2)','Balrampur (1)','Jashpur (1)','Khairagarh (1)','Mungeli (1)'];
            addOptions(city,city14);
            break;
        case 15:
            var city15=['-City-','Thiruvanathapuram (46)','Thrissur (35)','Ernakulam (31)','Kannur (29)','Kottayam (26)','Cochin (25)','Malappuram (24)','Kozhikode (22)','Palakkad (20)','Kollam (17)','Alappuzha (15)','Calicut (15)','Kasaragod (11)','Pathanamthitta (10)','Wayanad (6)','Idukki (4)','Chengannur (2)',
            	'Kuttikanam (2)','Muvattupuzha (2)','Kadammanitta (1)','Kerala (1)','Kothamangalam (1)','Lakkidi (1)','Pandalam (1)','Trippunithura (1)'];
            addOptions(city,city15);
            break;
        case 16:
            var city16=['-City-','Ahmedabad (46)','Anand (39)','Gandhinagar (24)','Rajkot (21)','Surat (17)','Vadodara (16)','Mehsana (11)','Sabarkantha (7)','Bhavnagar (6)','Junagadh (4)','Panchmahal (4)','Amreli (3)','Kheda (3)','Navsari (3)','Patan (3)','Bharuch (2)','Dahod (2)','Gujarat (2)','Kachchh (2)','Valsad (2)',
            	'Wadhwan (2)','Bhuj (1)','Modasa (1)','Narmada (1)','Palanpur (1)','Porbandar (1)','Surendranagar (1)Vapi (1)'];
            addOptions(city,city16);
            break;
        case 17:
            var city17=['-City-','Dehradun (78)','Roorkee (22)','Udham Singh Nagar (13)','Pauri Garhwal (10)','Almora (9)','Pithoragarh (8)','Tehri Garhwal (8)','Nainital (7)','Chamoli (6)','Haldwani (6)','Haridwar (5)','Rishikesh (5)','Uttarkashi (4)','Champawat (3)','Pantnagar (3)','Bageshwar (1)','Dwarahat (1)','Garhwal (1)','Kashipur (1)','Mussoorie (1)','Rudraprayag (1)'];
            addOptions(city,city17);
            break; 
        case 18:
            var city18=['-City-','Ranchi (43)','Jamshedpur (28)','Dhanbad (19)','Hazaribag (15)','Bokaro (9)','Purbi Singhbhum (7)','Dumka (6)','Giridih (6)','West Singhbhum (6)','Palamu (5)','Deoghar (4)','Godda (4)','Jamtara (4)','Kodarma (4)','Chatra (3)','Garhwa (3)',
            	'Gumla (3)','Sahebganj (2)','Simdega (2)','East Singbhum (1)','Kharsawan (1)','Latehar (1)','Lohardaga (1)','Ramgarh (1)','Sindri (1)'];
            addOptions(city,city18);
            break;
        case 19:
            var city19=['-City-','Srinagar (23)','Jammu (18)','Baramulla (11)','Anantnag (9)','Kathua (9)','Rajauri (7)','Doda (6)','Pulwama (6)','Reasi (5)','Budgam (4)','Kupwara (4)','Poonch (4)','Bandipore (3)','Kulgam (3)','Kishtwar (2)','Ramban (2)','Udhampur (2)','Ganderbal (1)','Samba (1)','Shopian (1)'];
            addOptions(city,city19);
            break;  
        case 20:
            var city20=['-City-','Kangra (22)','Sirmour (18)','Mandi (17)','Hamirpur (16)','Solan (16)','Shimla (14)','Una (13)','Bilaspur (3)','Chamba (3)','Kinnaur (2)','Himachal Pradesh (1)','Kullu (1)','Palampur (1)','Spiti (1)'];
            addOptions(city,city20);
            break;
        case 21:
            var city21=['-City-','Guwahati (29)','Jorhat (11)','Dibrugarh (6)','Hailakandi (6)','Kamrup (6)','Lakhimpur (6)','Nagaon (6)','Sivasagar (5)','Dhubri (4)','Kokrajhar (4)','Nalbari (4)','Silchar (4)','Tinsukia (4)','Barpeta (3)','Bongaigaon (3)','Darrang (3)','Dhemaji (3)','Morigaon (3)','Sonitpur (3)','Tezpur (3)',
            	'Karimganj (2)','Goalpara (1)','Golaghat (1)','Karbi Anglong (1)','Nagarbera (1)','Rangia (1)','Sibsagar (1)'];
            addOptions(city,city21);
            break; 
        case 22:
            var city22=['-City-','Imphal (24)','Thoubal (8)','Bishnupur (6)','Chandel (2)','Churachandpur (2)','Imphal West (2)','Imphal East (1)','Ukhrul (1)'];
            addOptions(city,city22);
            break;
        case 23:
            var city23=['-City-','Shillong (9)','East Khasi Hills (8)','Ri Bhoi (7)','West Garo Hills (6)','West Khasi Hills (3)','Jaintia Hills (2)','Tura (1)'];
            addOptions(city,city23);
            break;  
        case 24:
            var city24=['-City-','Delhi (115)','New Delhi (28)'];
            addOptions(city,city24);
            break;  
        case 25:
            var city25=['-City-','Panaji (7)','Ponda (4)','Margao (3)','Salcete (3)','Mapusa (2)','Zuarinagar (2)','Bardez (1)','Dona Paula (1)','Farmagudi (1)','Marcela (1)','Mormugao (1)','Quepem (1)','Sanquelim (1)','Shiroda (1)'];
            addOptions(city,city25);
            break;
        case 26:
            var city26=['-City-','Pondicherry','Puducherry (29)','Karaikal (10)','Yanam (4)'];
            addOptions(city,city26);
            break; 
        case 27:
            var city27=['-City-','Agartala (12)','North Tripura (2)','Dhalai (1)','Gomati (1)','Khowai (1)','Sipahijala (1)','South Tripura (1)'];
            addOptions(city,city27);
            break;
        case 11:
            var city11=['-City-',''];
            addOptions(city,city10);
            break;    
        case 11:
            var city11=['-City-',''];
            addOptions(city,city10);
            break; 
        case 11:
            var city11=['-City-',''];
            addOptions(city,city10);
            break;
        case 11:
            var city11=['-City-',''];
            addOptions(city,city10);
            break;
        case 11:
            var city11=['-City-',''];
            addOptions(city,city10);
            break;
        case 11:
            var city11=['-City-',''];
            addOptions(city,city10);
            break;    
    }
}

function addOptions(dd,citylist)
{
 for(i=0;i<citylist.length;i++)
  {
    opt=document.createElement('option');
    opt.text=citylist[i];
    dd.add(opt);
  }
}

function removeOptions(dd){
 for(i=dd.options.length-1;i>=0;i--)
  {
   dd.remove(i);
  }
}
</script>
        
    </body>
</html>
