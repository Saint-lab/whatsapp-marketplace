<?php
class campaign_model extends MY_Model {
	public function __construct(){
		parent::__construct();
		//
		$module_path = get_module_directory(__DIR__);
		$this->module_name = get_module_config( $module_path, 'name' );
		$this->module_icon = get_module_config( $module_path, 'icon' );
		$this->module_color = get_module_config( $module_path, 'color' );
		//
	}
	public function block_permissions($path = ""){
		$dir = get_directory_block(__DIR__, get_class($this));
		return [
			'position' => 1000,
			'name' => $this->module_name,
			'color' => $this->module_color,
			'icon' => $this->module_icon, 
			'id' => str_replace("_model", "", get_class($this)),
			'html' => view( $dir.'pages/block_permissions', ['path' => $path], true, $this ),
		];
	}
	/*
	* TOPBAR
	*/
	public function block_topbar($path = ""){
        $dir = get_directory_block(__DIR__, get_class($this));		
		return [
			'position' => 10000,
			//'view' => view( $dir.'pages/topbar', ['path' => $path], true, $this )
		];
	}


public function leads_search($offset='', $search, $location=''){ 
        $API_KEY = "l_sdhz5UDGCv-zhyhWNeQZT8CxvpbnQmrSIlct-o5AU2kp2uUnK83BcbQX8UgucUzD7PzUxHXYC2v5bX0AhKEW210HMm9RADVS3XbRq52Yptjjy7mjW7oLWhyVUAX3Yx";
      
       $SEARCH_LIMIT = 500;
       
       if($location == ""){
        $location = "San-Francisco,-CA";
       }
               
             $curl = curl_init();
                    curl_setopt_array($curl, array(
                       CURLOPT_URL => "https://api.yelp.com/v3/businesses/search?term=".$search."&location=".$location."&limit=21&offset=".$offset,
                       CURLOPT_RETURNTRANSFER => true,  // Capture response.
                       CURLOPT_ENCODING => "",  // Accept gzip/deflate/whatever.
                       CURLOPT_MAXREDIRS => 10,
                       CURLOPT_SSL_VERIFYPEER => false,
                       CURLOPT_TIMEOUT => 30,
                       CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                       CURLOPT_CUSTOMREQUEST => "GET",
                       CURLOPT_HTTPHEADER => array(
                           "authorization: Bearer $API_KEY",
                           "cache-control: no-cache",
                       ),
                   ));
           
                   $response = curl_exec($curl);
                   $err = curl_error($curl);
               
                   curl_close($curl);
               
                   # Print any errors, to help with debugging.
                   if ($err) {
                     echo "cURL Error #:" . $err;
                   }
               
                   $body = json_decode($response, true);
           
                  $e = $body["businesses"]; 
                  
                   return $e;
           }

            public function leads($offset=''){ 
 $API_KEY = "l_sdhz5UDGCv-zhyhWNeQZT8CxvpbnQmrSIlct-o5AU2kp2uUnK83BcbQX8UgucUzD7PzUxHXYC2v5bX0AhKEW210HMm9RADVS3XbRq52Yptjjy7mjW7oLWhyVUAX3Yx";
$API_HOST = "https://api.yelp.com";
$SEARCH_PATH = "/v3/businesses/search";
$BUSINESS_PATH = "/v3/businesses/";  // Business ID will come after slash.

// Defaults for our simple example.
$DEFAULT_TERM = "dinner";
$DEFAULT_LOCATION = "San Francisco, CA";
$SEARCH_LIMIT = 3;
        
     
            $curl = curl_init();
            curl_setopt_array($curl, array(
                CURLOPT_URL => "https://api.yelp.com/v3/businesses/search?latitude=37.786882&longitude=-122.399972&limit=21&offset=".$offset,
                CURLOPT_RETURNTRANSFER => true,  // Capture response.
                CURLOPT_ENCODING => "",  // Accept gzip/deflate/whatever.
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_SSL_VERIFYPEER => false,
                CURLOPT_TIMEOUT => 30,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "GET",
                CURLOPT_HTTPHEADER => array(
                    "authorization: Bearer $API_KEY",
                    "cache-control: no-cache",
                ),
            ));
    
            $response = curl_exec($curl);
            $err = curl_error($curl);
        
            curl_close($curl);
        
            # Print any errors, to help with debugging.
            if ($err) {
              echo "cURL Error #:" . $err;
            }
            
            //var_dump($response);
            // die();
             $body = json_decode($response, true);
            $e = $body["businesses"];



           
             return $e;
    }

       public function leads_details($id, $ur){ 
            $API_KEY = "l_sdhz5UDGCv-zhyhWNeQZT8CxvpbnQmrSIlct-o5AU2kp2uUnK83BcbQX8UgucUzD7PzUxHXYC2v5bX0AhKEW210HMm9RADVS3XbRq52Yptjjy7mjW7oLWhyVUAX3Yx";
          
          
                   
                 $curl = curl_init();
                        curl_setopt_array($curl, array(
                           CURLOPT_URL => "https://api.yelp.com/v3/businesses/".$id,
                           CURLOPT_RETURNTRANSFER => true,  // Capture response.
                           CURLOPT_ENCODING => "",  // Accept gzip/deflate/whatever.
                           CURLOPT_MAXREDIRS => 10,
                           CURLOPT_SSL_VERIFYPEER => false,
                           CURLOPT_TIMEOUT => 30,
                           CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                           CURLOPT_CUSTOMREQUEST => "GET",
                           CURLOPT_HTTPHEADER => array(
                               "authorization: Bearer $API_KEY",
                               "cache-control: no-cache",
                           ),
                       ));
               
                       $response = curl_exec($curl);
                       $err = curl_error($curl);
                   
                       curl_close($curl);
                   
                       # Print any errors, to help with debugging.
                       if ($err) {
                         echo "cURL Error #:" . $err;
                       }
                   
                       $body = json_decode($response, true);
               
                      //$e=$body['businesses']; 
                      $uid = _u("id");
                      $cams = $this->db->where('uid', $uid)->get("sp_cam")->result(); 
                      $x = $this->extract_url($ur);
                      //$e = $this->extract_email_lead($x);
                      $output = array('url' => $x, 'email' => 'email','detail' => $body, 'cams' => $cams);
                      echo json_encode($output) ;
                     
               }

  public function extract_url($link)
    {
        $url = $link;
         $agent = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)";
        $options = array(

            CURLOPT_CUSTOMREQUEST  =>"GET",        //set request type post or get
            CURLOPT_POST           =>false,        //set to GET
            //CURLOPT_USERAGENT      => $user_agent, //set user agent
            CURLOPT_COOKIEFILE     =>"cookie.txt", //set cookie file
            CURLOPT_COOKIEJAR      =>"cookie.txt", //set cookie jar
            CURLOPT_SSL_VERIFYPEER => false,
            CURLOPT_RETURNTRANSFER => true,     // return web page
            CURLOPT_HEADER         => $agent,    // don't return headers
            CURLOPT_FOLLOWLOCATION => true,     // follow redirects
            CURLOPT_ENCODING       => "",       // handle all encodings
            CURLOPT_AUTOREFERER    => true,     // set referer on redirect
            CURLOPT_CONNECTTIMEOUT => 12000,      // timeout on connect
            CURLOPT_TIMEOUT        => 12000,      // timeout on response
            CURLOPT_MAXREDIRS      => 500,       // stop after 10 redirects
        );

        $ch      = curl_init( $url );
        curl_setopt_array( $ch, $options );
        $content = curl_exec( $ch );
        $err     = curl_errno( $ch );
        $errmsg  = curl_error( $ch );
        $header  = curl_getinfo( $ch );
        curl_close( $ch );
        $matches = array();
        preg_match_all('#<a\s.*?(?:href=[\'"](.*?)[\'"]).*?>#is', $content, $matches);
       
      foreach($matches[0] as $url) 
{
    if ( strpos($url, 'biz_redir?url') !== false )
{ 
   $x = explode("biz_redir?url=", $url);
    $a = explode("&", $x[1]);
    return urldecode($a[0]);
 } 
  }

    }

 //    public function extract_email_lead($code = null)
 //    {
 //        $url = $code;
 //        $agent = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)";
 //        $options = array(

 //            CURLOPT_CUSTOMREQUEST  =>"GET",        //set request type post or get
 //            CURLOPT_POST           =>false,        //set to GET
 //            //CURLOPT_USERAGENT      => $user_agent, //set user agent
 //            CURLOPT_COOKIEFILE     =>"cookie.txt", //set cookie file
 //            CURLOPT_COOKIEJAR      =>"cookie.txt", //set cookie jar
 //            CURLOPT_SSL_VERIFYPEER => false,
 //            CURLOPT_RETURNTRANSFER => true,     // return web page
 //            CURLOPT_HEADER         => $agent,    // don't return headers
 //            CURLOPT_FOLLOWLOCATION => true,     // follow redirects
 //            CURLOPT_ENCODING       => "",       // handle all encodings
 //            CURLOPT_AUTOREFERER    => true,     // set referer on redirect
 //            CURLOPT_CONNECTTIMEOUT => 120,      // timeout on connect
 //            CURLOPT_TIMEOUT        => 120,      // timeout on response
 //            CURLOPT_MAXREDIRS      => 10,       // stop after 10 redirects
 //        );

 //        $ch      = curl_init( $url );
 //        curl_setopt_array( $ch, $options );
 //        $content = curl_exec( $ch );
 //        $err     = curl_errno( $ch );
 //        $errmsg  = curl_error( $ch );
 //        $header  = curl_getinfo( $ch );
        
 //        curl_close( $ch );
 //        preg_match_all('/\b[^\s]+@[^\s]+/', $content, $matches);
 //        $e = '';

 //       if($matches[0]){
 //       	 var_dump($matches[0]);
 //       	 die();
 //       foreach($matches[0] as $url) 
 //  {
 //   if ( strpos($url, 'href="mailto') !== false && strpos($url, '.com') !== false )
 // { 
 	
        
 //    $x = explode('href="', $url);
 //    $e =  explode("mailto:", $x[1]);
 //     //var_dump($e);
 //   }
    
 //    }
 //    //die();
 //    if(empty($e[1])){
        
 //        if ( strpos($code, '/') !== false ){
 //            $c = explode("/", $code);
 //            $url = $c[0]."//".$c[2].'/'.'contact/';
 //             }
 //        //$url = $code.'/'.'contact/';
 //        $options = array(

 //            CURLOPT_CUSTOMREQUEST  =>"GET",        //set request type post or get
 //            CURLOPT_POST           =>false,        //set to GET
 //            //CURLOPT_USERAGENT      => $user_agent, //set user agent
 //            CURLOPT_COOKIEFILE     =>"cookie.txt", //set cookie file
 //            CURLOPT_COOKIEJAR      =>"cookie.txt", //set cookie jar
 //            CURLOPT_SSL_VERIFYPEER => false,
 //            CURLOPT_RETURNTRANSFER => true,     // return web page
 //            CURLOPT_HEADER         => false,    // don't return headers
 //            CURLOPT_FOLLOWLOCATION => true,     // follow redirects
 //            CURLOPT_ENCODING       => "",       // handle all encodings
 //            CURLOPT_AUTOREFERER    => true,     // set referer on redirect
 //            CURLOPT_CONNECTTIMEOUT => 120,      // timeout on connect
 //            CURLOPT_TIMEOUT        => 120,      // timeout on response
 //            CURLOPT_MAXREDIRS      => 10,       // stop after 10 redirects
 //        );

 //        $ch      = curl_init( $url );
 //        curl_setopt_array( $ch, $options );
 //        $content = curl_exec( $ch );
 //        $err     = curl_errno( $ch );
 //        $errmsg  = curl_error( $ch );
 //        $header  = curl_getinfo( $ch );
 //        curl_close( $ch );
 //            preg_match_all('/\b[^\s]+@[^\s]+/', $content, $matches);
             
 //            foreach($matches[0] as $url) 
 //          {
 //            if ( strpos($url, 'href="mailto') !== false && strpos($url, '.com') !== false )
 //         { 
 //            $x = explode('href="', $url);
 //            $e =  explode("mailto:", $x[1]);
 //           }  
 //          }
         
 //    }
 //     return $e[1]; 
 // }else{
 // 	return "";
 // }
 //   //return $e[0];
 //    }

    public function get_contact_email($links)
{
    header("Access-Control-Allow-Origin: *");
    $client = new \GuzzleHttp\Client();
    $response = $client->get($links, ['verify' => false]);
    $data = (string) $response->getBody();
    preg_match_all('#<a\s.*?(?:href=[\'"](.*?)[\'"]).*?>#is' , $data, $matches);
    // dd($links);
    $results = array();
    if($matches[0]){
    foreach($matches[0] as $link) 
    {
        if ( strpos($link, 'href="mailto:') !== false ){
            $x = explode('href="mailto:', $link);
            $a = explode('"', $x[1]);
            // dd($a);
            $results[] = $a[0];   
        }
    }
}
    if( empty($results) ) 
    { 
        $t = explode('https://', $links);
        $s = explode('www.', $t[1]);        
        $keys=  array('info@','support@','host@','contact@', 'office@');
                
        shuffle($keys);
                   foreach($keys as $key) {
                       $new = $key;
                   }
                   if(count($s)>1){
                    $email[] = $new.$s[1];
                    return $email; 
                   }
                   else{
                    $email[] = $new.$s[0];
                    return $email; 
                   }

    }
    else{
 return $results;
    }

}	


    public function extract_email_lead($links)
{
    
    header("Access-Control-Allow-Origin: *");
    $proxySetting=[
        'headers' => [
              'User-Agent' => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)
               AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36',
          ]
      ];

    $client = new \GuzzleHttp\Client();
    $response = $client->get($links, ['verify' => false, $proxySetting]);
    $data = (string) $response->getBody();
    preg_match_all('#<a\s.*?(?:href=[\'"](.*?)[\'"]).*?>#is', $data, $matches);
    //   dd($links);
  
    $results = array();
    foreach ($matches[0] as $value) {
    
      if (strpos($value, 'href="mailto:') !== false)
       { 
           $x = explode('href="mailto:',$value);
            $a = explode('"', $x[1]);
               $results[] = $a[0];   
        }

        elseif (strpos($value, '_contact.html') !== false) {
                    $x = explode("_contact.html", $value);
                    $a = explode('href="', $x[0]);
                    // dd($a[1]);
                    $contact = $links.$a[1].'_contact.html';
                    $results = $this->get_contact_email($contact);
                }
        
        elseif (strpos($value, '-contact.html') !== false) {
            $x = explode("-contact.html", $value);
            $a = explode('href="', $x[0]);
            // dd($a[1]);
            $contact = $links.$a[1].'-contact.html';
            $results = $this->get_contact_email($contact);
        }

        elseif (strpos($value, 'contact_us.html') !== false) {
                    $x = explode("contact_us.html'", $value);
                    $a = explode('href="', $x[0]);
                    // dd($a[1]);
                    $contact = $links.$a[1].'contact_us.html';
                    $results = $this->get_contact_email($contact);
                }

        elseif (strpos($value, 'contact-us.html') !== false) {
                            $x = explode("contact-us.html'", $value);
                            $a = explode('href="', $x[0]);
                            // dd($a[1]);
                            $contact = $links.$a[1].'contact-us.html';
                            $results = $this->get_contact_email($contact);
                        }

        elseif (strpos($value, 'contact.html') !== false) {
                                    $x = explode("contact.html'",$value);
                                    $a = explode('href="', $x[0]);
                                    // dd($a[1]);
                                    $contact = $links.$a[1].'contact.html';
                                    $results = $this->get_contact_email($contact);
             }


        elseif (strpos($value, '_contact.php') !== false) {
                        $x = explode("_contact.php", $value);
                        $a = explode('href="', $x[0]);
                        // dd($a[1]);
                        $contact = $links.$a[1].'_contact.php';
                        $results = $this->get_contact_email($contact);
                    }
            
        elseif (strpos($value, '-contact.php') !== false) {
                        $x = explode("-contact.php", $value);
                        $a = explode('href="', $x[0]);
                        $contact = $links.$a[1].'-contact.php';
                        $results = $this->get_contact_email($contact);
                    }

     elseif (strpos($value, 'contact_us.php') !== false) {
                        $x = explode("_contact_us.php", $value);
                        $a = explode('href="', $x[0]);
                        // dd($a[1]);
                        $contact = $links.$a[1].'contact_us.php';
                        $results = $this->get_contact_email($contact);
                    }
            
    elseif (strpos($value, 'contact-us.php') !== false) {
                        $x = explode("contact-us.php", $value);
                        $a = explode('href="', $x[0]);
                        // dd($a[1]);
                        $contact = $links.$a[1].'contact-us.php';
                        $results = $this->get_contact_email($contact);
                    }
            
    elseif (strpos($value, 'contact.php') !== false) {
                        $x = explode("contact.php", $value);
                        $a = explode('href="', $x[0]);
                        // dd($a[1]);
                        $contact = $links.$a[1].'contact.php';
                        $results = $this->get_contact_email($contact);
                    }
    
    
    elseif(strpos($value, '_contact') !== false){
            $x = explode("_contact", $value);
            $a = explode('href="', $x[0]);
            $contact = $links.$a[1].'_contact';
            $results = $this->get_contact_email($contact);
           }

    elseif( strpos($value, '-contact') !== false )
           { 
           $x = explode("-contact", $value);
           $a = explode('href="', $x[0]);
           $contact = $links.$a[1].'-contact';
        $results = $this->get_contact_email($contact);
           }

    elseif(strpos($value, 'contact-us') !== false){
                $x = explode("contact-us",$value);
                $a = explode('href="', $x[0]);
                $contact = $links.$a[1].'contact-us';
                $results = $this->get_contact_email($contact);
                }


    elseif(strpos($value, 'contact_us') !== false){
                    $x = explode("contact_us", $value);
                    $a = explode('href="', $x[0]);
                    $contact = $links.$a[1].'contact_us';
            $results = $this->get_contact_email($contact);
            }



        elseif(strpos($value, 'contact') !== false){
    
           $x = explode("contact", $value);
                       
            $a = explode('href="', $x[0]);
            // dd($a);
            $tr = explode('https://', $a[1]);
            if(count($tr)==2){
                $t = explode('/', $tr[1]);
                $s = 'https://'.$t[0];
                if($links == $s){
                // dd($a[1]);
                 $contact =$links .'contact';
        
                 $results = $this->get_contact_email($contact); 
                        }
            }
                        
            else {
                            // dd($a[1]);
                        $contact = $links.$a[1].'contact';
        
                        $results = $this->get_contact_email($contact); 
                        }
                      
                       
    }
    
    }
    
    if( empty($results) ) 
    { 
        $t = explode('https://', $links);
        $s = explode('www.', $t[1]);        
      $keys=  array('info@','support@','host@','contact@','office@');
                
        shuffle($keys);
                   foreach($keys as $key) {
                       $new = $key;
                   }
                   if(count($s)>1){
                    $email[] = $new.$s[1];
                    return $email; 
                   }
                   else{
                       
                    $email[] = $new.$s[0];
                    return $email; 
                   }

    }
    else { 
        return $results[0];
        // dd($results);
       
     }


}
	/*
	* END TOPBAR
	*/
}
